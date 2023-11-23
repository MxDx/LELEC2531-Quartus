transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor {C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor/MyARM_MultiCycle.sv}
vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor {C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor/MyDE0_Nano.sv}

vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor {C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor/MyTestbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  MyTestbench

do C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_MultiCycleProcessor/simulation/modelsim/wave.do
