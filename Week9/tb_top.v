module tb_top
(
);
  reg [6:0] Opcode;
	reg [3:0] Funct;
	wire [3:0] Operation;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;
	
	
	top_instruction t1
	(
		.Opcode(Opcode),
		.Funct(Funct),
		.Operation(Operation),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite)
	);
	
	
	initial
	begin
	  Opcode = 7'b0110011;
	  Funct = 4'b0000;
	  #50 Funct = 4'b1000;
	  #50 Funct = 4'b0111;
	  #50 Funct = 4'b0110;
	  #50 Opcode = 7'b0000011;
	  #50 Opcode = 7'b0100011;
	  #50 Opcode = 7'b1100011;
	end
	
endmodule