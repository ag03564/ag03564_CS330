vlog tb.v Instruction_Generator.v

vsim -novopt work.tb

view wave

add wave sim:/tb/Instruction
add wave sim:/tb/imm_data


run 1000ns