module tb
(

);
	reg[31:0] Instruction;
	wire[63:0] imm_data;
        
	Instruction_Generator i
	(
		.Instruction(Instruction),
		.imm_data(imm_data)
	);
initial
begin
  Instruction = 32'b10101010000000000000000000000000;
  #100 Instruction = 32'b11100010001011010100010010100000;  
  #300 Instruction = 32'b11100010001011010100010011100000;
end
	
	initial
	$monitor("Time = ",$time, "---> Output = %d",imm_data);
endmodule
