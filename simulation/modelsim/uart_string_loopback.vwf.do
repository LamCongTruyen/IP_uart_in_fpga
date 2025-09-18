vlog -work work uart_string_loopback.vwf.vt
vsim -voptargs=+acc -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.uart_string_loopback_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
