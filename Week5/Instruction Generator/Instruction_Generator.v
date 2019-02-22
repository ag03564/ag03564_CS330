module Instruction_Generator(Instruction,imm_data
    );
	
	input wire[31:0] Instruction;
    	output reg[63:0] imm_data;
	
	always @(Instruction)
    	begin
        if (Instruction[6:5]== 2'b00)
		imm_data = {{52{Instruction[31]}},Instruction[31:20]};
	else if (Instruction[6:5] == 2'b01)
		imm_data = {{52{Instruction[31]}},Instruction[31:25],Instruction[11:7]};
	else if (Instruction[6]==1'b1)
		imm_data = {{52{Instruction[31]}},Instruction[7],Instruction[30:25],Instruction[11:8],1'b0};
    	end
endmodule