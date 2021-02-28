onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate /tb/veh
add wave -noupdate -radix unsigned -radixshowbase 0 /tb/traffic_inst/cnt
add wave -noupdate -expand -group HW /tb/hwr
add wave -noupdate -expand -group HW /tb/hwy
add wave -noupdate -expand -group HW /tb/hwg
add wave -noupdate -expand -group SW /tb/swr
add wave -noupdate -expand -group SW /tb/swy
add wave -noupdate -expand -group SW /tb/swg
add wave -noupdate -radix binary -radixshowbase 0 /tb/hw
add wave -noupdate -radix binary -radixshowbase 0 /tb/sw
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {51 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {284 ns}
