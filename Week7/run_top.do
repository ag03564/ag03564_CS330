vlog instruction_parser.v top_instruction.v tb_top.v
vsim -novopt work.tb_top
view wave
add wave sim:/tb_top/*
run 1000ns