module Instruction_Fetch(input clk_1, input reset_1, output wire [31:0] final_instruction);
wire [63:0] adder_out;
wire [63:0] PC_Output;


Program_Counter pc
  (
  .clk(clk_1),
  .reset(reset_1),
  .PC_In(adder_out),
  .PC_Out(PC_Output)
  );
  
adder a1
  (
    .a(PC_Output),
    .b(64'd4),
    .out(adder_out)
  );

Instruction_Memory im
(
  .Inst_Address(PC_Output),
  .Instruction(final_instruction)
);
  
endmodule