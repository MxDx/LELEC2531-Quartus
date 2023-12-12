onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MyTestbench/clk
add wave -noupdate /MyTestbench/reset
add wave -noupdate /MyTestbench/ReadData
add wave -noupdate /MyTestbench/WriteData
add wave -noupdate /MyTestbench/DataAdr
add wave -noupdate /MyTestbench/MemWrite
add wave -noupdate -expand -group Fetch -radix hexadecimal /MyTestbench/dut/arm/PCF
add wave -noupdate -expand -group Fetch -radix hexadecimal /MyTestbench/dut/arm/InstrF
add wave -noupdate -expand -group Execute -radix decimal /MyTestbench/dut/arm/dp/alu/a
add wave -noupdate -expand -group Execute -radix decimal /MyTestbench/dut/arm/dp/alu/b
add wave -noupdate -expand -group Execute /MyTestbench/dut/arm/dp/alu/ALUControl
add wave -noupdate -expand -group Execute -radix decimal /MyTestbench/dut/arm/dp/alu/Result
add wave -noupdate -expand -group Execute /MyTestbench/dut/arm/dp/alu/Flags
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/ForwardAE
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/ForwardBE
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/StallF
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/StallD
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/FlushD
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/FlushE
add wave -noupdate -expand -group Hazard /MyTestbench/dut/arm/h/LDRstall
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {43 ps} 0}
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
WaveRestoreZoom {0 ps} {210 ps}
