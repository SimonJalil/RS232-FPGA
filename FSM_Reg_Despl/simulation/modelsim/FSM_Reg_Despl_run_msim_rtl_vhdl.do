transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/Sistemas Digitales Avanzados/Laboratorios/Laboratorio_5/Punto_A/FSM_Reg_Despl/FSM_Reg_Despl.vhd}

vcom -93 -work work {/home/simon/Documentos/Sistemas Digitales Avanzados/Laboratorios/Laboratorio_5/Punto_A/FSM_Reg_Despl/tb_FSM_Reg_Despl.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_FSM_Reg_Despl

add wave *
view structure
view signals
run -all
