onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /MyTestbench/dut/arm/dp/alu/Result
add wave -noupdate /MyTestbench/clk
add wave -noupdate /MyTestbench/reset
add wave -noupdate -radix hexadecimal /MyTestbench/PC
add wave -noupdate /MyTestbench/WriteData
add wave -noupdate /MyTestbench/DataAdr
add wave -noupdate /MyTestbench/MemWrite
add wave -noupdate /MyTestbench/GPIO_0_PI
add wave -noupdate /MyTestbench/GPIO_1
add wave -noupdate /MyTestbench/GPIO_2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49 ps} 0}
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
WaveRestoreZoom {0 ps} {128 ps}
