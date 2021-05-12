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
  translateStatement statement = (* THIS IS A STUB, YOUR CODE HERE *)
  let _ = translateTerm (Ast.Literal {bits = 0; typ = Typ.Int})
  in
  statement

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

  | _ -> term    (* YOUR CODE HERE *)
