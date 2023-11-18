vsim -gui work.testbench_homework_4
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_homework_4/clk
add wave -noupdate -radix hexadecimal /testbench_homework_4/a
add wave -noupdate -radix hexadecimal /testbench_homework_4/b
add wave -noupdate -expand -group Result -color Red -radix hexadecimal /testbench_homework_4/Result
add wave -noupdate -expand -group Result -color Red -radix hexadecimal /testbench_homework_4/ResultExpected
add wave -noupdate /testbench_homework_4/ALUControl
add wave -noupdate -expand -group ALUFlags -color {Medium Blue} /testbench_homework_4/ALUFlags
add wave -noupdate -expand -group ALUFlags -color {Medium Blue} /testbench_homework_4/ALUFlagsExpected
add wave -noupdate -radix unsigned /testbench_homework_4/vectornum
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 250
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
WaveRestoreZoom {0 ps} {168 ps}
run 160 ps