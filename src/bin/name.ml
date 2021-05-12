(* file: name.ml
 * author: Bob Muller
 * date: January 5, 2009
 * revised: March, 2017
 *
 * The Name module implements a source-to-source transformation for
 * naming the values of subterms in miniC. In addition to naming values,
 * the Name module translates "or" and "and" forms into special-cases
 * of the conditional form nested within a let-form.
*)
let rec zip = function
    ([],[]) -> []
  | (x::xs, y::ys) -> (x,y)::zip(xs,ys)
  | _ -> raise(Failure "zip: attempting to zip lists of unequal length.");;

let makeValBindL bvs defns =
  let bvsDefns = zip (bvs, defns)
  in
  List.map (fun (bv, defn) -> Ast.ValBind {bv; defn}) bvsDefns

let makeLetL valbinds fLet =
  let rec l decls =
    match decls with
    | [] -> fLet
    | decl :: decls -> Ast.Let {decl; body = l decls}
  in
  l valbinds

(* Thanks for the idea I found it easier to write it each time, but also
   i should thank u for making me go throw each file v helpful ft zip
let makeLet id defn body =
  Ast.Let { decl = ValBind { bv = {id; typ = Typ.Int}
                         ; defn
                         }
        ; body
        }
    *)
let rec translate (Ast.Program procedures) =
  Ast.Program (List.map translateProcedure procedures)

and

  translateProcedure (Ast.Procedure {id; formals; typ; body}) =
  Ast.Procedure { id
                ; formals
                ; typ
                ; body = translateStatement body
                }
and
  translateStatement statement =
  match statement with
  | Ast.Block {decls; statements} -> let statements = List.map translateStatement statements in
    Ast.Block {decls; statements}
      (*Side note for future ref, not bad logicly to thin about but time*)
  | Ast.Assign {id; expr} -> let expr = translateTerm expr in
    Ast.Assign {id; expr}

  | Ast.While {expr;statement} -> let expr = translateTerm expr in
    let statement = translateStatement statement in
    Ast.While {expr; statement}

  | Ast.IfS {expr; thn; els} ->  let expr = translateTerm expr in
    let thn = translateStatement thn in
    let els = translateStatement els
    in
    Ast.IfS {expr; thn; els}

  | Ast.Call{rator; rands} ->
    let rands = List.map translateTerm rands
    in
    Ast.Call {rator; rands}

  | Ast.Print p ->  let p = translateTerm p
    in
    Ast.Print p

  | Ast.Return r ->  let r = translateTerm r
    in
    Ast.Return r

  (*   let _ = translateTerm (Ast.Literal {bits = 0; typ = Typ.Int})
  in
       statement *)
(* recrcisvlally call on the staments, call translate exp on it
call itslef or call translate exp
*)
and
  translateTerm term =
  match term with
  | Ast.Or {left; right} ->         (* FREE CODE Removes OR *)
    let x = Symbol.fresh() in
    let expr = Ast.Id x in
    let bv = {Ast.id = x; typ = Typ.Bool}
    in
    Ast.Let { decl = Ast.ValBind { bv
                                 ; defn = translateTerm left
                                 }
            ; body = Ast.If { expr
                            ; thn = expr
                            ; els = translateTerm right
                            }
            }
  | Ast.And {left; right} ->      (* FREE CODE Removes AND *)
    let x = Symbol.fresh() in
    let expr = Ast.Id x in
    let bv = {Ast.id = x; typ = Typ.Bool}
    in
    Ast.Let { decl = Ast.ValBind { bv
                                 ; defn = translateTerm left
                                 }
            ; body = Ast.If { expr
                            ; thn = translateTerm right
                            ; els = expr
                            }
            }

  | Ast.Id i -> Id i

  | Ast.Literal literal -> Literal literal

  (* Ask best pratcie, side note rands is the term*)
  | Ast.App {rator ;rands} ->
    let ids = List.map (fun _ -> Symbol.fresh ()) rands in
    let bvs = List.map (fun id -> {Ast.id; typ = Typ.Int}) ids in
    let rands = List.map translateTerm rands in
    let valbinds = makeValBindL bvs rands in
    let id = Symbol.fresh () in
    let bv = {Ast.id; typ = Typ.Int} in
    let ids = List.map (fun id -> Ast.Id id) ids in
    let finalLet =
      Ast.Let { decl = Ast.ValBind { bv
                                   ; defn = Ast.App { rator
                                                    ; rands = ids}
                                   }
              ; body = Ast.Id id
              }
    in
    makeLetL valbinds finalLet
(*list.map to apply transleation on each list

  | App of { rator : Symbol.t
         ; rands : term list
         }    (* term is an identifier *)

  MakeletSe is NOT the same as the idea gotten from brain to use makelet (double check u dont put it anywehre)
*)
  | Ast.If {expr; thn; els}-> let defn = translateTerm expr in
    let thn = translateTerm thn in
    let els = translateTerm els in
    let id = Symbol.fresh() in
    let bv = {Ast.id; typ = Typ.Bool} in
    let expr = Ast.Id id
    in
    Ast.Let { decl = Ast.ValBind { bv
                                 ; defn
                                 }
            ; body = Ast.If { expr
                            ; thn
                            ; els
                            }
            }

  | Ast.Let _ ->
    failwith "lol no let for you"
