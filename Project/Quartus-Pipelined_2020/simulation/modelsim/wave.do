onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MyTestbench/dut/clk
add wave -noupdate /MyTestbench/dut/arm/c/ALUControlD
add wave -noupdate /MyTestbench/dut/arm/c/ALUControlE
add wave -noupdate /MyTestbench/dut/arm/c/ALUFlagsE
add wave -noupdate /MyTestbench/dut/arm/c/NoWriteD
add wave -noupdate /MyTestbench/dut/arm/c/NoWriteE
add wave -noupdate -radix hexadecimal /MyTestbench/dut/arm/InstrD
add wave -noupdate /MyTestbench/dut/arm/c/BLFlagD
add wave -noupdate -radix binary /MyTestbench/dut/arm/c/BLFlagE
add wave -noupdate /MyTestbench/dut/arm/c/BLFlag
add wave -noupdate -radix decimal {/MyTestbench/dut/arm/dp/rf/rf[14]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20 ps} 0}
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
WaveRestoreZoom {0 ps} {131 ps}
