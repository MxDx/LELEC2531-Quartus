transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_ALU {C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_ALU/MyALU.sv}

vlog -sv -work work +incdir+C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_ALU {C:/Users/maxim/Documents/Master1/LELEC2531-Quartus/Interro/Interro2/2022/LELEC2531_ALU/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  myTests

add wave *
view structure
view signals
run -all
