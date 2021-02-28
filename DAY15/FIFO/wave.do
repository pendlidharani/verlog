onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate /tb/wr
add wave -noupdate /tb/rd
add wave -noupdate -radix unsigned /tb/din
add wave -noupdate -radix unsigned /tb/dout
add wave -noupdate /tb/housefull
add wave -noupdate /tb/nostock
add wave -noupdate -radix unsigned /tb/wrptr
add wave -noupdate -radix unsigned /tb/rdptr
add wave -noupdate /tb/state_txt
add wave -noupdate -radix unsigned -childformat {{{/tb/fifo_inst/Box[1]} -radix unsigned} {{/tb/fifo_inst/Box[2]} -radix unsigned} {{/tb/fifo_inst/Box[3]} -radix unsigned} {{/tb/fifo_inst/Box[4]} -radix unsigned} {{/tb/fifo_inst/Box[5]} -radix unsigned} {{/tb/fifo_inst/Box[6]} -radix unsigned} {{/tb/fifo_inst/Box[7]} -radix unsigned} {{/tb/fifo_inst/Box[8]} -radix unsigned} {{/tb/fifo_inst/Box[9]} -radix unsigned} {{/tb/fifo_inst/Box[10]} -radix unsigned}} -expand -subitemconfig {{/tb/fifo_inst/Box[1]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[2]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[3]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[4]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[5]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[6]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[7]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[8]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[9]} {-height 15 -radix unsigned} {/tb/fifo_inst/Box[10]} {-height 15 -radix unsigned}} /tb/fifo_inst/Box
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate -divider {New Divider}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {766 ns} 0}
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
WaveRestoreZoom {0 ns} {656 ns}
