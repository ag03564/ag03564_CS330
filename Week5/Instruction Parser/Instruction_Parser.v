module Instruction_Parser(Instruction,opcode,rd,funct3,rs1,rs2,funct7
    );

    input wire[31:0] Instruction;
    output reg[6:0] opcode;
    output reg[4:0] rd;
    output reg[2:0] funct3;
    output reg[4:0] rs1;
    output reg[4:0] rs2;
    output reg[6:0] funct7;
    
    
    always @(*)
    begin
        opcode=Instruction[6:0];
        rd=Instruction[11:7];
        funct3=Instruction[14:12];
        rs1=Instruction[19:15];
        rs2=Instruction[24:20];
        funct7=Instruction[31:25]; 
    end
    
endmodule