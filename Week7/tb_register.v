module tb_register
(
);

	reg [63:0] WriteData;
	reg [4:0] rs1;
	reg [4:0] rs2;
	reg [4:0] rd;
	reg RegWrite;
	reg clk;
	reg reset;
	wire [63:0] ReadData1;
	wire [63:0] ReadData2;
	
	registerFile r1
	(
	.WriteData(WriteData),
	.rs1(rs1),
	.rs2(rs2),
	.rd(rd),
	.RegWrite(RegWrite),
	.clk(clk),
	.reset(reset),
	.ReadData1(ReadData1),
	.ReadData2(ReadData2)
	);
	
	initial 
	begin 
	  clk=1'b1;
	  RegWrite=1'b0;
	  rs1=5'd6;
	  rs2=5'd7;
	  rd=5'd8;
	  reset=1'b0;
	  WriteData=64'd50;
	  #200 RegWrite=1'b0;
	  #200 RegWrite=1'b1;
	  #100
	  begin
	  rs1=5'd15;
	  rs2=5'd16;
	  RegWrite=1'b1;
	  end
	end
	
	always
	#50 clk = ~clk;
	

endmodule