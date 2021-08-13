onerror {quit -f}
vlib work
vlog -work work ShiftLight.vo
vlog -work work ShiftLight.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ShiftLight_vlg_vec_tst
vcd file -direction ShiftLight.msim.vcd
vcd add -internal ShiftLight_vlg_vec_tst/*
vcd add -internal ShiftLight_vlg_vec_tst/i1/*
add wave /*
run -all
