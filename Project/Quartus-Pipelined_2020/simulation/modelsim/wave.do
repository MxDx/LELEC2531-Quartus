onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MyTestbench/dut/cs_dmem
add wave -noupdate /MyTestbench/dut/cs_coproc
add wave -noupdate -radix decimal /MyTestbench/dut/DataAdrM
add wave -noupdate /MyTestbench/dut/clk
add wave -noupdate -radix float32 /MyTestbench/dut/coproc/A
add wave -noupdate -radix float32 /MyTestbench/dut/coproc/B
add wave -noupdate -radix float32 /MyTestbench/dut/coproc/S
add wave -noupdate -radix float32 /MyTestbench/dut/coproc/Result
add wave -noupdate -radix hexadecimal /MyTestbench/dut/dmem/rd
add wave -noupdate -radix float32 {/MyTestbench/dut/arm/dp/rf/rf[0]}
add wave -noupdate -radix float32 {/MyTestbench/dut/arm/dp/rf/rf[1]}
add wave -noupdate -radix float32 {/MyTestbench/dut/arm/dp/rf/rf[2]}
add wave -noupdate -radix float32 {/MyTestbench/dut/arm/dp/rf/rf[3]}
add wave -noupdate -radix float32 /MyTestbench/dut/ReadData_coproc
add wave -noupdate -radix float32 /MyTestbench/dut/ReadDataM
add wave -noupdate -radix float32 /MyTestbench/dut/ReadData_dmem
add wave -noupdate -radix float32 {/MyTestbench/dut/spi_slave_instance/misoRAM[0]}
add wave -noupdate -radix float32 {/MyTestbench/dut/spi_slave_instance/misoRAM[1]}
add wave -noupdate -radix float32 {/MyTestbench/dut/spi_slave_instance/misoRAM[2]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29 ps} 0}
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
