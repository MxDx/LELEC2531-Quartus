onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /my_wonderful_testbench/clk
add wave -noupdate /my_wonderful_testbench/reset
add wave -noupdate -color Red -radix unsigned /my_wonderful_testbench/A
add wave -noupdate -color Red -radix unsigned /my_wonderful_testbench/B
add wave -noupdate -radix unsigned /my_wonderful_testbench/cnt
add wave -noupdate -color {Cornflower Blue} -radix unsigned /my_wonderful_testbench/sum
add wave -noupdate /my_wonderful_testbench/even
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {137707 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {37226 ps} {194726 ps}
