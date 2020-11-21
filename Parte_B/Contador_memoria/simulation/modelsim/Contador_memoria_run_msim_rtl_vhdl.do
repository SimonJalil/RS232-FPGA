transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/Sistemas Digitales Avanzados/Laboratorios/Laboratorio_5/Punto_B/Contador_memoria/Contador_memoria.vhd}

vcom -93 -work work {/home/simon/Documentos/Sistemas Digitales Avanzados/Laboratorios/Laboratorio_5/Punto_B/Contador_memoria/tb_Contador_memoria.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_Contador_memoria

add wave *
view structure
view signals
run -all
