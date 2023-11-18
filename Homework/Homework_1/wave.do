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
    vsim -gui -t ns work.test_fulladder_8bit
    #
    # replace this comment by the commands that were already present in the file
    #
}

quietly WaveActivateNextPane {} 0
add wave -noupdate /test_fulladder_8bit/INPUT
add wave -noupdate /test_fulladder_8bit/CONSTANT
add wave -noupdate /test_fulladder_8bit/OPERATION
add wave -noupdate /test_fulladder_8bit/SUM
add wave -noupdate -expand -group FA0 -color Gold /test_fulladder_8bit/FA8bit/FA0/a
add wave -noupdate -expand -group FA0 -color Gold /test_fulladder_8bit/FA8bit/FA0/b
add wave -noupdate -expand -group FA0 -color Gold /test_fulladder_8bit/FA8bit/FA0/c_in
add wave -noupdate -expand -group FA0 -color Gold /test_fulladder_8bit/FA8bit/FA0/sum
add wave -noupdate -expand -group FA0 -color Gold /test_fulladder_8bit/FA8bit/FA0/c_out
add wave -noupdate -expand -group FA1 -color Red /test_fulladder_8bit/FA8bit/FA1/a
add wave -noupdate -expand -group FA1 -color Red /test_fulladder_8bit/FA8bit/FA1/b
add wave -noupdate -expand -group FA1 -color Red /test_fulladder_8bit/FA8bit/FA1/c_in
add wave -noupdate -expand -group FA1 -color Red /test_fulladder_8bit/FA8bit/FA1/sum
add wave -noupdate -expand -group FA1 -color Red /test_fulladder_8bit/FA8bit/FA1/c_out
add wave -noupdate -expand -group FA2 -color {Violet Red} /test_fulladder_8bit/FA8bit/FA2/a
add wave -noupdate -expand -group FA2 -color {Violet Red} /test_fulladder_8bit/FA8bit/FA2/b
add wave -noupdate -expand -group FA2 -color {Violet Red} /test_fulladder_8bit/FA8bit/FA2/c_in
add wave -noupdate -expand -group FA2 -color {Violet Red} /test_fulladder_8bit/FA8bit/FA2/sum
add wave -noupdate -expand -group FA2 -color {Violet Red} /test_fulladder_8bit/FA8bit/FA2/c_out
add wave -noupdate -expand -group FA3 -color {Lime Green} /test_fulladder_8bit/FA8bit/FA3/a
add wave -noupdate -expand -group FA3 -color {Lime Green} /test_fulladder_8bit/FA8bit/FA3/b
add wave -noupdate -expand -group FA3 -color {Lime Green} /test_fulladder_8bit/FA8bit/FA3/c_in
add wave -noupdate -expand -group FA3 -color {Lime Green} /test_fulladder_8bit/FA8bit/FA3/sum
add wave -noupdate -expand -group FA3 -color {Lime Green} /test_fulladder_8bit/FA8bit/FA3/c_out
add wave -noupdate -expand -group FA4 -color {Cadet Blue} /test_fulladder_8bit/FA8bit/FA4/a
add wave -noupdate -expand -group FA4 -color {Cadet Blue} /test_fulladder_8bit/FA8bit/FA4/b
add wave -noupdate -expand -group FA4 -color {Cadet Blue} /test_fulladder_8bit/FA8bit/FA4/c_in
add wave -noupdate -expand -group FA4 -color {Cadet Blue} /test_fulladder_8bit/FA8bit/FA4/sum
add wave -noupdate -expand -group FA4 -color {Cadet Blue} /test_fulladder_8bit/FA8bit/FA4/c_out
add wave -noupdate -expand -group F5 -color {Cornflower Blue} /test_fulladder_8bit/FA8bit/FA5/a
add wave -noupdate -expand -group F5 -color {Cornflower Blue} /test_fulladder_8bit/FA8bit/FA5/b
add wave -noupdate -expand -group F5 -color {Cornflower Blue} /test_fulladder_8bit/FA8bit/FA5/c_in
add wave -noupdate -expand -group F5 -color {Cornflower Blue} /test_fulladder_8bit/FA8bit/FA5/sum
add wave -noupdate -expand -group F5 -color {Cornflower Blue} /test_fulladder_8bit/FA8bit/FA5/c_out
add wave -noupdate -expand -group FA6 -color {Dark Orchid} /test_fulladder_8bit/FA8bit/FA6/a
add wave -noupdate -expand -group FA6 -color {Dark Orchid} /test_fulladder_8bit/FA8bit/FA6/b
add wave -noupdate -expand -group FA6 -color {Dark Orchid} /test_fulladder_8bit/FA8bit/FA6/c_in
add wave -noupdate -expand -group FA6 -color {Dark Orchid} /test_fulladder_8bit/FA8bit/FA6/sum
add wave -noupdate -expand -group FA6 -color {Dark Orchid} /test_fulladder_8bit/FA8bit/FA6/c_out
add wave -noupdate -expand -group FA7 -color {Slate Blue} /test_fulladder_8bit/FA8bit/FA7/a
add wave -noupdate -expand -group FA7 -color {Slate Blue} /test_fulladder_8bit/FA8bit/FA7/b
add wave -noupdate -expand -group FA7 -color {Slate Blue} /test_fulladder_8bit/FA8bit/FA7/c_in
add wave -noupdate -expand -group FA7 -color {Slate Blue} /test_fulladder_8bit/FA8bit/FA7/sum
add wave -noupdate -expand -group FA7 -color {Slate Blue} /test_fulladder_8bit/FA8bit/FA7/c_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6545 ps} 0}
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
WaveRestoreZoom {0 ps} {20 ns}

run $2 ns