transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle {C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle/MySPI.sv}
vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle {C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle/MyDE0_Nano.sv}
vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle {C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle/MyARM_SingleCycle.sv}

vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle {C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle/MyTestbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  dut

do C:/Users/maxim/Documents/Master1/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Homework/Homework_6/Quartus-SingleCycle/simulation/modelsim/wave.do
