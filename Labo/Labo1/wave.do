# The $ sign can be used to pass argument through the “do” command ($1 for the first, $2 for the second, etc.)
if {$1 == 0} {
    # restart the simulation (can be useful if you add a new signal to the Wave)
    restart –f
} else {
    # delete all signals in the Wave (actually not necessary if you start a new simulation (with vsim))
    delete wave *
    # recompile all ".sv" files (warning: unlike using the "Compile ..." buttons of the ModelSim GUI,
    # this will not update the file "Status"). Obviously, this becomes not really efficient with large designs
    vlog *.sv
    # restart a simulation (necessary if you recompile one of your design files)
    vsim -gui -t ns work.test_fulladder_4bit
    #
    # replace this comment by the commands that were already present in the file
    #
}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/A
add wave -noupdate -expand -group FA_4BIT -radix unsigned -childformat {{{/test_fulladder_4bit/B[3]} -radix unsigned} {{/test_fulladder_4bit/B[2]} -radix unsigned} {{/test_fulladder_4bit/B[1]} -radix unsigned} {{/test_fulladder_4bit/B[0]} -radix unsigned}} -subitemconfig {{/test_fulladder_4bit/B[3]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[2]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[1]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[0]} {-height 15 -radix unsigned}} /test_fulladder_4bit/B
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/C_IN
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/C_OUT
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/SUM
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/A
add wave -noupdate -expand -group FA_4BIT -radix unsigned -childformat {{{/test_fulladder_4bit/B[3]} -radix unsigned} {{/test_fulladder_4bit/B[2]} -radix unsigned} {{/test_fulladder_4bit/B[1]} -radix unsigned} {{/test_fulladder_4bit/B[0]} -radix unsigned}} -subitemconfig {{/test_fulladder_4bit/B[3]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[2]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[1]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[0]} {-height 15 -radix unsigned}} /test_fulladder_4bit/B
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/C_IN
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/C_OUT
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/SUM
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/A
add wave -noupdate -expand -group FA_4BIT -radix unsigned -childformat {{{/test_fulladder_4bit/B[3]} -radix unsigned} {{/test_fulladder_4bit/B[2]} -radix unsigned} {{/test_fulladder_4bit/B[1]} -radix unsigned} {{/test_fulladder_4bit/B[0]} -radix unsigned}} -subitemconfig {{/test_fulladder_4bit/B[3]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[2]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[1]} {-height 15 -radix unsigned} {/test_fulladder_4bit/B[0]} {-height 15 -radix unsigned}} /test_fulladder_4bit/B
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/C_IN
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/C_OUT
add wave -noupdate -expand -group FA_4BIT -radix unsigned /test_fulladder_4bit/SUM
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/a
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/b
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/c_in
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/sum
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/c_out
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/a
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/b
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/c_in
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/sum
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/c_out
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/a
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/b
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/c_in
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/sum
add wave -noupdate -expand -group FA0 -color Red /test_fulladder_4bit/FA_4BIT/FA0/c_out
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/a
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/b
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/c_in
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/sum
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/c_out
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/a
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/b
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/c_in
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/sum
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/c_out
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/a
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/b
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/c_in
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/sum
add wave -noupdate -expand -group FA1 -color {Dark Orchid} /test_fulladder_4bit/FA_4BIT/FA1/c_out
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/a
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/b
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/c_in
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/sum
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/c_out
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/a
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/b
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/c_in
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/sum
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/c_out
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/a
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/b
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/c_in
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/sum
add wave -noupdate -expand -group FA2 -color Gold /test_fulladder_4bit/FA_4BIT/FA2/c_out
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/a
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/b
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/c_in
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/sum
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/c_out
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/a
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/b
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/c_in
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/sum
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/c_out
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/a
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/b
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/c_in
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/sum
add wave -noupdate -expand -group FA3 -color {Medium Blue} /test_fulladder_4bit/FA_4BIT/FA3/c_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5 ns} 0}
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
WaveRestoreZoom {0 ns} {30 ns}

run $2 ns