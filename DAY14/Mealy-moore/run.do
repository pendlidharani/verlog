vlib work
vdel -all
vlib work
vlog -f file.list +acc +define+VER2
vsim work.tb
add wave -r *
run -all