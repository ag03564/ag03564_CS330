vlog tb.v ALU_1_bit.v
vsim -novopt work.tb
view wave
add wave sim:/tb/*



run 1000ns