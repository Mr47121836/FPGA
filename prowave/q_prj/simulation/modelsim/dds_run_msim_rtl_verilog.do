transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/trl {C:/Users/lenovo/Desktop/work/exp11/trl/dds.v}
vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/ip_core/rom_wave {C:/Users/lenovo/Desktop/work/exp11/q_prj/ip_core/rom_wave/rom_wave.v}

vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim {C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim/tb_dds.v}
vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/../trl {C:/Users/lenovo/Desktop/work/exp11/q_prj/../trl/tb_f_word_set.v}
vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim {C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim/tb_key_ctl.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_dds

add wave *
view structure
view signals
run -all
