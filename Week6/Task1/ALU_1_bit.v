module ALU_1_bit(a,b,CarryIn,ALUOp,Result,CarryOut);

    input wire a;
    input wire b;
    input wire CarryIn;
    input wire[3:0] ALUOp;
    output reg Result;
    output reg CarryOut;
    wire abar;
    wire bbar;
    wire mux1out;
    wire mux2out;
    wire Ainvert;
    wire Binvert;
  
    //begin
        assign Ainvert=ALUOp[3];
        assign Binvert=ALUOp[2];
        assign abar = ~a;
        assign bbar = ~b;
        assign mux1out = (Ainvert) ? (abar) : (a);   
        assign mux2out = (Binvert) ? (bbar) : (b);
        
    always @ ALUOp
    begin    
    case (ALUOp)
    4'b0000 : begin
              Result = mux1out & mux2out;
              CarryOut = 1'b0;
              end
    4'b0001 : begin
              Result = mux1out | mux2out;
              CarryOut = 1'b0;
              end
    4'b0010 :begin
              assign Result = mux1out + mux2out + CarryIn;
              assign CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out);
              end
    4'b0100 : begin
              assign Result = mux1out + mux2out + CarryIn;
              assign CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out);
              end
    4'b1100 : begin
              Result=mux1out | mux2out;
              Result=~Result;
              end
    endcase
    end
    //end
    
endmodule
