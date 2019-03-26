module registerFile
(
  input [63:0] WriteData,
  input [4:0] rs1,
  input [4:0] rs2,
  input [4:0] rd,
  input RegWrite,
  input clk,
  input reset,
  output reg [63:0] ReadData1,
  output reg [63:0] ReadData2
);

  reg [63:0] Register [31:0];
  initial
  begin
  Register[0]<=64'd0;
  Register[1]<=64'd1;
  Register[2]<=64'd2;
  Register[3]<=64'd3;
  Register[4]<=64'd4;
  Register[5]<=64'd5;
  Register[6]<=64'd6;
  Register[7]<=64'd7;
  Register[8]<=64'd8;
  Register[9]<=64'd9;
  Register[10]<=64'd10;
  Register[11]<=64'd11;
  Register[12]<=64'd12;
  Register[13]<=64'd13;
  Register[14]<=64'd14;
  Register[15]<=64'd15;
  Register[16]<=64'd16;
  Register[17]<=64'd17;
  Register[18]<=64'd18;
  Register[19]<=64'd19;
  Register[20]<=64'd20;
  Register[21]<=64'd21;
  Register[22]<=64'd22;
  Register[23]<=64'd23;
  Register[24]<=64'd24;
  Register[25]<=64'd25;
  Register[26]<=64'd26;
  Register[27]<=64'd27;
  Register[28]<=64'd28;
  Register[29]<=64'd29;
  Register[30]<=64'd30;
  Register[31]<=64'd31;
  end
  
  always @ (posedge clk)
  begin
    if (reset==0)
      begin
        ReadData1<= Register[rs1];
        ReadData2<= Register[rs2];
      end
    else
      ReadData1<=0;
      ReadData2<=0;
  end

endmodule