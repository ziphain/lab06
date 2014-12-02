# dc_shell-t -f fifo.tcl
analyze -library WORK -format verilog {wptr_full.v sync_w2r.v sync_r2w.v rptr_empty.v fifo1.v}
elaborate fifo1 -architecture verilog -library DEFAULT
source fifo.dc
uplevel #0 check_design
compile -exact_map
write -hierarchy -format verilog -output fifo_syn.v
write_sdf -version 1.0 -context verilog fifo.sdf
exit