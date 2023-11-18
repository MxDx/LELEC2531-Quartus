transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/delacroixmax/Downloads/lab2 {C:/Users/delacroixmax/Downloads/lab2/my_sync_design.sv}

vlog -sv -work work +incdir+C:/Users/delacroixmax/Downloads/lab2 {C:/Users/delacroixmax/Downloads/lab2/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  my_wonderful_testbench

do C:/Users/delacroixmax/Downloads/lab2/simulation/modelsim/wave.do
