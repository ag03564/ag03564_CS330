module top_instruction
( 
	input [31:0] instruction,
	input clk,
	input reset,
	output [63:0] ReadData1,
	output [63:0] ReadData2
);

	wire [4:0] temp1;
	wire [4:0] temp2;
	
	instruction_parser I1
	(
		.instruction(instruction),
		.rs1(temp1),
		.rs2(temp2)
	);
	
	registerFile r1
	(
		.rs1(temp1),
		.rs2(temp2),
		.clk(clk),
		.reset(reset),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
endmodule