vlib work
vdel -all
vlib work
vlog -f file.list +acc +define+Dataflow
vsim work.tb
add wave -r *
run -all