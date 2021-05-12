module Q = Quads
module A = Ast
(* name: operation and function calls only on variables *)
(* lift: no nested lets *)

(*let getLabel maybeLabel =
  match maybeLabel with
  | None -> Label.fresh()
  | Some label -> label *)

type transExprOut = { instructions : Q.instruction list
                    ; result : Q.rhs
                    }

let mark label = [Q.Instruction {label = Some label; op = Q.Noop}]
let jump label = [Q.Instruction {label = None; op = Q.Jmp label}]

let terms2opnds terms =
  List.map
    (fun term ->
       match term with
       | A.Id sym -> Q.Id sym
       | _ -> failwith "Control.terms2opnds: Should not happen"
    )
    terms

(* use for function calls*)
let invoke rator terms =
  let name = Label.fromString (Symbol.format rator)
  in
  { instructions = []
  ; result = Q.FunCall { label = name
                       ; opnds = terms2opnds terms
                       }
  }

let initialize decls =
  List.map
    (fun A.{id; typ} ->
       match typ with
       | Typ.Int ->
         [ Q.Instruction { label = None
                         ; op = Q.Gets { dst = Q.Id id
                                       ; src = Q.Operand (Q.Word { typ
                                                                 ; bits = 0
                                                                 })
                                       }
                         }
         ]
       | Typ.Bool ->
         [ Q.Instruction { label = None
                         ; op = Q.Gets { dst = Q.Id id
                                       ; src = Q.Operand (Q.Word { typ
                                                                 ; bits = 0
                                                                 })
                                       }
                         }
         ]
       | _ -> [])
    decls

(*\
  Need
    translate
      Procedure
      statement
      term
      for AST
*)
let rec translate (A.Program procedures) = Q.Program (List.map translateProcedure procedures)

and translateProcedure (Procedure {id ; typ = _ ; formals; body}) =
  let entry = Label.fromString (Symbol.format id) in
  let formals = A.(List.map (fun bv -> bv.id) formals) in
  let code = translateStatement body
  in
  Q.Procedure {entry; formals; code}

and translateStatement ast =
  match ast with

  | A.Block {decls; statements} ->
    List.concat (List.concat (initialize decls :: [List.map translateStatement statements]))
  (*maybe change List.contat to @ *)

  | A.Assign {id; expr} ->
    let ({instructions; result}) = translateTerm expr
    in
    List.append instructions [ Q.Instruction { label = None;
                                               op = Q.Gets { dst = Q.Id id ; src = result} }]

  | A.While {expr; statement} ->
    let ({instructions; result}) = translateTerm expr in
    let startW = Label.fresh() in
    let endW = Label.fresh() in
    let switch = [ Q.Instruction { label = None
                                 ; op = Q.JmpZero { cond = result
                                                  ; dest = endW
                                                  }
                                 }
                 ]
    in
    List.concat ( mark startW :: instructions :: switch
                  :: translateStatement statement :: jump startW :: [mark endW])

  | A.IfS {expr; thn; els} ->
    let ({ instructions; result }) = translateTerm expr in
    let switchL = Label.fresh() in
    let endL = Label.fresh() in
    let switch = [ Q.Instruction { label = None ; op = Q.JmpZero { cond = result
                                                                 ; dest = switchL
                                                                 }
                                 }
                 ]
    in
    List.concat ( instructions :: switch :: translateStatement thn :: jump endL
                  :: mark switchL :: translateStatement els :: [mark endL])

  | A.Call {rator; rands} ->
    let rands = List.map translateTerm rands in
    let instructions =
      List.concat (List.map (fun x -> x.instructions) rands) in
    let oList = List.map (fun _ -> Q.Id (Symbol.fresh())) rands in
    let passId =
      List.map2 (fun x y -> Q.Instruction { label = None
                                          ; op = Q.Gets { dst = x; src = y.result}
                                          }) oList rands in

    let name = Label.fromString (Symbol.format rator) in
    List.concat ( instructions :: passId  ::
                  [[Q.Instruction { label = None
                                  ; op = Call { label = name; opnds = oList }}]])

  | A.Print expr ->
    let expr = translateTerm expr in
    let newID = Q.Id (Symbol.fresh()) in
    let passId = [ Q.Instruction { label = None
                                 ; op = Q.Gets { dst = newID
                                               ; src = expr.result
                                               }
                                 }
                 ] in
    let print = [ Q.Instruction { label = None ; op = Q.Print (Q.Operand newID)}]
    in
    List.concat ( expr.instructions :: passId :: [print])

  | A.Return expr ->
    let expr = translateTerm expr
    in
    let newID = Q.Id (Symbol.fresh())
    in
    let passId = [ Q.Instruction { label = None ; op = Q.Gets { dst = newID
                                                              ; src = expr.result
                                                              }
                                 }
                 ] in
    let return = [Q.Instruction {label = None; op = Q.Ret newID}]
    in
    List.concat (expr.instructions :: passId :: [return])

and translateTerm expr =
  match expr with
  | (And _|Or _) ->
    failwith " NO And or OR -___-"

  | A.Id sym -> { instructions = []
                ; result = Q.Operand (Q.Id sym)
                }

  | A.Literal {typ; bits} ->
    { instructions = []
    ; result = Q.Operand (Word {typ; bits})
    }

  | A.App {rator; rands = A.((Id sym1) :: [Id sym2] as terms)} ->
    (match Basis.isPrim rator with
     | true -> { instructions = []
               ; result = Q.BinPrimOp { op = rator
                                      ; opnds = { src1 = Q.Id sym1
                                                ; src2 = Q.Id sym2
                                                }
                                      }
               }
     | false -> invoke rator terms)

  (*If i were to drop A. and Q. it still runs but but to keep safe staying in *)
  | A.App {rator; rands = [A.Id sym] as terms} ->
    (match Basis.isPrim rator with
     | true -> { instructions = []
               ; result = Q.UnPrimOp { op = rator
                                     ; opnd = Q.Id sym
                                     }
               }
     | false -> invoke rator terms)

  | A.App {rator; rands} -> invoke rator rands

  | A.If {expr; thn; els} ->
    let expr = translateTerm expr in
    let thn  = translateTerm thn in
    let els  = translateTerm els in
    let newID = Q.Id (Symbol.fresh()) in
    let switchL = Label.fresh() in
    let endL = Label.fresh() in
    let switch = [ Q.Instruction { label = None
                                 ; op = JmpZero { cond = expr.result
                                                ; dest = switchL
                                                }
                                 }
                 ] in
    let oldID texpr = [ Q.Instruction { label = None
                                      ; op = Gets { dst = newID; src = texpr.result}
                                      }
                      ] in
    { instructions = List.concat ( expr.instructions :: switch :: thn.instructions
                                   :: oldID thn :: jump endL :: mark switchL
                                   :: els.instructions :: oldID els :: [mark endL])
    ; result = Operand newID}



  | A.Let {decl = ValBind {bv; defn}; body} ->
    let defn = translateTerm defn
    in
    let body = translateTerm body
    in
    let oldID = [ Q.Instruction { label = None
                                ; op = Gets { dst = Id bv.id
                                            ; src = defn.result
                                            }
                                }
                ]
    in
    { instructions = List.concat ( defn.instructions :: oldID :: [body.instructions])
    ; result = body.result
    }
