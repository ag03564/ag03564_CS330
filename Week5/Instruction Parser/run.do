vlog tb.v Instruction_Parser.v

vsim -novopt work.tb

view wave

add wave sim:/tb/Instruction
add wave sim:/tb/opcode
add wave sim:/tb/rd
add wave sim:/tb/funct3
add wave sim:/tb/rs1
add wave sim:/tb/rs2
add wave sim:/tb/funct7

run 500ns