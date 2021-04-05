transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/UART_RX/UART_RX.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Receptor/rx.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_B/Memoria_ROM/pkg_rom.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_B/FSM_Memoria/FSM_Memoria.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_B/Contador_memoria/Contador_memoria.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/Punto_A/Punto_A.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/Reg_despl/Reg_Despl.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/FSM_Reg_Despl/FSM_Reg_Despl.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/FFD/FFD.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_A/cont_bin/cont_bin.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/cont_bin_lcd.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/LCD.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/FSM_LCD.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/RS_232/componentes/Mux_habilitacion.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/RS_232/componentes/sincronizador.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/RS_232/componentes/divisores.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/RS_232/componentes/antirrebote.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_B/Punto_B/Punto_B.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/Parte_B/Memoria_ROM/Memoria_ROM.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/RS_232/RS_232.vhd}

vcom -93 -work work {/home/simon/Documentos/FACULTAD_linux/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/RS_232/tb_RS_232.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_RS_232

add wave *
view structure
view signals
run -all
