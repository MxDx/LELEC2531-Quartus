onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal -childformat {{{/MyTestbench/dut/arm/dp/rf/rf[14]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[13]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[12]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[11]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[10]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[9]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[8]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[7]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[6]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[5]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[4]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[3]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[2]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[1]} -radix decimal} {{/MyTestbench/dut/arm/dp/rf/rf[0]} -radix decimal}} -expand -subitemconfig {{/MyTestbench/dut/arm/dp/rf/rf[14]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[13]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[12]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[11]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[10]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[9]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[8]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[7]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[6]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[5]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[4]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[3]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[2]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[1]} {-height 16 -radix decimal} {/MyTestbench/dut/arm/dp/rf/rf[0]} {-height 16 -radix decimal}} /MyTestbench/dut/arm/dp/rf/rf
add wave -noupdate /MyTestbench/dut/arm/c/ALUControlD
add wave -noupdate /MyTestbench/dut/arm/c/ALUControlE
add wave -noupdate /MyTestbench/dut/arm/c/ALUFlagsE
add wave -noupdate /MyTestbench/dut/arm/c/ALUOpD
add wave -noupdate /MyTestbench/dut/arm/c/ALUSrcD
add wave -noupdate /MyTestbench/dut/arm/c/ALUSrcE
add wave -noupdate /MyTestbench/dut/arm/c/BLFlag
add wave -noupdate /MyTestbench/dut/arm/c/BranchD
add wave -noupdate /MyTestbench/dut/arm/c/BranchE
add wave -noupdate /MyTestbench/dut/arm/c/BranchTakenE
add wave -noupdate /MyTestbench/dut/arm/c/clk
add wave -noupdate /MyTestbench/dut/arm/c/CondE
add wave -noupdate /MyTestbench/dut/arm/c/CondExE
add wave -noupdate /MyTestbench/dut/arm/c/controlsD
add wave -noupdate /MyTestbench/dut/arm/c/FlagsE
add wave -noupdate /MyTestbench/dut/arm/c/FlagsNextE
add wave -noupdate /MyTestbench/dut/arm/c/FlagWriteD
add wave -noupdate /MyTestbench/dut/arm/c/FlagWriteE
add wave -noupdate /MyTestbench/dut/arm/c/FlushE
add wave -noupdate /MyTestbench/dut/arm/c/ImmSrcD
add wave -noupdate -radix hexadecimal /MyTestbench/dut/arm/c/InstrD
add wave -noupdate /MyTestbench/dut/arm/c/MemtoRegD
add wave -noupdate /MyTestbench/dut/arm/c/MemtoRegE
add wave -noupdate /MyTestbench/dut/arm/c/MemtoRegM
add wave -noupdate /MyTestbench/dut/arm/c/MemtoRegW
add wave -noupdate /MyTestbench/dut/arm/c/MemWriteD
add wave -noupdate /MyTestbench/dut/arm/c/MemWriteE
add wave -noupdate /MyTestbench/dut/arm/c/MemWriteGatedE
add wave -noupdate /MyTestbench/dut/arm/c/MemWriteM
add wave -noupdate /MyTestbench/dut/arm/c/NoWriteD
add wave -noupdate /MyTestbench/dut/arm/c/NoWriteE
add wave -noupdate /MyTestbench/dut/arm/c/PCSrcD
add wave -noupdate /MyTestbench/dut/arm/c/PCSrcE
add wave -noupdate /MyTestbench/dut/arm/c/PCSrcGatedE
add wave -noupdate /MyTestbench/dut/arm/c/PCSrcM
add wave -noupdate /MyTestbench/dut/arm/c/PCSrcW
add wave -noupdate /MyTestbench/dut/arm/c/PCWrPendingF
add wave -noupdate /MyTestbench/dut/arm/c/RegSrcD
add wave -noupdate /MyTestbench/dut/arm/c/RegWriteD
add wave -noupdate /MyTestbench/dut/arm/c/RegWriteE
add wave -noupdate /MyTestbench/dut/arm/c/RegWriteGatedE
add wave -noupdate /MyTestbench/dut/arm/c/RegWriteM
add wave -noupdate /MyTestbench/dut/arm/c/RegWriteW
add wave -noupdate /MyTestbench/dut/arm/c/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {73 ps} 0}
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
