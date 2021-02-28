vlib work
vdel -all
vlib work
vlog updown.v +acc
vlog updown_tb.v +acc
vsim work.tb
add wave sim:/tb/*
#do wave.do
run -all