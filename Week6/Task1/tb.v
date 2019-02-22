module tb
(

);
	     reg a;
	     reg b;
	     reg CarryIn;
	     reg [3:0] ALUOp;
       wire CarryOut;
       
	
	ALU_1_bit ALU
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
  a = 1'b0;
  b = 1'b1;
  CarryIn = 1'b1;
  ALUOp = 4'b0000;
  #100 ALUOp = 4'b0001;
  #100 ALUOp = 4'b0010;
  #100 ALUOp = 4'b0100;
  #100 ALUOp = 4'b1100;
  end
	
	initial
	$monitor("Time = ",$time, "---> Output = %d",a,b,CarryIn,Result,CarryOut);
endmodule
