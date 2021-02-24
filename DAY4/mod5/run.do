vlib work
vdel -all
vlib work
vlog mod5.v +acc
vlog mod5_tb.v +acc
vsim work.tb
add wave sim:/tb/*
run -all