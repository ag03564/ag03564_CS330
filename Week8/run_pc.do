vlog Instruction_Fetch.v tb.v Instruction_Memory.v adder.v
vsim -novopt work.tb
view wave
add wave sim:/tb/*
run 1000ns