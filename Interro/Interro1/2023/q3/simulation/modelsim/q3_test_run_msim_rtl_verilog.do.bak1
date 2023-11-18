transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/maxim/Documents/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Interro/Interro1/2023/q3 {C:/Users/maxim/Documents/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Interro/Interro1/2023/q3/q3_test.sv}

vlog -sv -work work +incdir+C:/Users/maxim/Documents/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Interro/Interro1/2023/q3 {C:/Users/maxim/Documents/LELEC2531---Design-and-architecture-of-digital-electronic-systems/Interro/Interro1/2023/q3/q3_test_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench_3

add wave *
view structure
view signals
run -all
