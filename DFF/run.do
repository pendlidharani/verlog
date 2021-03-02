vlib work
vdel -all
vlib work
vlog task_fork.v +acc
vlog task_fork_tb .v +acc
vsim work.tb
add wave -r *
#do wave.do
run -all