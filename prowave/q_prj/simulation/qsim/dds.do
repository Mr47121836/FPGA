onerror {quit -f}
vlib work
vlog -work work dds.vo
vlog -work work dds.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.view_vlg_vec_tst
vcd file -direction dds.msim.vcd
vcd add -internal view_vlg_vec_tst/*
vcd add -internal view_vlg_vec_tst/i1/*
add wave /*
run -all
