let tests = 
[("g.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "x")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x2");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x3");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x"); src2 = Quads.Id (Symbol.fromString "x2")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x18"); src = Quads.Operand (Quads.Id (Symbol.fromString "x3"))}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x18"))}]};
    Quads.Procedure
     {entry = (Label.fromString "g"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x6");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x7");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x6")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x8");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x7")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x8"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x19"); src = Quads.Operand (Quads.Id (Symbol.fromString "b"))}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x19"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x9");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x10");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x11");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x9"); Quads.Id (Symbol.fromString "x10")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x20"); src = Quads.Operand (Quads.Id (Symbol.fromString "x11"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x20")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x12");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x13");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x14");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x12"); Quads.Id (Symbol.fromString "x13")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x21"); src = Quads.Operand (Quads.Id (Symbol.fromString "x14"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x21")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x15");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 100})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x16");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 101})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x17");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x15"); Quads.Id (Symbol.fromString "x16")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x22"); src = Quads.Operand (Quads.Id (Symbol.fromString "x17"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x22")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x23");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x23"))}]}]);
 ("d.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "x")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x51"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x51"))}]};
    Quads.Procedure
     {entry = (Label.fromString "g"); formals = [(Symbol.fromString "x"); (Symbol.fromString "y")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x40");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x41");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "y"); src2 = Quads.Id (Symbol.fromString "x40")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x41")); dest = (Label.fromString "l52")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x64");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x64"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l53")};
        Quads.Instruction {label = Some (Label.fromString "l52"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Bool; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Bool; bits = 1})}};
        Quads.Instruction {label = Some (Label.fromString "l57"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "b")); dest = (Label.fromString "l55")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x54");
             src = Quads.Operand (Quads.Word {typ = Typ.Bool; bits = 1})}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l56")};
        Quads.Instruction {label = Some (Label.fromString "l55"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x54"); src = Quads.Operand (Quads.Id (Symbol.fromString "b"))}};
        Quads.Instruction {label = Some (Label.fromString "l56"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x54")); dest = (Label.fromString "l58")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "c");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x25");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x26");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x25")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "c"); src = Quads.Operand (Quads.Id (Symbol.fromString "x26"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x59"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x59")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Bool; bits = 0})}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l57")};
        Quads.Instruction {label = Some (Label.fromString "l58"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond =
              Quads.Operand (Quads.Word {typ = Typ.Bool; bits = 1});
             dest = (Label.fromString "l60")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x36");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x37");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 12})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x38");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x36"); src2 = Quads.Id (Symbol.fromString "x37")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x63"); src = Quads.Operand (Quads.Id (Symbol.fromString "x38"))}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x63"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l61")};
        Quads.Instruction {label = Some (Label.fromString "l60"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x30");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x31");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x30")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x32");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x33");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x34");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x32"); Quads.Id (Symbol.fromString "x33")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x35");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x31"); src2 = Quads.Id (Symbol.fromString "x34")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x62"); src = Quads.Operand (Quads.Id (Symbol.fromString "x35"))}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x62"))};
        Quads.Instruction {label = Some (Label.fromString "l61"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l53"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x44");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x45");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x46");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x44"); Quads.Id (Symbol.fromString "x45")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x47");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x48");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x49");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x47"); Quads.Id (Symbol.fromString "x48")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x50");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x46"); src2 = Quads.Id (Symbol.fromString "x49")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x65"); src = Quads.Operand (Quads.Id (Symbol.fromString "x50"))}};
        Quads.Instruction {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x65"))}]}]);
 ("cond2.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x66");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x67");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x68");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x66"); src2 = Quads.Id (Symbol.fromString "x67")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x68")); dest = (Label.fromString "l102")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x105");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x105")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l103")};
        Quads.Instruction {label = Some (Label.fromString "l102"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x104");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x104")))};
        Quads.Instruction {label = Some (Label.fromString "l103"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x69");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x70");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x71");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x69"); src2 = Quads.Id (Symbol.fromString "x70")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x71")); dest = (Label.fromString "l106")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x109");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x109")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l107")};
        Quads.Instruction {label = Some (Label.fromString "l106"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x108");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x108")))};
        Quads.Instruction {label = Some (Label.fromString "l107"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x72");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x73");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x74");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x72"); src2 = Quads.Id (Symbol.fromString "x73")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x74")); dest = (Label.fromString "l110")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x113");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x113")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l111")};
        Quads.Instruction {label = Some (Label.fromString "l110"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x112");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x112")))};
        Quads.Instruction {label = Some (Label.fromString "l111"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x75");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x76");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x77");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x75"); src2 = Quads.Id (Symbol.fromString "x76")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x77")); dest = (Label.fromString "l114")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x117");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x117")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l115")};
        Quads.Instruction {label = Some (Label.fromString "l114"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x116");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x116")))};
        Quads.Instruction {label = Some (Label.fromString "l115"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x78");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x79");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x80");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x78"); src2 = Quads.Id (Symbol.fromString "x79")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x80")); dest = (Label.fromString "l118")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x121");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x121")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l119")};
        Quads.Instruction {label = Some (Label.fromString "l118"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x120");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x120")))};
        Quads.Instruction {label = Some (Label.fromString "l119"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x81");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x82");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x83");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x81"); src2 = Quads.Id (Symbol.fromString "x82")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x83")); dest = (Label.fromString "l122")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x125");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x125")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l123")};
        Quads.Instruction {label = Some (Label.fromString "l122"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x124");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x124")))};
        Quads.Instruction {label = Some (Label.fromString "l123"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x84");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x85");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x86");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x84"); src2 = Quads.Id (Symbol.fromString "x85")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x86")); dest = (Label.fromString "l126")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x129");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x129")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l127")};
        Quads.Instruction {label = Some (Label.fromString "l126"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x128");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x128")))};
        Quads.Instruction {label = Some (Label.fromString "l127"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x87");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x88");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x89");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x87"); src2 = Quads.Id (Symbol.fromString "x88")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x89")); dest = (Label.fromString "l130")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x133");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x133")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l131")};
        Quads.Instruction {label = Some (Label.fromString "l130"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x132");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x132")))};
        Quads.Instruction {label = Some (Label.fromString "l131"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x90");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x91");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x92");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x90"); src2 = Quads.Id (Symbol.fromString "x91")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x92")); dest = (Label.fromString "l134")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x137");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x137")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l135")};
        Quads.Instruction {label = Some (Label.fromString "l134"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x136");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x136")))};
        Quads.Instruction {label = Some (Label.fromString "l135"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x93");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x94");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x95");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x93"); src2 = Quads.Id (Symbol.fromString "x94")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x95")); dest = (Label.fromString "l138")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x141");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x141")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l139")};
        Quads.Instruction {label = Some (Label.fromString "l138"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x140");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x140")))};
        Quads.Instruction {label = Some (Label.fromString "l139"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x96");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x97");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x98");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x96"); src2 = Quads.Id (Symbol.fromString "x97")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x98")); dest = (Label.fromString "l142")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x145");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x145")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l143")};
        Quads.Instruction {label = Some (Label.fromString "l142"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x144");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x144")))};
        Quads.Instruction {label = Some (Label.fromString "l143"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x99");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x100");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x101");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x99"); src2 = Quads.Id (Symbol.fromString "x100")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x101")); dest = (Label.fromString "l146")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x149");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x149")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l147")};
        Quads.Instruction {label = Some (Label.fromString "l146"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x148");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x148")))};
        Quads.Instruction {label = Some (Label.fromString "l147"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x150");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x150"))}]}]);
 ("cond1.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "gt"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x153");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x175");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x153"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x175"))}]};
    Quads.Procedure
     {entry = (Label.fromString "geq"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x156");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x176");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x156"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x176"))}]};
    Quads.Procedure
     {entry = (Label.fromString "lt"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x159");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x177");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x159"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x177"))}]};
    Quads.Procedure
     {entry = (Label.fromString "leq"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x162");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x178");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x162"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x178"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x172");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x173");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x174");
             src =
              Quads.FunCall
               {label = (Label.fromString "gt"); opnds = [Quads.Id (Symbol.fromString "x172"); Quads.Id (Symbol.fromString "x173")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x174")); dest = (Label.fromString "l179")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x191");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x191")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l180")};
        Quads.Instruction {label = Some (Label.fromString "l179"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x169");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x170");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x171");
             src =
              Quads.FunCall
               {label = (Label.fromString "geq");
                opnds = [Quads.Id (Symbol.fromString "x169"); Quads.Id (Symbol.fromString "x170")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x171")); dest = (Label.fromString "l181")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x190");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x190")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l182")};
        Quads.Instruction {label = Some (Label.fromString "l181"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x166");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x167");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x168");
             src =
              Quads.FunCall
               {label = (Label.fromString "lt"); opnds = [Quads.Id (Symbol.fromString "x166"); Quads.Id (Symbol.fromString "x167")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x168")); dest = (Label.fromString "l183")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x189");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x189")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l184")};
        Quads.Instruction {label = Some (Label.fromString "l183"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x163");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x164");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x165");
             src =
              Quads.FunCall
               {label = (Label.fromString "leq");
                opnds = [Quads.Id (Symbol.fromString "x163"); Quads.Id (Symbol.fromString "x164")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x165")); dest = (Label.fromString "l185")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x188");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x188")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l186")};
        Quads.Instruction {label = Some (Label.fromString "l185"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x187");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x187")))};
        Quads.Instruction {label = Some (Label.fromString "l186"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l184"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l182"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l180"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x192");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x192"))}]}]);
 ("b.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "a")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x200");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x201");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x200")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x201")); dest = (Label.fromString "l210")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x193");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x196");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x197");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x196")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x198");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x193"); src2 = Quads.Id (Symbol.fromString "x197")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x198"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l211")};
        Quads.Instruction {label = Some (Label.fromString "l210"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 343})}};
        Quads.Instruction {label = Some (Label.fromString "l211"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x212"); src = Quads.Operand (Quads.Id (Symbol.fromString "b"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x212"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x202");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x203");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x202")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x213");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x203"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x213")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x204");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x205");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x204")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x214");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x205"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x214")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x206");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x207");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x206")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x215");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x207"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x215")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x208");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x209");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x208")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x216");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x209"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x216")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x217");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x217"))}]}]);
 ("multiarg.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "add3"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b"); (Symbol.fromString "c")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x222");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x223");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x222"); src2 = Quads.Id (Symbol.fromString "c")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x246");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x223"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x246"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x229");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x230");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x231");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x229"); src2 = Quads.Id (Symbol.fromString "x230")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x228");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x232");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x231"); src2 = Quads.Id (Symbol.fromString "x228")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x235");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x236");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x237");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x235"); src2 = Quads.Id (Symbol.fromString "x236")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x234");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x238");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x237"); src2 = Quads.Id (Symbol.fromString "x234")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x241");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x242");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x243");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x241"); src2 = Quads.Id (Symbol.fromString "x242")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x240");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 9})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x244");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x243"); src2 = Quads.Id (Symbol.fromString "x240")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x245");
             src =
              Quads.FunCall
               {label = (Label.fromString "add3");
                opnds = [Quads.Id (Symbol.fromString "x232"); Quads.Id (Symbol.fromString "x238"); Quads.Id (Symbol.fromString "x244")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x245"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x247"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x247"))}]}]);
 ("a3.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "c")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "d");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x248");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x251");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x252");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "c"); src2 = Quads.Id (Symbol.fromString "x251")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x253");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x248"); src2 = Quads.Id (Symbol.fromString "x252")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "c"); src = Quads.Operand (Quads.Id (Symbol.fromString "x253"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x262"); src = Quads.Operand (Quads.Id (Symbol.fromString "d"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x262"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x254");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x255");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x254")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x263");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x255"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x263")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x256");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x257");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x256")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x264");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x257"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x264")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x258");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x259");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x258")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x265");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x259"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x265")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x260");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x261");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x260")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x266");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x261"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x266")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x267");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x267"))}]}]);
 ("c.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "a")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "c");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x268");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x270");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x271");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x272");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x270"); src2 = Quads.Id (Symbol.fromString "x271")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x273");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x268"); src2 = Quads.Id (Symbol.fromString "x272")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x273"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x275");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x276");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x275")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "c"); src = Quads.Operand (Quads.Id (Symbol.fromString "x276"))}};
        Quads.Instruction {label = Some (Label.fromString "l294"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x281");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x282");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x281")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x282")); dest = (Label.fromString "l295")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x278");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x279");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x278")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x279"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l294")};
        Quads.Instruction {label = Some (Label.fromString "l295"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x285");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "c")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x296");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x285"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x296"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x286");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x287");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x286")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x297");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x287"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x297")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x288");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 11})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x289");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x288")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x298");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x289"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x298")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x290");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 12})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x291");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x290")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x299");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x291"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x299")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x292");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 13})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x293");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x292")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x300");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x293"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x300")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x301");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x301"))}]}])
 ;
 ("f.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x335");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x338");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x339");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x338")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x340");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x335"); src2 = Quads.Id (Symbol.fromString "x339")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x340"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x341"); src = Quads.Operand (Quads.Id (Symbol.fromString "b"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x341"))}]}]);
 ("gcd.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "mod"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x349");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x350");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x349")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x350")); dest = (Label.fromString "l389")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x393");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x393"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l390")};
        Quads.Instruction {label = Some (Label.fromString "l389"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l391"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x347");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x347")); dest = (Label.fromString "l392")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x344");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a"); src = Quads.Operand (Quads.Id (Symbol.fromString "x344"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l391")};
        Quads.Instruction {label = Some (Label.fromString "l392"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l390"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x394"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x394"))}]};
    Quads.Procedure
     {entry = (Label.fromString "abs"); formals = [(Symbol.fromString "a")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x355");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x356");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x355")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x356")); dest = (Label.fromString "l395")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x351");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x353");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x351"); src2 = Quads.Id (Symbol.fromString "a")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x398");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x353"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x398"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l396")};
        Quads.Instruction {label = Some (Label.fromString "l395"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x397"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x397"))};
        Quads.Instruction {label = Some (Label.fromString "l396"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "gcd"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x358");
             src = Quads.FunCall {label = (Label.fromString "abs"); opnds = [Quads.Id (Symbol.fromString "a")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a"); src = Quads.Operand (Quads.Id (Symbol.fromString "x358"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x360");
             src = Quads.FunCall {label = (Label.fromString "abs"); opnds = [Quads.Id (Symbol.fromString "b")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x360"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x384");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x385");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x384")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x385")); dest = (Label.fromString "l400")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x399");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x385"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l401")};
        Quads.Instruction {label = Some (Label.fromString "l400"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x381");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x382");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x381")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x399");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x382"))}};
        Quads.Instruction {label = Some (Label.fromString "l401"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x399")); dest = (Label.fromString "l402")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x378");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x408");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x378"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x408"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l403")};
        Quads.Instruction {label = Some (Label.fromString "l402"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x375");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "a")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x375")); dest = (Label.fromString "l404")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x371");
             src =
              Quads.FunCall
               {label = (Label.fromString "mod"); opnds = [Quads.Id (Symbol.fromString "b"); Quads.Id (Symbol.fromString "a")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x372");
             src =
              Quads.FunCall
               {label = (Label.fromString "gcd"); opnds = [Quads.Id (Symbol.fromString "a"); Quads.Id (Symbol.fromString "x371")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x407");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x372"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x407"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l405")};
        Quads.Instruction {label = Some (Label.fromString "l404"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x365");
             src =
              Quads.FunCall
               {label = (Label.fromString "mod"); opnds = [Quads.Id (Symbol.fromString "a"); Quads.Id (Symbol.fromString "b")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x366");
             src =
              Quads.FunCall
               {label = (Label.fromString "gcd"); opnds = [Quads.Id (Symbol.fromString "x365"); Quads.Id (Symbol.fromString "b")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x406");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x366"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x406"))};
        Quads.Instruction {label = Some (Label.fromString "l405"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l403"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x386");
             src =
              Quads.Operand (Quads.Word {typ = Typ.Int; bits = 14039})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x387");
             src =
              Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1529})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x388");
             src =
              Quads.FunCall
               {label = (Label.fromString "gcd");
                opnds = [Quads.Id (Symbol.fromString "x386"); Quads.Id (Symbol.fromString "x387")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x388"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x409"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x409")))}]}]);
 ("threefacts_bad.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "ifact"); formals = [(Symbol.fromString "m")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "answer");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "answer");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction {label = Some (Label.fromString "l448"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x417");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x418");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "m"); src2 = Quads.Id (Symbol.fromString "x417")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x418")); dest = (Label.fromString "l449")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x412");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "answer"); src2 = Quads.Id (Symbol.fromString "m")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "answer");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x412"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x414");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x415");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "m"); src2 = Quads.Id (Symbol.fromString "x414")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "n"); src = Quads.Operand (Quads.Id (Symbol.fromString "x415"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l448")};
        Quads.Instruction {label = Some (Label.fromString "l449"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x450");
             src = Quads.Operand (Quads.Id (Symbol.fromString "answer"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x450"))}]};
    Quads.Procedure
     {entry = (Label.fromString "rfact"); formals = [(Symbol.fromString "n")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x428");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x429");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x428")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x429")); dest = (Label.fromString "l451")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x454");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x454"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l452")};
        Quads.Instruction {label = Some (Label.fromString "l451"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x423");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x424");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x423")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x425");
             src =
              Quads.FunCall {label = (Label.fromString "rfact"); opnds = [Quads.Id (Symbol.fromString "x424")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x426");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x425")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x453");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x426"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x453"))};
        Quads.Instruction {label = Some (Label.fromString "l452"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "condfact"); formals = [(Symbol.fromString "n")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x440");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x441");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x440")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x441")); dest = (Label.fromString "l456")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x455");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l457")};
        Quads.Instruction {label = Some (Label.fromString "l456"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x435");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x436");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x435")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x437");
             src =
              Quads.FunCall
               {label = (Label.fromString "condfact"); opnds = [Quads.Id (Symbol.fromString "x436")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x438");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x437")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x455");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x438"))}};
        Quads.Instruction {label = Some (Label.fromString "l457"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x458");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x455"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x458"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x442");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x443");
             src =
              Quads.FunCall {label = (Label.fromString "ifact"); opnds = [Quads.Id (Symbol.fromString "x442")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x459");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x443"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x459")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x444");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x445");
             src =
              Quads.FunCall {label = (Label.fromString "rfact"); opnds = [Quads.Id (Symbol.fromString "x444")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x460");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x445"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x460")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x446");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x447");
             src =
              Quads.FunCall
               {label = (Label.fromString "condfact"); opnds = [Quads.Id (Symbol.fromString "x446")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x461");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x447"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x461")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x462");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x462"))}]}]);
 ("fact.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "fact"); formals = [(Symbol.fromString "n")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x472");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x473");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x472")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x473")); dest = (Label.fromString "l486")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x489");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x489"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l487")};
        Quads.Instruction {label = Some (Label.fromString "l486"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x467");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x468");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x467")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x469");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x468")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x470");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x469")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x488");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x470"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x488"))};
        Quads.Instruction {label = Some (Label.fromString "l487"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x474");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x475");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x474")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x490");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x475"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x490")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x476");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x477");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x476")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x491");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x477"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x491")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x478");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 9})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x479");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x478")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x492");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x479"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x492")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x480");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x481");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x480")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x493");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x481"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x493")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x482");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 11})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x483");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x482")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x494");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x483"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x494")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x484");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x485");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x484")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x495");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x485"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x495"))}]}]);
 ("cond2_inv.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Bool; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x496");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x497");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x498");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x496"); src2 = Quads.Id (Symbol.fromString "x497")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a"); src = Quads.Operand (Quads.Id (Symbol.fromString "x498"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x501");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x503");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x501"); src2 = Quads.Id (Symbol.fromString "a")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x500");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x504");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x503"); src2 = Quads.Id (Symbol.fromString "x500")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x504"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x506");
             src = Quads.UnPrimOp {op = (Symbol.fromString "not"); opnd = Quads.Id (Symbol.fromString "b")}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x506")); dest = (Label.fromString "l546")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x549");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x549")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l547")};
        Quads.Instruction {label = Some (Label.fromString "l546"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x548");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x548")))};
        Quads.Instruction {label = Some (Label.fromString "l547"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x508");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x509");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x510");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x508"); src2 = Quads.Id (Symbol.fromString "x509")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x511");
             src = Quads.UnPrimOp {op = (Symbol.fromString "not"); opnd = Quads.Id (Symbol.fromString "x510")}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x511")); dest = (Label.fromString "l550")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x553");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x553")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l551")};
        Quads.Instruction {label = Some (Label.fromString "l550"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x552");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x552")))};
        Quads.Instruction {label = Some (Label.fromString "l551"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x513");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x514");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x515");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x513"); src2 = Quads.Id (Symbol.fromString "x514")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x516");
             src = Quads.UnPrimOp {op = (Symbol.fromString "not"); opnd = Quads.Id (Symbol.fromString "x515")}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x516")); dest = (Label.fromString "l554")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x557");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x557")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l555")};
        Quads.Instruction {label = Some (Label.fromString "l554"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x556");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x556")))};
        Quads.Instruction {label = Some (Label.fromString "l555"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x518");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x519");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x520");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x518"); src2 = Quads.Id (Symbol.fromString "x519")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x521");
             src = Quads.UnPrimOp {op = (Symbol.fromString "not"); opnd = Quads.Id (Symbol.fromString "x520")}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x521")); dest = (Label.fromString "l558")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x561");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x561")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l559")};
        Quads.Instruction {label = Some (Label.fromString "l558"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x560");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x560")))};
        Quads.Instruction {label = Some (Label.fromString "l559"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x522");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x523");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x524");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x522"); src2 = Quads.Id (Symbol.fromString "x523")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x524")); dest = (Label.fromString "l562")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x565");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x565")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l563")};
        Quads.Instruction {label = Some (Label.fromString "l562"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x564");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x564")))};
        Quads.Instruction {label = Some (Label.fromString "l563"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x525");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x526");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x527");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x525"); src2 = Quads.Id (Symbol.fromString "x526")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x527")); dest = (Label.fromString "l566")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x569");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x569")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l567")};
        Quads.Instruction {label = Some (Label.fromString "l566"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x568");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x568")))};
        Quads.Instruction {label = Some (Label.fromString "l567"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x528");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x529");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x530");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x528"); src2 = Quads.Id (Symbol.fromString "x529")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x530")); dest = (Label.fromString "l570")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x573");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x573")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l571")};
        Quads.Instruction {label = Some (Label.fromString "l570"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x572");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x572")))};
        Quads.Instruction {label = Some (Label.fromString "l571"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x531");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x532");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x533");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x531"); src2 = Quads.Id (Symbol.fromString "x532")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x533")); dest = (Label.fromString "l574")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x577");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x577")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l575")};
        Quads.Instruction {label = Some (Label.fromString "l574"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x576");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x576")))};
        Quads.Instruction {label = Some (Label.fromString "l575"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x534");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x535");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x536");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x534"); src2 = Quads.Id (Symbol.fromString "x535")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x536")); dest = (Label.fromString "l578")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x581");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x581")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l579")};
        Quads.Instruction {label = Some (Label.fromString "l578"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x580");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x580")))};
        Quads.Instruction {label = Some (Label.fromString "l579"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x537");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x538");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x539");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x537"); src2 = Quads.Id (Symbol.fromString "x538")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x539")); dest = (Label.fromString "l582")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x585");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 230})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x585")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l583")};
        Quads.Instruction {label = Some (Label.fromString "l582"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x584");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x584")))};
        Quads.Instruction {label = Some (Label.fromString "l583"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x540");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x541");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x542");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x540"); src2 = Quads.Id (Symbol.fromString "x541")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x542")); dest = (Label.fromString "l586")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x589");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 330})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x589")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l587")};
        Quads.Instruction {label = Some (Label.fromString "l586"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x588");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x588")))};
        Quads.Instruction {label = Some (Label.fromString "l587"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x543");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x544");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x545");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x543"); src2 = Quads.Id (Symbol.fromString "x544")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x545")); dest = (Label.fromString "l590")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x593");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x593")))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l591")};
        Quads.Instruction {label = Some (Label.fromString "l590"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x592");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 430})}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x592")))};
        Quads.Instruction {label = Some (Label.fromString "l591"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x594");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x594"))}]}]);
 ("e.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "g"); formals = [(Symbol.fromString "x"); (Symbol.fromString "y")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x597");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x598");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x599");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x597"); src2 = Quads.Id (Symbol.fromString "x598")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x596");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x600");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x599"); src2 = Quads.Id (Symbol.fromString "x596")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x600"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x603");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x"); src2 = Quads.Id (Symbol.fromString "y")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x634");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x603"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x634"))}]};
    Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "x"); (Symbol.fromString "y")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x606");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x607");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x608");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x606"); src2 = Quads.Id (Symbol.fromString "x607")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x605");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x609");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x608"); src2 = Quads.Id (Symbol.fromString "x605")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x609"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x612");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x613");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x614");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x612"); src2 = Quads.Id (Symbol.fromString "x613")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x615");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x616");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x617");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x615"); src2 = Quads.Id (Symbol.fromString "x616")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x618");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x614"); Quads.Id (Symbol.fromString "x617")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "y"); src = Quads.Operand (Quads.Id (Symbol.fromString "x618"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x619");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x620");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x621");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x619"); src2 = Quads.Id (Symbol.fromString "x620")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x621"))}}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x622");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x623");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x624");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x622"); Quads.Id (Symbol.fromString "x623")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x635");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x624"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x635")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x625");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x626");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x627");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x625"); Quads.Id (Symbol.fromString "x626")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x636");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x627"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x636")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x628");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x629");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x630");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x628"); Quads.Id (Symbol.fromString "x629")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x637");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x630"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x637")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x631");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x632");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x633");
             src =
              Quads.FunCall
               {label = (Label.fromString "g"); opnds = [Quads.Id (Symbol.fromString "x631"); Quads.Id (Symbol.fromString "x632")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x638");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x633"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x638")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x639");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x639"))}]}]);
 ("totient.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "mod"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x647");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x648");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x647")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x648")); dest = (Label.fromString "l701")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x705");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x705"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l702")};
        Quads.Instruction {label = Some (Label.fromString "l701"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l703"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x645");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x645")); dest = (Label.fromString "l704")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x642");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a"); src = Quads.Operand (Quads.Id (Symbol.fromString "x642"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l703")};
        Quads.Instruction {label = Some (Label.fromString "l704"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l702"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x706"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x706"))}]};
    Quads.Procedure
     {entry = (Label.fromString "abs"); formals = [(Symbol.fromString "a")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x653");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x654");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x653")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x654")); dest = (Label.fromString "l707")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x649");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x651");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x649"); src2 = Quads.Id (Symbol.fromString "a")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x710");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x651"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x710"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l708")};
        Quads.Instruction {label = Some (Label.fromString "l707"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x709"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x709"))};
        Quads.Instruction {label = Some (Label.fromString "l708"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "gcd"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x656");
             src = Quads.FunCall {label = (Label.fromString "abs"); opnds = [Quads.Id (Symbol.fromString "a")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a"); src = Quads.Operand (Quads.Id (Symbol.fromString "x656"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x658");
             src = Quads.FunCall {label = (Label.fromString "abs"); opnds = [Quads.Id (Symbol.fromString "b")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x658"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x682");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x683");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x682")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x683")); dest = (Label.fromString "l712")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x711");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x683"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l713")};
        Quads.Instruction {label = Some (Label.fromString "l712"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x679");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x680");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x679")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x711");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x680"))}};
        Quads.Instruction {label = Some (Label.fromString "l713"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x711")); dest = (Label.fromString "l714")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x676");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x720");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x676"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x720"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l715")};
        Quads.Instruction {label = Some (Label.fromString "l714"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x673");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "a")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x673")); dest = (Label.fromString "l716")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x669");
             src =
              Quads.FunCall
               {label = (Label.fromString "mod"); opnds = [Quads.Id (Symbol.fromString "b"); Quads.Id (Symbol.fromString "a")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x670");
             src =
              Quads.FunCall
               {label = (Label.fromString "gcd"); opnds = [Quads.Id (Symbol.fromString "a"); Quads.Id (Symbol.fromString "x669")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x719");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x670"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x719"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l717")};
        Quads.Instruction {label = Some (Label.fromString "l716"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x663");
             src =
              Quads.FunCall
               {label = (Label.fromString "mod"); opnds = [Quads.Id (Symbol.fromString "a"); Quads.Id (Symbol.fromString "b")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x664");
             src =
              Quads.FunCall
               {label = (Label.fromString "gcd"); opnds = [Quads.Id (Symbol.fromString "x663"); Quads.Id (Symbol.fromString "b")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x718");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x664"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x718"))};
        Quads.Instruction {label = Some (Label.fromString "l717"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l715"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "totient"); formals = [(Symbol.fromString "a")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "count");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "iteration");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction {label = Some (Label.fromString "l721"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x698");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds =
                 {Quads.src1 = Quads.Id (Symbol.fromString "iteration"); src2 = Quads.Id (Symbol.fromString "a")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x698")); dest = (Label.fromString "l722")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x685");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x686");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds =
                 {Quads.src1 = Quads.Id (Symbol.fromString "iteration"); src2 = Quads.Id (Symbol.fromString "x685")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "iteration");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x686"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x694");
             src =
              Quads.FunCall
               {label = (Label.fromString "gcd");
                opnds = [Quads.Id (Symbol.fromString "iteration"); Quads.Id (Symbol.fromString "a")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x691");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x695");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x694"); src2 = Quads.Id (Symbol.fromString "x691")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x695")); dest = (Label.fromString "l723")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x688");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x689");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "count"); src2 = Quads.Id (Symbol.fromString "x688")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "count");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x689"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l724")};
        Quads.Instruction {label = Some (Label.fromString "l723"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "count");
             src = Quads.Operand (Quads.Id (Symbol.fromString "count"))}};
        Quads.Instruction {label = Some (Label.fromString "l724"); op = Quads.Noop};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l721")};
        Quads.Instruction {label = Some (Label.fromString "l722"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x725");
             src = Quads.Operand (Quads.Id (Symbol.fromString "count"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x725"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x699");
             src =
              Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1638})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x700");
             src =
              Quads.FunCall
               {label = (Label.fromString "totient"); opnds = [Quads.Id (Symbol.fromString "x699")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x700"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x726"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x726")))}]}]);
 ("a2.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "c")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "d");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x727");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x730");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x731");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "c"); src2 = Quads.Id (Symbol.fromString "x730")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x732");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x727"); src2 = Quads.Id (Symbol.fromString "x731")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "d"); src = Quads.Operand (Quads.Id (Symbol.fromString "x732"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x741"); src = Quads.Operand (Quads.Id (Symbol.fromString "d"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x741"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x733");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x734");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x733")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x742");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x734"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x742")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x735");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x736");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x735")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x743");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x736"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x743")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x737");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x738");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x737")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x744");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x738"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x744")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x739");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x740");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x739")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x745");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x740"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x745")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x746");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x746"))}]}]);
 ("t1.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "mod"); formals = [(Symbol.fromString "a"); (Symbol.fromString "b")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x748");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x749");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "<");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "b"); src2 = Quads.Id (Symbol.fromString "x748")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x749")); dest = (Label.fromString "l756")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x759");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x759"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l757")};
        Quads.Instruction {label = Some (Label.fromString "l756"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x758"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x758")))};
        Quads.Instruction {label = Some (Label.fromString "l757"); op = Quads.Noop};
        Quads.Instruction {label = Some (Label.fromString "l760"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x755");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">=");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x755")); dest = (Label.fromString "l761")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x752");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "b")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "a"); src = Quads.Operand (Quads.Id (Symbol.fromString "x752"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l760")};
        Quads.Instruction {label = Some (Label.fromString "l761"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x762"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x762")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x763"); src = Quads.Operand (Quads.Id (Symbol.fromString "a"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x763"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x764");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 13})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x765");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Call
            {label = (Label.fromString "mod"); opnds = [Quads.Id (Symbol.fromString "x764"); Quads.Id (Symbol.fromString "x765")]}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x766");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x766"))}]}]);
 ("fact2.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "fact"); formals = [(Symbol.fromString "n")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x776");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x777");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x776")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x777")); dest = (Label.fromString "l790")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x793");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x793"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l791")};
        Quads.Instruction {label = Some (Label.fromString "l790"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x771");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x772");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x771")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x773");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x772")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x774");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x773"); src2 = Quads.Id (Symbol.fromString "n")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x792");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x774"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x792"))};
        Quads.Instruction {label = Some (Label.fromString "l791"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x778");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x779");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x778")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x794");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x779"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x794")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x780");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x781");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x780")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x795");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x781"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x795")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x782");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 9})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x783");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x782")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x796");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x783"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x796")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x784");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 10})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x785");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x784")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x797");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x785"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x797")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x786");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 11})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x787");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x786")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x798");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x787"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x798")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x788");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x789");
             src =
              Quads.FunCall {label = (Label.fromString "fact"); opnds = [Quads.Id (Symbol.fromString "x788")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x799");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x789"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x799"))}]}]);
 ("a.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "f"); formals = [(Symbol.fromString "a")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x800");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x803");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x804");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "a"); src2 = Quads.Id (Symbol.fromString "x803")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x805");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x800"); src2 = Quads.Id (Symbol.fromString "x804")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "b"); src = Quads.Operand (Quads.Id (Symbol.fromString "x805"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x814"); src = Quads.Operand (Quads.Id (Symbol.fromString "b"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x814"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x806");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x807");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x806")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x815");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x807"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x815")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x808");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x809");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x808")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x816");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x809"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x816")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x810");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 7})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x811");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x810")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x817");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x811"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x817")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x812");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x813");
             src = Quads.FunCall {label = (Label.fromString "f"); opnds = [Quads.Id (Symbol.fromString "x812")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x818");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x813"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x818")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x819");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x819"))}]}]);
 ("threefacts.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "ifact"); formals = [(Symbol.fromString "m")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "answer");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "answer");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction {label = Some (Label.fromString "l858"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x827");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x828");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString ">");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "m"); src2 = Quads.Id (Symbol.fromString "x827")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x828")); dest = (Label.fromString "l859")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x822");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "answer"); src2 = Quads.Id (Symbol.fromString "m")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "answer");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x822"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x824");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x825");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "m"); src2 = Quads.Id (Symbol.fromString "x824")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "m"); src = Quads.Operand (Quads.Id (Symbol.fromString "x825"))}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l858")};
        Quads.Instruction {label = Some (Label.fromString "l859"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x860");
             src = Quads.Operand (Quads.Id (Symbol.fromString "answer"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x860"))}]};
    Quads.Procedure
     {entry = (Label.fromString "rfact"); formals = [(Symbol.fromString "n")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x838");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x839");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x838")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x839")); dest = (Label.fromString "l861")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x864");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x864"))};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l862")};
        Quads.Instruction {label = Some (Label.fromString "l861"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x833");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x834");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x833")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x835");
             src =
              Quads.FunCall {label = (Label.fromString "rfact"); opnds = [Quads.Id (Symbol.fromString "x834")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x836");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x835")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x863");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x836"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x863"))};
        Quads.Instruction {label = Some (Label.fromString "l862"); op = Quads.Noop}]};
    Quads.Procedure
     {entry = (Label.fromString "condfact"); formals = [(Symbol.fromString "n")];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x850");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x851");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "==");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x850")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.JmpZero
            {cond = Quads.Operand (Quads.Id (Symbol.fromString "x851")); dest = (Label.fromString "l866")}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x865");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction {label = None; op = Quads.Jmp (Label.fromString "l867")};
        Quads.Instruction {label = Some (Label.fromString "l866"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x845");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x846");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x845")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x847");
             src =
              Quads.FunCall
               {label = (Label.fromString "condfact"); opnds = [Quads.Id (Symbol.fromString "x846")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x848");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "n"); src2 = Quads.Id (Symbol.fromString "x847")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x865");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x848"))}};
        Quads.Instruction {label = Some (Label.fromString "l867"); op = Quads.Noop};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x868");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x865"))}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x868"))}]};
    Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x852");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x853");
             src =
              Quads.FunCall {label = (Label.fromString "ifact"); opnds = [Quads.Id (Symbol.fromString "x852")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x869");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x853"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x869")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x854");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x855");
             src =
              Quads.FunCall {label = (Label.fromString "rfact"); opnds = [Quads.Id (Symbol.fromString "x854")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x870");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x855"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x870")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x856");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x857");
             src =
              Quads.FunCall
               {label = (Label.fromString "condfact"); opnds = [Quads.Id (Symbol.fromString "x856")]}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x871");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x857"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x871")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x872");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x872"))}]}]);
 ("basic_ops.mc",
  Quads.Program
   [Quads.Procedure
     {entry = (Label.fromString "main"); formals = [];
      code =
       [Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x873");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x874");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x875");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x873"); src2 = Quads.Id (Symbol.fromString "x874")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x875"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x897"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x897")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x876");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 1})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x877");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 2})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x878");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "+");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x876"); src2 = Quads.Id (Symbol.fromString "x877")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x898");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x878"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x898")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x879");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x880");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x881");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x879"); src2 = Quads.Id (Symbol.fromString "x880")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x881"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x899"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x899")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x882");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 3})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x883");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 4})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x884");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "-");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x882"); src2 = Quads.Id (Symbol.fromString "x883")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x900");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x884"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x900")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x885");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 5})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x886");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 6})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x887");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "*");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x885"); src2 = Quads.Id (Symbol.fromString "x886")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x887"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x901"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x901")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x888");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 37})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x889");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x890");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "/");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x888"); src2 = Quads.Id (Symbol.fromString "x889")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x890"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x902"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x902")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x891");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 37})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x892");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x893");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "/");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x891"); src2 = Quads.Id (Symbol.fromString "x892")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x903");
             src = Quads.Operand (Quads.Id (Symbol.fromString "x893"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x903")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x894");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 37})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x895");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 8})}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x896");
             src =
              Quads.BinPrimOp
               {op = (Symbol.fromString "%");
                opnds = {Quads.src1 = Quads.Id (Symbol.fromString "x894"); src2 = Quads.Id (Symbol.fromString "x895")}}}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x"); src = Quads.Operand (Quads.Id (Symbol.fromString "x896"))}};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x904"); src = Quads.Operand (Quads.Id (Symbol.fromString "x"))}};
        Quads.Instruction
         {label = None;
          op = Quads.Print (Quads.Operand (Quads.Id (Symbol.fromString "x904")))};
        Quads.Instruction
         {label = None;
          op =
           Quads.Gets
            {dst = Quads.Id (Symbol.fromString "x905");
             src = Quads.Operand (Quads.Word {typ = Typ.Int; bits = 0})}};
        Quads.Instruction
         {label = None; op = Quads.Ret (Quads.Id (Symbol.fromString "x905"))}]}])]
