transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/prj_FPGA {C:/prj_FPGA/uart_string_loopback.v}
vlog -vlog01compat -work work +incdir+C:/prj_FPGA {C:/prj_FPGA/uart_rx.v}
vlog -vlog01compat -work work +incdir+C:/prj_FPGA {C:/prj_FPGA/uart_tx.v}

