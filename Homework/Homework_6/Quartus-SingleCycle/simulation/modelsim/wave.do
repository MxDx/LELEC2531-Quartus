onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MyTestbench/dut/arm/clk
add wave -noupdate /MyTestbench/dut/arm/reset
add wave -noupdate -radix unsigned /MyTestbench/dut/arm/PC
add wave -noupdate -radix hexadecimal /MyTestbench/dut/arm/Instr
add wave -noupdate -radix decimal /MyTestbench/dut/arm/ALUResult
add wave -noupdate -radix unsigned /MyTestbench/dut/arm/WriteData
add wave -noupdate /MyTestbench/dut/arm/MemWrite
add wave -noupdate -radix unsigned /MyTestbench/dut/arm/ReadData
add wave -noupdate /MyTestbench/DataAdr
add wave -noupdate /MyTestbench/dut/arm/ALUFlags
add wave -noupdate /MyTestbench/dut/arm/c/cl/CondEx
add wave -noupdate -radix decimal -childformat {{{/MyTestbench/dut/arm/dp/rf/rf[14]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[13]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[12]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[11]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[10]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[9]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[8]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[7]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[6]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[5]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[4]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[3]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[2]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[1]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[0]} -radix decimal}} -expand -subitemconfig {{/MyTestbench/dut/arm/dp/rf/rf[14]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[13]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[12]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[11]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[10]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[9]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[8]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[7]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[6]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[5]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[4]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[3]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[2]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[1]} {-radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[0]} {-radix decimal}} /MyTestbench/dut/arm/dp/rf/rf
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {137 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 111
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {206 ps}
