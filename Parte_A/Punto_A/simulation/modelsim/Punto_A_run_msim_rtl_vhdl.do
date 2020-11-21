transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/Reg_despl/Reg_Despl.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/FSM_Reg_Despl/FSM_Reg_Despl.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/cont_bin/cont_bin.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/FFD/FFD.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/Punto_A/Punto_A.vhd}

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/Punto_A/tb_Punto_A.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_Punto_A

add wave *
view structure
view signals
run -all
