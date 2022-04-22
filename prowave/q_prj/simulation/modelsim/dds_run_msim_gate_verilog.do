transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {dds.vo}

vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/../trl {C:/Users/lenovo/Desktop/work/exp11/q_prj/../trl/tb_f_word_set.v}
vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim {C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim/tb_dds.v}
vlog -vlog01compat -work work +incdir+C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim {C:/Users/lenovo/Desktop/work/exp11/q_prj/../sim/tb_key_ctl.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_f_word_set

add wave *
view structure
view signals
run -all
