transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/SIMON JALIL/Documents/FACULTAD/5_Ano/Sistemas Digitales Avanzados - FPGA/Laboratorios/Laboratorio_5/cont_bin/cont_bin.vhd}

vcom -93 -work work {C:/Users/SIMON JALIL/Documents/FACULTAD/5_Ano/Sistemas Digitales Avanzados - FPGA/Laboratorios/Laboratorio_5/cont_bin/tb_cont_bin.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_cont_bin

add wave *
view structure
view signals
run -all
