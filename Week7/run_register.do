vlog registerFile.v tb_register.v
vsim -novopt work.tb_register
view wave
add wave sim:/tb_register/*
run 1000ns