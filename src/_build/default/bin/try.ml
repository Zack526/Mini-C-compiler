(* file: try.ml
   author: Bob Muller --- Feb 22, 2019

   This is a simple system for trying out various compiler phases
   when the earlier phases aren't finished.

   Some symbols.
*)

let codegen_test name quads =
  let fullname = "test/" ^ name in
  let objfname = Util.makeFileName(fullname, "asm") in
  let _ = Printf.printf "\nEmitting MIPS assembly code for %s to %s\n\n" fullname objfname in
  let codestream = Codegen.translate quads in
  let _ = Mips.Codestream.emit(fullname, codestream) in
  ()

let codegen () =
  let rec loop tests =
    (match tests with
    | (name, quads) :: tests ->
      codegen_test name quads;
      loop tests
    | [] -> ())
  in loop Cases.tests

