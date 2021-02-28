onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate -radix unsigned /tb/hrs
add wave -noupdate -radix unsigned /tb/mins
add wave -noupdate -radix unsigned /tb/secs
add wave -noupdate /tb/hms_inst/hrs
add wave -noupdate /tb/hms_inst/mins
add wave -noupdate /tb/hms_inst/secs
add wave -noupdate -radix unsigned /tb/hms_inst/pluse1/pluse1
add wave -noupdate -radix unsigned /tb/hms_inst/pluse1/sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {863995 ns} 0}
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
WaveRestoreZoom {863969 ns} {864189 ns}
