vlog tb_top6.v top_ALU_6_bit.v

vsim -novopt work.tb

view wave

add wave sim:/tb/*

run 900ns