module top_ALU_6_bit(a,b,CarryIn,ALUOp,Result,CarryOut);
  
    input [5:0] a;
    input [5:0] b;
    input CarryIn;
    input [3:0] ALUOp;
    output wire [5:0] Result;
    output wire CarryOut;
    
    
  wire t1, t2, t3, t4, t5;
  ALU_1_bit A1
  (
    .a(a[0]),
    .b(b[0]),
    .ALUOp(ALUOp),
    .CarryIn(CarryIn),
    .CarryOut(t1),
    .Result(Result[0])
  );
  ALU_1_bit A2
  (
    .a(a[1]),
    .b(b[1]),
    .ALUOp(ALUOp),
    .CarryIn(t1),
    .CarryOut(t2),
    .Result(Result[1])
  );
  wire CarryOut2;
  ALU_1_bit A3
  (
    .a(a[2]),
    .b(b[2]),
    .ALUOp(ALUOp),
    .CarryIn(t2),
    .CarryOut(t3),
    .Result(Result[2])
  );
  wire CarryOut3;
  ALU_1_bit A4
  (
    .a(a[3]),
    .b(b[3]),
    .ALUOp(ALUOp),
    .CarryIn(t3),
    .CarryOut(t4),
    .Result(Result[3])
  );
  wire CarryOut4;
  ALU_1_bit A5
  (
    .a(a[4]),
    .b(b[4]),
    .ALUOp(ALUOp),
    .CarryIn(t4),
    .CarryOut(t5),
    .Result(Result[4])
  );
  wire CarryOut5;
  ALU_1_bit A6
  (
    .a(a[5]),
    .b(b[5]),
    .ALUOp(ALUOp),
    .CarryIn(t5),
    .CarryOut(CarryOut),
    .Result(Result[5])
  );
  
endmodule