module tb
(
);
	reg clk_1;
	reg reset_1;
	wire [31:0] final_instruction;
	
	
	Instruction_Fetch if1
	(
		.final_instruction(final_instruction),
		.clk_1(clk_1),
		.reset_1(reset_1)
	);
	
	initial
		begin
			clk_1 = 1'b0;
			reset_1 = 1'b0;
			#10 reset_1 = 1'b1;
			#20 reset_1 = 1'b0;
			#10 reset_1 = 1'b1;
		end	
		

always
		begin
			#10 clk_1 = ~clk_1;
		end

endmodule