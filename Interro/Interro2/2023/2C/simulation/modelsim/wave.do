onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk -radix hexadecimal -radixshowbase 0 /MyTestbench/clk
add wave -noupdate -label reset -radix hexadecimal -radixshowbase 0 /MyTestbench/reset
add wave -noupdate -label PC -radix hexadecimal -radixshowbase 0 /MyTestbench/dut/arm/dp/PC
add wave -noupdate -label Instr -radix hexadecimal -radixshowbase 0 /MyTestbench/dut/arm/dp/Instr
add wave -noupdate -label ALUResult -radix hexadecimal -radixshowbase 0 /MyTestbench/dut/arm/dp/ALUResult
add wave -noupdate -label WriteData -radix hexadecimal -radixshowbase 0 /MyTestbench/dut/arm/dp/WriteData
add wave -noupdate -label MemWrite -radix hexadecimal -radixshowbase 0 /MyTestbench/MemWrite
add wave -noupdate -label ReadData -radix hexadecimal -radixshowbase 0 /MyTestbench/ReadData
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {124 ps} 0}
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
WaveRestoreZoom {0 ps} {1 ns}
