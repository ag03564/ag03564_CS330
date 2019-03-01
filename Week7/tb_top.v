module tb_top
(
);
  reg [31:0] instruction;
	reg clk;
	reg reset;
	wire [63:0] ReadData1;
	wire [63:0] ReadData2;
	
	
	top_instruction t1
	(
		.instruction(instruction),
		.clk(clk),
		.reset(reset),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
	initial
		begin
			instruction = 32'b11111111111111111111111111111111;
			clk = 1'b0;	
			reset = 1'b0;
			#180 reset = 1'b1;
			#180 reset = 1'b0;
		end
	always
		begin
			#5 clk = ~clk;
		end
	
endmodule