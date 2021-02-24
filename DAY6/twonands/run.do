vlib work
vdel -all
vlib work
vlog twonands.v
vlog twonands_tb.v
vsim work.tb
add wave sim:/tb/*
run -all
