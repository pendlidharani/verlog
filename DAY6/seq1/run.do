vlib work
vdel -all
vlib work
vlog seq.v +acc
vlog seq_tb.v +acc
vsim work.tb
add wave sim:/tb/*
run -all
