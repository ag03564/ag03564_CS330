module top_instruction
( 
	input [6:0] Opcode,
	input [3:0] Funct,
	output [3:0] Operation,
	output Branch,
	output MemRead,
	output MemtoReg,
	output MemWrite,
	output ALUSrc,
	output RegWrite
);

  wire [1:0] temp1;
	Control_Unit C1
	(
		.Opcode(Opcode),
		.Branch(Branch),
	  .MemRead(MemRead),
	  .MemtoReg(MemtoReg),
	  .ALUOp(temp1),
	  .MemWrite(MemWrite),
	  .ALUSrc(ALUSrc),
	  .RegWrite(RegWrite)
	);
	
	ALU_Control A1
	(
		.ALUOp(temp1),
		.Funct(Funct),
		.Operation(Operation)
	);
	
endmodule
  