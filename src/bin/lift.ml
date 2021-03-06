(*
 * file: Lift.sml
 * author: Bob Muller
 * date: 1-1-2009.
 *
 * The Lift module implements a source-to-source transformation on
 * the nested let-expressions that may (or may not) have been introduced
 * in the naming phase. The transformation rule lifts inner let
 * expressions out. The transformation rule is:
 *
 * let x1 = (let x2 = e2 in e3) in e4
 *
 * is replaced by:
 *
 * let x2 = e2 in (let x1 = e3 in e4).
 *
 * Note that e2 may be a let-expression so the process iterates until
 * all let-expressions are lifted to top-level.
 *)
open Ast (*just in case *)

let rec translate (Ast.Program p) =
  Ast.Program (List.map translateProcedure p)

and translateProcedure (Ast.Procedure {id; formals; typ; body}) =
  Ast.Procedure { id; formals; typ ; body = translateStatement body }


(*I think list.map is needed for block, and call Maybe while?*)
and translateStatement statement =
  match statement with
  | Ast.Block {decls; statements} ->
    let statements = List.map translateStatement statements
    in Ast.Block {decls; statements}

  | Ast.Assign {id; expr} ->
    let expr = translateTerm expr
    in Ast.Assign {id; expr}

  | Ast.While {expr; statement} ->
    let expr = translateTerm expr in
    let statement = translateStatement statement
    in Ast.While {expr; statement}

  | Ast.IfS {expr; thn; els} ->
    let expr = translateTerm expr in
    let thn = translateStatement thn in
    let els = translateStatement els
    in Ast.IfS {expr; thn; els}

  | Call {rator; rands} ->
    let rands = List.map translateTerm rands
    in Call {rator; rands}

  | Print expr ->
    let expr = translateTerm expr
    in Print expr

  | Return expr ->
    let expr = translateTerm expr
    in Return expr

and translateTerm term =
  match term with
  | Ast.Id _ -> term
  | Ast.Literal _ -> term
  | Ast.App _ -> term
  (*Call translateTerm on each thing*)
  | Ast.If {expr; thn; els} ->
    Ast.If { expr = translateTerm expr
           ; thn = translateTerm thn
           ; els = translateTerm els
           }

  | Ast.Let {decl; body} ->
    (match decl with
     | Ast.ValBind { bv; defn = Let { decl; body = inBody}} ->
       translateTerm (Ast.Let { decl ; body = Ast.Let { decl = Ast.ValBind
                                                            { bv; defn = inBody}
                                                      ; body}})
     (*style Q, whats the best way to write it ?*)

     | Ast.ValBind _ -> Ast.Let { decl; body = translateTerm body })

  | Ast.And _ -> failwith "Nope, bad no and "

  | Ast.Or  _ -> failwith "Nope, No or "
