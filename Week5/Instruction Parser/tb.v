module tb
(

);
	reg[31:0] Instruction;
	   wire[6:0] opcode;
        wire[4:0] rd;
        wire[2:0] funct3;
        wire[4:0] rs1;
        wire[4:0] rs2;
        wire[6:0] funct7;
	
	Instruction_Parser i
	(
		.Instruction(Instruction),
		.opcode(opcode),
		.rd(rd),
		.funct3(funct3),
		.rs1(rs1),
		.rs2(rs2),
		.funct7(funct7)
	);
	
	initial
	Instruction = 32'b00000010001011010100010000101110;
	
  initial
  begin
  #100 Instruction = 32'b11100010001011010100010000111111;  
  #300 Instruction = 32'b11100010001011010100010000000000;
  end
	
	initial
	$monitor("Time = ",$time, "---> Output = %d",opcode,rd,funct3,rs1,rs2,funct7);
endmodule
