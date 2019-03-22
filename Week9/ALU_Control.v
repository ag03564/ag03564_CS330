module ALU_Control
  (
    input [1:0] ALUOp, [3:0] Funct,
    output reg [3:0]Operation
  );
  
  always @ (ALUOp or Funct)
  if (ALUOp == 2'b00)
    begin
      Operation=4'b0010;
    end
  
  else if (ALUOp == 2'b01)
    begin
      Operation=4'b0110;
    end
  
  else if ((ALUOp==2'b10) && (Funct==4'b0000))
    begin
      Operation=4'b0010;
    end
    
   else if ((ALUOp == 2'b10) && (Funct==4'b1000))
    begin
      Operation=4'b0110;
    end
   
   else if ((ALUOp==2'b10) && (Funct==4'b0111))
    begin
      Operation=4'b0000;
    end
    
    else if ((ALUOp ==2'b10) && (Funct==4'b0110))
    begin
      Operation=4'b0001;
    end   
      
endmodule
