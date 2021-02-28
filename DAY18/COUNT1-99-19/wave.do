onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate -radix unsigned -radixshowbase 1 /tb/i
add wave -noupdate -radix unsigned -radixshowbase 1 /tb/cnt
add wave -noupdate -radix unsigned -radixshowbase 1 /tb/cnt_exp
add wave -noupdate -radix unsigned -radixshowbase 1 /tb/count19_inst/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {340 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 202
configure wave -valuecolwidth 72
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {264 ns} {481 ns}
