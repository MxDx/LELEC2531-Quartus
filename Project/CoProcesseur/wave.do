onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FloatingPointAdder_tb/clk
add wave -noupdate -radix float32 /FloatingPointAdder_tb/dut/Result
add wave -noupdate -radix float32 /FloatingPointAdder_tb/A
add wave -noupdate -radix float32 /FloatingPointAdder_tb/B
add wave -noupdate -radix float32 /FloatingPointAdder_tb/S
add wave -noupdate /FloatingPointAdder_tb/dut/A
add wave -noupdate /FloatingPointAdder_tb/dut/A_exp
add wave -noupdate /FloatingPointAdder_tb/dut/A_mant
add wave -noupdate /FloatingPointAdder_tb/dut/A_sign
add wave -noupdate /FloatingPointAdder_tb/dut/B
add wave -noupdate /FloatingPointAdder_tb/dut/B_exp
add wave -noupdate /FloatingPointAdder_tb/dut/B_mant
add wave -noupdate /FloatingPointAdder_tb/dut/B_sign
add wave -noupdate /FloatingPointAdder_tb/dut/S_exp
add wave -noupdate /FloatingPointAdder_tb/dut/S_mant
add wave -noupdate /FloatingPointAdder_tb/dut/S_sign
add wave -noupdate -radix hexadecimal /FloatingPointAdder_tb/Data_Addr
add wave -noupdate -radix float32 /FloatingPointAdder_tb/Data_In
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 243
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
WaveRestoreZoom {0 ps} {110 ps}
