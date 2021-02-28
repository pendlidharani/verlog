vlib work
vdel -all
vlib work
vlog mod100.v +acc
vlog mod100_tb.v +acc
vsim work.tb
add wave sim:/tb/*
run -all