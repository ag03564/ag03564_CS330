module tb
(

);
	   reg [5:0] a;
	   reg [5:0] b;
	   reg CarryIn;
	   reg [3:0] ALUOp;
    wire CarryOut;
       
	
	top_ALU_6_bit ALU_6
	(
		.a(a),
		.b(b),
		.CarryIn(CarryIn),
		.ALUOp(ALUOp),
		.Result(Result),
		.CarryOut(CarryOut)
	);
	
	
  initial
    begin
      a = 6'b000101;
      b = 6'b000010;
      ALUOp = 4'h6;
      CarryIn = 1;
      #300 ALUOp = 4'h2;
      CarryIn = 0;
      #300 ALUOp = 4'h1;
    end
	
	initial
	$monitor("Time = ",$time, "---> Output = %d",a,b,CarryIn,Result,CarryOut);
endmodule
