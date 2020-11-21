transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Memoria_ROM/pkg_rom.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/FSM_Memoria/FSM_Memoria.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Contador_memoria/Contador_memoria.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Memoria_ROM/Memoria_ROM.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Punto_B/Punto_B.vhd}

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Punto_B/tb_Punto_B.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_Punto_B

add wave *
view structure
view signals
run -all
