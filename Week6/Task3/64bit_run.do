vlog ALU_64_bit.v tb_ALU_64_bit.v
vsim -novopt work.tb_ALU_64_bit
view wave
add wave sim:/tb_ALU_64_bit/*
run 300ns