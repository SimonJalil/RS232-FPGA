-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/03/2021 18:13:50"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RS_232 IS
    PORT (
	entry : IN std_logic_vector(4 DOWNTO 0);
	reset_low : IN std_logic;
	clk : IN std_logic;
	clk_select : IN std_logic_vector(1 DOWNTO 0);
	rx_serial : IN std_logic;
	salida : BUFFER std_logic;
	rw : BUFFER std_logic;
	rs : BUFFER std_logic;
	e : BUFFER std_logic;
	db : BUFFER std_logic_vector(7 DOWNTO 0);
	clk_en_uso : BUFFER std_logic;
	address : BUFFER std_logic_vector(5 DOWNTO 0);
	cont_finished : BUFFER std_logic;
	enviado_MEF1 : BUFFER std_logic;
	enviar : BUFFER std_logic;
	ASCII : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END RS_232;

-- Design Ports Information
-- salida	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[6]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- db[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_en_uso	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont_finished	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviado_MEF1	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviar	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[7]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[8]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[9]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASCII[10]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_select[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_select[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_low	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_serial	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entry[4]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RS_232 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entry : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_reset_low : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rx_serial : std_logic;
SIGNAL ww_salida : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_db : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_en_uso : std_logic;
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_cont_finished : std_logic;
SIGNAL ww_enviado_MEF1 : std_logic;
SIGNAL ww_enviar : std_logic;
SIGNAL ww_ASCII : std_logic_vector(10 DOWNTO 0);
SIGNAL \Parte_B|FSM|current_state.memoria~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Multiplexer|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Parte_B|FSM|current_state.contador~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mod_lcd|fsm|e~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \db[0]~output_o\ : std_logic;
SIGNAL \db[1]~output_o\ : std_logic;
SIGNAL \db[2]~output_o\ : std_logic;
SIGNAL \db[3]~output_o\ : std_logic;
SIGNAL \db[4]~output_o\ : std_logic;
SIGNAL \db[5]~output_o\ : std_logic;
SIGNAL \db[6]~output_o\ : std_logic;
SIGNAL \db[7]~output_o\ : std_logic;
SIGNAL \clk_en_uso~output_o\ : std_logic;
SIGNAL \cont_finished~output_o\ : std_logic;
SIGNAL \enviado_MEF1~output_o\ : std_logic;
SIGNAL \enviar~output_o\ : std_logic;
SIGNAL \ASCII[0]~output_o\ : std_logic;
SIGNAL \ASCII[1]~output_o\ : std_logic;
SIGNAL \ASCII[2]~output_o\ : std_logic;
SIGNAL \ASCII[3]~output_o\ : std_logic;
SIGNAL \ASCII[4]~output_o\ : std_logic;
SIGNAL \ASCII[5]~output_o\ : std_logic;
SIGNAL \ASCII[6]~output_o\ : std_logic;
SIGNAL \ASCII[7]~output_o\ : std_logic;
SIGNAL \ASCII[8]~output_o\ : std_logic;
SIGNAL \ASCII[9]~output_o\ : std_logic;
SIGNAL \ASCII[10]~output_o\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \clk_select[1]~input_o\ : std_logic;
SIGNAL \clk_select[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Clock|count_0[0]~13_combout\ : std_logic;
SIGNAL \Clock|count_0[0]~14\ : std_logic;
SIGNAL \Clock|count_0[1]~15_combout\ : std_logic;
SIGNAL \Clock|count_0[1]~16\ : std_logic;
SIGNAL \Clock|count_0[2]~17_combout\ : std_logic;
SIGNAL \Clock|count_0[2]~18\ : std_logic;
SIGNAL \Clock|count_0[3]~19_combout\ : std_logic;
SIGNAL \Clock|count_0[3]~20\ : std_logic;
SIGNAL \Clock|count_0[4]~21_combout\ : std_logic;
SIGNAL \Clock|count_0[4]~22\ : std_logic;
SIGNAL \Clock|count_0[5]~23_combout\ : std_logic;
SIGNAL \Clock|count_0[5]~24\ : std_logic;
SIGNAL \Clock|count_0[6]~25_combout\ : std_logic;
SIGNAL \Clock|count_0[6]~26\ : std_logic;
SIGNAL \Clock|count_0[7]~27_combout\ : std_logic;
SIGNAL \Clock|count_0[7]~28\ : std_logic;
SIGNAL \Clock|count_0[8]~29_combout\ : std_logic;
SIGNAL \Clock|count_0[8]~30\ : std_logic;
SIGNAL \Clock|count_0[9]~31_combout\ : std_logic;
SIGNAL \Clock|count_0[9]~32\ : std_logic;
SIGNAL \Clock|count_0[10]~33_combout\ : std_logic;
SIGNAL \Clock|count_0[10]~34\ : std_logic;
SIGNAL \Clock|count_0[11]~35_combout\ : std_logic;
SIGNAL \Clock|count_0[11]~36\ : std_logic;
SIGNAL \Clock|count_0[12]~37_combout\ : std_logic;
SIGNAL \Clock|LessThan0~0_combout\ : std_logic;
SIGNAL \Clock|LessThan0~1_combout\ : std_logic;
SIGNAL \Clock|LessThan0~2_combout\ : std_logic;
SIGNAL \Clock|clk_state_0~0_combout\ : std_logic;
SIGNAL \Clock|clk_state_0~q\ : std_logic;
SIGNAL \Clock|count_1[0]~12_combout\ : std_logic;
SIGNAL \Clock|count_1[0]~13\ : std_logic;
SIGNAL \Clock|count_1[1]~14_combout\ : std_logic;
SIGNAL \Clock|count_1[1]~15\ : std_logic;
SIGNAL \Clock|count_1[2]~16_combout\ : std_logic;
SIGNAL \Clock|count_1[2]~17\ : std_logic;
SIGNAL \Clock|count_1[3]~18_combout\ : std_logic;
SIGNAL \Clock|count_1[3]~19\ : std_logic;
SIGNAL \Clock|count_1[4]~20_combout\ : std_logic;
SIGNAL \Clock|count_1[4]~21\ : std_logic;
SIGNAL \Clock|count_1[5]~22_combout\ : std_logic;
SIGNAL \Clock|count_1[5]~23\ : std_logic;
SIGNAL \Clock|count_1[6]~24_combout\ : std_logic;
SIGNAL \Clock|count_1[6]~25\ : std_logic;
SIGNAL \Clock|count_1[7]~26_combout\ : std_logic;
SIGNAL \Clock|count_1[7]~27\ : std_logic;
SIGNAL \Clock|count_1[8]~28_combout\ : std_logic;
SIGNAL \Clock|count_1[8]~29\ : std_logic;
SIGNAL \Clock|count_1[9]~30_combout\ : std_logic;
SIGNAL \Clock|count_1[9]~31\ : std_logic;
SIGNAL \Clock|count_1[10]~32_combout\ : std_logic;
SIGNAL \Clock|LessThan1~0_combout\ : std_logic;
SIGNAL \Clock|LessThan1~1_combout\ : std_logic;
SIGNAL \Clock|count_1[10]~33\ : std_logic;
SIGNAL \Clock|count_1[11]~34_combout\ : std_logic;
SIGNAL \Clock|LessThan1~2_combout\ : std_logic;
SIGNAL \Clock|clk_state_1~0_combout\ : std_logic;
SIGNAL \Clock|clk_state_1~q\ : std_logic;
SIGNAL \Multiplexer|Mux0~0_combout\ : std_logic;
SIGNAL \Clock|count_3[0]~8_combout\ : std_logic;
SIGNAL \Clock|count_3[0]~9\ : std_logic;
SIGNAL \Clock|count_3[1]~10_combout\ : std_logic;
SIGNAL \Clock|count_3[1]~11\ : std_logic;
SIGNAL \Clock|count_3[2]~12_combout\ : std_logic;
SIGNAL \Clock|count_3[2]~13\ : std_logic;
SIGNAL \Clock|count_3[3]~14_combout\ : std_logic;
SIGNAL \Clock|count_3[3]~15\ : std_logic;
SIGNAL \Clock|count_3[4]~16_combout\ : std_logic;
SIGNAL \Clock|count_3[4]~17\ : std_logic;
SIGNAL \Clock|count_3[5]~18_combout\ : std_logic;
SIGNAL \Clock|LessThan3~1_combout\ : std_logic;
SIGNAL \Clock|count_3[5]~19\ : std_logic;
SIGNAL \Clock|count_3[6]~20_combout\ : std_logic;
SIGNAL \Clock|count_3[6]~21\ : std_logic;
SIGNAL \Clock|count_3[7]~22_combout\ : std_logic;
SIGNAL \Clock|LessThan3~0_combout\ : std_logic;
SIGNAL \Clock|LessThan3~2_combout\ : std_logic;
SIGNAL \Clock|clk_state_3~0_combout\ : std_logic;
SIGNAL \Clock|clk_state_3~q\ : std_logic;
SIGNAL \Clock|count_2[0]~10_combout\ : std_logic;
SIGNAL \Clock|count_2[0]~11\ : std_logic;
SIGNAL \Clock|count_2[1]~12_combout\ : std_logic;
SIGNAL \Clock|count_2[1]~13\ : std_logic;
SIGNAL \Clock|count_2[2]~14_combout\ : std_logic;
SIGNAL \Clock|count_2[2]~15\ : std_logic;
SIGNAL \Clock|count_2[3]~16_combout\ : std_logic;
SIGNAL \Clock|count_2[3]~17\ : std_logic;
SIGNAL \Clock|count_2[4]~18_combout\ : std_logic;
SIGNAL \Clock|count_2[4]~19\ : std_logic;
SIGNAL \Clock|count_2[5]~20_combout\ : std_logic;
SIGNAL \Clock|count_2[5]~21\ : std_logic;
SIGNAL \Clock|count_2[6]~22_combout\ : std_logic;
SIGNAL \Clock|count_2[6]~23\ : std_logic;
SIGNAL \Clock|count_2[7]~24_combout\ : std_logic;
SIGNAL \Clock|count_2[7]~25\ : std_logic;
SIGNAL \Clock|count_2[8]~26_combout\ : std_logic;
SIGNAL \Clock|count_2[8]~27\ : std_logic;
SIGNAL \Clock|count_2[9]~28_combout\ : std_logic;
SIGNAL \Clock|LessThan2~0_combout\ : std_logic;
SIGNAL \Clock|LessThan2~1_combout\ : std_logic;
SIGNAL \Clock|LessThan2~2_combout\ : std_logic;
SIGNAL \Clock|clk_state_2~0_combout\ : std_logic;
SIGNAL \Clock|clk_state_2~q\ : std_logic;
SIGNAL \Multiplexer|Mux0~combout\ : std_logic;
SIGNAL \Multiplexer|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.idle~feeder_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.idle~q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Cont|cont[0]~3_combout\ : std_logic;
SIGNAL \Parte_A|FSM|Selector1~0_combout\ : std_logic;
SIGNAL \Parte_A|FSM|current_state.cont_down~q\ : std_logic;
SIGNAL \Parte_A|Cont|cont[2]~2_combout\ : std_logic;
SIGNAL \Parte_A|Cont|cont~0_combout\ : std_logic;
SIGNAL \Parte_A|Cont|cont~1_combout\ : std_logic;
SIGNAL \Parte_A|Cont|Equal0~0_combout\ : std_logic;
SIGNAL \Parte_A|Cont|bus_out~0_combout\ : std_logic;
SIGNAL \Parte_A|Cont|bus_out~q\ : std_logic;
SIGNAL \Parte_A|FSM|next_state.finished~0_combout\ : std_logic;
SIGNAL \Parte_A|FSM|current_state.finished~q\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.espera~0_combout\ : std_logic;
SIGNAL \entry[2]~input_o\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|cont~0_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|cont[3]~2_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|cont~4_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|cont~3_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|Add0~0_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|cont~1_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|y~0_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|y~1_combout\ : std_logic;
SIGNAL \antirrebotes:2:antirreb|y~q\ : std_logic;
SIGNAL \sincronizadores:2:sinc|meta~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:2:sinc|meta~q\ : std_logic;
SIGNAL \sincronizadores:2:sinc|syncin~q\ : std_logic;
SIGNAL \entry[1]~input_o\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|cont~0_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|cont[0]~2_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|cont~4_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|cont~3_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|Add0~0_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|cont~1_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|y~0_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|y~1_combout\ : std_logic;
SIGNAL \antirrebotes:1:antirreb|y~q\ : std_logic;
SIGNAL \sincronizadores:1:sinc|meta~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:1:sinc|meta~q\ : std_logic;
SIGNAL \sincronizadores:1:sinc|syncin~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:1:sinc|syncin~q\ : std_logic;
SIGNAL \entry[3]~input_o\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|cont~0_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|cont[3]~2_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|cont~4_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|cont~3_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|Add0~0_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|cont~1_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|y~0_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|y~1_combout\ : std_logic;
SIGNAL \antirrebotes:3:antirreb|y~q\ : std_logic;
SIGNAL \sincronizadores:3:sinc|meta~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:3:sinc|meta~q\ : std_logic;
SIGNAL \sincronizadores:3:sinc|syncin~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:3:sinc|syncin~q\ : std_logic;
SIGNAL \entry[4]~input_o\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|cont~0_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|cont[3]~2_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|cont~4_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|cont~3_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|Add0~0_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|cont~1_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|y~0_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|y~1_combout\ : std_logic;
SIGNAL \antirrebotes:4:antirreb|y~q\ : std_logic;
SIGNAL \sincronizadores:4:sinc|meta~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:4:sinc|meta~q\ : std_logic;
SIGNAL \sincronizadores:4:sinc|syncin~q\ : std_logic;
SIGNAL \entry[0]~input_o\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|cont~0_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|cont[3]~2_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|cont~4_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|cont~3_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|Add0~0_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|cont~1_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|y~0_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|y~1_combout\ : std_logic;
SIGNAL \antirrebotes:0:antirreb|y~q\ : std_logic;
SIGNAL \sincronizadores:0:sinc|meta~feeder_combout\ : std_logic;
SIGNAL \sincronizadores:0:sinc|meta~q\ : std_logic;
SIGNAL \sincronizadores:0:sinc|syncin~q\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.contador~clkctrl_outclk\ : std_logic;
SIGNAL \Parte_B|Contador|cont[0]~7_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Mux0~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_4~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.entrada_4~q\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_1~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.entrada_1~q\ : std_logic;
SIGNAL \Parte_B|Contador|Mux0~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_0~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_3~4_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.entrada_3~q\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_0~1_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.entrada_0~q\ : std_logic;
SIGNAL \Parte_B|Contador|Mux4~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux2~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux2~1_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux1~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux3~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux0~1_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[0]~6_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[0]~15_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[0]~8\ : std_logic;
SIGNAL \Parte_B|Contador|cont[1]~9_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[1]~10\ : std_logic;
SIGNAL \Parte_B|Contador|cont[2]~11_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[2]~12\ : std_logic;
SIGNAL \Parte_B|Contador|cont[3]~13_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[3]~14\ : std_logic;
SIGNAL \Parte_B|Contador|cont[4]~16_combout\ : std_logic;
SIGNAL \Parte_B|Contador|cont[4]~17\ : std_logic;
SIGNAL \Parte_B|Contador|cont[5]~18_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~1_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~2_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~3_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~4_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~5_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~6_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~7_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contador~8_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contTosend_ready~feeder_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contTosend_ready~q\ : std_logic;
SIGNAL \Parte_B|FSM|Selector0~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Mux0~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Mux0~2_combout\ : std_logic;
SIGNAL \Parte_B|FSM|Selector0~1_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.ready~feeder_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.ready~q\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_2~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|next_state.entrada_2~1_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.entrada_2~q\ : std_logic;
SIGNAL \Parte_B|FSM|Selector1~1_combout\ : std_logic;
SIGNAL \Parte_B|FSM|Selector1~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|Selector1~2_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.contador~q\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.memoria~feeder_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.memoria~q\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.start~feeder_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.start~q\ : std_logic;
SIGNAL \Parte_B|FSM|Selector2~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.espera~q\ : std_logic;
SIGNAL \Parte_A|FSM|next_state.load_shift~0_combout\ : std_logic;
SIGNAL \Parte_A|FSM|current_state.load_shift~q\ : std_logic;
SIGNAL \Parte_B|FSM|current_state.memoria~clkctrl_outclk\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~1\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~3\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~4_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[2]~3_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~1\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~2_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[2]~4_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~2_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[1]~1_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[1]~2_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux7~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Mux7~1_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[5]~6_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[5]~5_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~3\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~5\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~6_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add0~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[4]~10_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~5\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~7\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~8_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[4]~11_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[4]~12_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux5~7_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[0]~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[0]~en_q\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~6_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[3]~8_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~4_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[3]~7_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[3]~9_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~7\ : std_logic;
SIGNAL \Parte_B|Contador|Add2~8_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[5]~13_combout\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~9\ : std_logic;
SIGNAL \Parte_B|Contador|Add1~10_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[5]~14_combout\ : std_logic;
SIGNAL \Parte_B|Contador|contToaddress_out[5]~15_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux5~8_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux5~5_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux5~11_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux5~12_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux1~7_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux1~5_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux1~8_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux1~11_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux1~12_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux2~7_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux2~8_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux2~5_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux2~11_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux2~12_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux4~7_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux4~8_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux4~5_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux4~11_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux4~12_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux6~2_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux6~3_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux6~4_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux0~14_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux0~15_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux0~12_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux0~13_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux0~11_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux3~14_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux3~15_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux3~9_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux3~10_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux3~8_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|Mux3~13_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|bit_test~0_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|bit_test~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:0:primero:priff|q~3_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:0:primero:priff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:0:primero:priff|q~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:1:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:1:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:1:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:2:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:2:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:2:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|dato_ok[3]~feeder_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:3:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:3:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:3:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|dato_ok[4]~feeder_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:4:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:4:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:4:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|dato_ok[5]~feeder_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:5:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:5:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:5:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|dato_ok[6]~feeder_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:6:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:6:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:6:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:7:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:7:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:7:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_B|Memoria|dato_ok[8]~feeder_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:8:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:8:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:8:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:9:medios:medff|q~1_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:9:medios:medff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:9:medios:medff|q~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~3_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~_emulated_q\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[14]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[0]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~1\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[1]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~3\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~4_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[2]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~5\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~6_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[3]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~7\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~8_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[4]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~9\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~10_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|cont~5_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[5]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~11\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~12_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[6]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~13\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~14_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|cont~4_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[7]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~15\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~16_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[8]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~17\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~18_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|cont~3_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[9]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~19\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~20_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|cont~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[10]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~21\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~22_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[11]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~23\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~24_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[12]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~25\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~26_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[13]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~27\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~28_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|cont~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[15]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~29\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~30_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Equal0~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Equal0~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Equal0~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Equal0~3_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Equal0~4_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|cont~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|clock:cont[16]~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~31\ : std_logic;
SIGNAL \mod_lcd|fsm|Add0~32_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|e~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|e~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|e~q\ : std_logic;
SIGNAL \mod_lcd|fsm|e~clkctrl_outclk\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet1~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet1~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet2~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet2~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet3~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet3~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.FunctionSet4~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ClearDisplay1~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.DisplayControl~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.EntryMode~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|nx_proc:flag~combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~0_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~12_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Mux1~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|next_state.Write1~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write1~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write2~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write3~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write3~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write4~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write5~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write5~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write6~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write6~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write7~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write7~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write8~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write8~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write9~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write9~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write10~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write11~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write12~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write13~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write13~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ReturnHome1~q\ : std_logic;
SIGNAL \mod_lcd|fsm|next_state.ClearDisplay3~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ClearDisplay3~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector5~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector5~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write24~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write25~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write26~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write27~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write28~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ReturnHome2~q\ : std_logic;
SIGNAL \mod_lcd|fsm|next_state.ClearDisplay4~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ClearDisplay4~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write29~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write30~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write31~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write32~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write33~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ReturnHome3~q\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr26~0_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~1\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~2_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~3\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~4_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~5\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~6_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~7\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~8_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~9\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~10_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~11\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~12_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~13\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~14_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~15\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~16_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~11_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~17\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~18_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~19\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~20_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~21\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~22_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~23\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~24_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~25\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~26_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~10_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~27\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~28_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~9_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~29\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~30_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~8_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~31\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~32_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~7_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~33\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~34_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~35\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~36_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~6_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~37\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~38_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~39\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~40_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~5_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~41\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~42_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~4_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~43\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~44_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~3_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~1_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~45\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~46_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~2_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~47\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~48_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~1_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~49\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~50_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~51\ : std_logic;
SIGNAL \mod_lcd|cont|Add0~52_combout\ : std_logic;
SIGNAL \mod_lcd|cont|cont~0_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~0_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~2_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~3_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~4_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~5_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~7_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~6_combout\ : std_logic;
SIGNAL \mod_lcd|cont|Equal0~8_combout\ : std_logic;
SIGNAL \mod_lcd|cont|bus_out~0_combout\ : std_logic;
SIGNAL \mod_lcd|cont|bus_out~q\ : std_logic;
SIGNAL \mod_lcd|fsm|next_state.ClearDisplay5~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ClearDisplay5~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector7~3_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector7~15_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write34~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write35~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write36~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.Write37~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ReturnHome4~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ReturnHome4~q\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector0~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector0~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.ClearDisplay2~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.rx1~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.rx2~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.rx3~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.rx4~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.rx4~q\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.SetAddress~feeder_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|current_state.SetAddress~q\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr12~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector17~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector17~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr13~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr25~combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector14~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector14~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector17~3_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector17~4_combout\ : std_logic;
SIGNAL \rx_serial~input_o\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[0]~9_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|LessThan0~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|LessThan0~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|LessThan0~2_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.stop~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.stop~q\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[8]~27_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Equal0~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Equal0~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector13~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector13~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.start~q\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector14~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[8]~28_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[8]~29_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[0]~10\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[1]~11_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[1]~12\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[2]~13_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[2]~14\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[3]~15_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[3]~16\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[4]~17_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[4]~18\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[5]~19_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[5]~20\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[6]~21_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[6]~22\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[7]~23_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[7]~24\ : std_logic;
SIGNAL \Receptor|t:0:uart|baud_cont[8]~25_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state~7_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.espera~q\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector12~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.idle~q\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector11~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector11~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector10~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector10~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.stop~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector14~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector14~2_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|state.data_bit~q\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector9~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector9~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Selector9~2_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~1_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[0]~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[0]~11_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Equal0~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Equal0~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Equal0~2_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector15~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector15~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.start~q\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector16~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector13~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector11~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector11~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector11~2_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.stop~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector16~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector16~2_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.data_bit~q\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.stop~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.stop~q\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[4]~33_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[4]~34_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[4]~35_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[0]~12\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[1]~13_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[1]~14\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[2]~15_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[2]~16\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[3]~17_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[3]~18\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[4]~19_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[4]~20\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[5]~21_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[5]~22\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[6]~23_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[6]~24\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[7]~25_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[7]~26\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[8]~27_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[8]~28\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[9]~29_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[9]~30\ : std_logic;
SIGNAL \Receptor|t:1:uart|baud_cont[10]~31_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|LessThan0~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|LessThan0~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|LessThan0~2_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state~7_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.espera~q\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector14~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|state.idle~q\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector12~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Selector12~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~1_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[0]~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[0]~14_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[4]~23\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[5]~24_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state~7_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.espera~q\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[9]~44_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[5]~25\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[6]~26_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[6]~27\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[7]~28_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[7]~29\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[8]~30_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[8]~31\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[9]~32_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[9]~33\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[10]~34_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[10]~35\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[11]~36_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[11]~37\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[12]~38_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[12]~39\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[13]~40_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|LessThan0~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|LessThan0~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|LessThan0~2_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector14~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector15~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector15~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector14~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector14~2_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.stop~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.stop~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.stop~q\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[9]~42_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[9]~43_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[0]~15\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[1]~16_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[1]~17\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[2]~18_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[2]~19\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[3]~20_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[3]~21\ : std_logic;
SIGNAL \Receptor|t:3:uart|baud_cont[4]~22_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Equal0~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Equal0~3_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Equal0~2_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Equal0~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Equal0~4_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector19~2_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector17~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.idle~q\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector18~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.start~q\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector19~3_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector19~4_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|state.data_bit~q\ : std_logic;
SIGNAL \Receptor|t:3:uart|Selector16~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[0]~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[0]~13_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[2]~39_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Equal0~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Equal0~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[11]~36\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[12]~37_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[2]~41_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Equal0~2_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Equal0~3_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector18~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[2]~40_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[0]~14\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[1]~15_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[1]~16\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[2]~17_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[2]~18\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[3]~19_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[3]~20\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[4]~21_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[4]~22\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[5]~23_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[5]~24\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[6]~25_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[6]~26\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[7]~27_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[7]~28\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[8]~29_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[8]~30\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[9]~31_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[9]~32\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[10]~33_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[10]~34\ : std_logic;
SIGNAL \Receptor|t:2:uart|baud_cont[11]~35_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|LessThan0~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|LessThan0~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|LessThan0~2_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector15~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector13~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector13~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector13~2_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.stop~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.stop~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.stop~q\ : std_logic;
SIGNAL \Receptor|t:2:uart|state~7_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.espera~q\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector16~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.idle~q\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector17~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.start~q\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector18~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector18~2_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|state.data_bit~q\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector14~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Selector14~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[0]~0_combout\ : std_logic;
SIGNAL \Receptor|Mux7~0_combout\ : std_logic;
SIGNAL \Receptor|Mux7~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector17~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector17~5_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~2_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[1]~1_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~2_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[1]~1_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~2_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[1]~1_combout\ : std_logic;
SIGNAL \Receptor|Mux6~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~2_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[1]~1_combout\ : std_logic;
SIGNAL \Receptor|Mux6~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector16~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector15~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector16~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector16~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector16~3_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector14~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector14~3_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~3_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[2]~2_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~3_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[2]~2_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~3_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[2]~2_combout\ : std_logic;
SIGNAL \Receptor|Mux5~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~3_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[2]~2_combout\ : std_logic;
SIGNAL \Receptor|Mux5~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector15~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector15~2_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~4_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[3]~3_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~4_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[3]~3_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~4_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[3]~3_combout\ : std_logic;
SIGNAL \Receptor|Mux4~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~4_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[3]~3_combout\ : std_logic;
SIGNAL \Receptor|Mux4~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector14~4_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector13~0_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector14~5_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr13~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector13~2_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~5_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[4]~4_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~5_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[4]~4_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~5_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[4]~4_combout\ : std_logic;
SIGNAL \Receptor|Mux3~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~5_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[4]~4_combout\ : std_logic;
SIGNAL \Receptor|Mux3~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector13~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector13~3_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~6_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[5]~5_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~6_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[5]~5_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~6_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[5]~5_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~6_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[5]~5_combout\ : std_logic;
SIGNAL \Receptor|Mux2~0_combout\ : std_logic;
SIGNAL \Receptor|Mux2~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr13~2_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr13~3_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector12~0_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~7_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[6]~6_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~7_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[6]~6_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~7_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[6]~6_combout\ : std_logic;
SIGNAL \Receptor|Mux1~0_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~7_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[6]~6_combout\ : std_logic;
SIGNAL \Receptor|Mux1~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|Decoder0~8_combout\ : std_logic;
SIGNAL \Receptor|t:3:uart|rx[7]~7_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|Decoder0~8_combout\ : std_logic;
SIGNAL \Receptor|t:2:uart|rx[7]~7_combout\ : std_logic;
SIGNAL \Receptor|Mux0~0_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|Decoder0~8_combout\ : std_logic;
SIGNAL \Receptor|t:1:uart|rx[7]~7_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|Decoder0~8_combout\ : std_logic;
SIGNAL \Receptor|t:0:uart|rx[7]~7_combout\ : std_logic;
SIGNAL \Receptor|Mux0~1_combout\ : std_logic;
SIGNAL \mod_lcd|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \Parte_B|Contador|opcion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \antirrebotes:4:antirreb|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \antirrebotes:3:antirreb|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \antirrebotes:2:antirreb|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock|count_3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clock|count_2\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \antirrebotes:1:antirreb|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock|count_1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Receptor|t:1:uart|baud_cont\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Receptor|t:3:uart|baud_cont\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \antirrebotes:0:antirreb|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock|count_0\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Receptor|t:3:uart|rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Parte_B|Contador|cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Receptor|t:0:uart|baud_cont\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mod_lcd|cont|cont\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Receptor|t:1:uart|rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Receptor|t:2:uart|baud_cont\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Receptor|t:2:uart|rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Receptor|t:0:uart|rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Parte_B|Contador|contToaddress_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Receptor|t:0:uart|bit_cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Parte_B|Memoria|dato_ok\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Receptor|t:1:uart|bit_cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Receptor|t:2:uart|bit_cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Receptor|t:3:uart|bit_cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Parte_A|Cont|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mod_lcd|fsm|ALT_INV_WideOr25~combout\ : std_logic;
SIGNAL \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\ : std_logic;
SIGNAL \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \Parte_B|FSM|ALT_INV_current_state.ready~q\ : std_logic;
SIGNAL \Parte_B|Contador|ALT_INV_contToaddress_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entry <= entry;
ww_reset_low <= reset_low;
ww_clk <= clk;
ww_clk_select <= clk_select;
ww_rx_serial <= rx_serial;
salida <= ww_salida;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
db <= ww_db;
clk_en_uso <= ww_clk_en_uso;
address <= ww_address;
cont_finished <= ww_cont_finished;
enviado_MEF1 <= ww_enviado_MEF1;
enviar <= ww_enviar;
ASCII <= ww_ASCII;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Parte_B|FSM|current_state.memoria~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Parte_B|FSM|current_state.memoria~q\);

\Multiplexer|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Multiplexer|Mux0~combout\);

\Parte_B|FSM|current_state.contador~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Parte_B|FSM|current_state.contador~q\);

\mod_lcd|fsm|e~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mod_lcd|fsm|e~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\mod_lcd|fsm|ALT_INV_WideOr25~combout\ <= NOT \mod_lcd|fsm|WideOr25~combout\;
\mod_lcd|fsm|ALT_INV_WideOr26~0_combout\ <= NOT \mod_lcd|fsm|WideOr26~0_combout\;
\Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\ <= NOT \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~0_combout\;
\Parte_B|FSM|ALT_INV_current_state.ready~q\ <= NOT \Parte_B|FSM|current_state.ready~q\;
\Parte_B|Contador|ALT_INV_contToaddress_out\(5) <= NOT \Parte_B|Contador|contToaddress_out\(5);
\Parte_B|Contador|ALT_INV_contToaddress_out\(4) <= NOT \Parte_B|Contador|contToaddress_out\(4);
\Parte_B|Contador|ALT_INV_contToaddress_out\(3) <= NOT \Parte_B|Contador|contToaddress_out\(3);
\Parte_B|Contador|ALT_INV_contToaddress_out\(2) <= NOT \Parte_B|Contador|contToaddress_out\(2);
\Parte_B|Contador|ALT_INV_contToaddress_out\(1) <= NOT \Parte_B|Contador|contToaddress_out\(1);
\Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\ <= NOT \Parte_B|Contador|contToaddress_out[0]~en_q\;
\Parte_B|Contador|ALT_INV_contToaddress_out\(0) <= NOT \Parte_B|Contador|contToaddress_out\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N16
\salida~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~2_combout\,
	oe => \Parte_B|FSM|current_state.idle~q\,
	devoe => ww_devoe,
	o => \salida~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|ALT_INV_contToaddress_out\(0),
	oe => \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|ALT_INV_contToaddress_out\(1),
	oe => \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|ALT_INV_contToaddress_out\(2),
	oe => \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|ALT_INV_contToaddress_out\(3),
	oe => \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|ALT_INV_contToaddress_out\(4),
	oe => \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|ALT_INV_contToaddress_out\(5),
	oe => \Parte_B|Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|ALT_INV_WideOr25~combout\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|e~q\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\db[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector17~5_combout\,
	devoe => ww_devoe,
	o => \db[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\db[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector16~3_combout\,
	devoe => ww_devoe,
	o => \db[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\db[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector15~2_combout\,
	devoe => ww_devoe,
	o => \db[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\db[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector14~5_combout\,
	devoe => ww_devoe,
	o => \db[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\db[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector13~3_combout\,
	devoe => ww_devoe,
	o => \db[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\db[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector12~0_combout\,
	devoe => ww_devoe,
	o => \db[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\db[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector11~0_combout\,
	devoe => ww_devoe,
	o => \db[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\db[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mod_lcd|fsm|Selector10~0_combout\,
	devoe => ww_devoe,
	o => \db[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\clk_en_uso~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexer|Mux0~combout\,
	devoe => ww_devoe,
	o => \clk_en_uso~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\cont_finished~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Contador|contTosend_ready~q\,
	devoe => ww_devoe,
	o => \cont_finished~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\enviado_MEF1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_A|FSM|current_state.finished~q\,
	devoe => ww_devoe,
	o => \enviado_MEF1~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\enviar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|FSM|current_state.start~q\,
	devoe => ww_devoe,
	o => \enviar~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ASCII[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ASCII[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\ASCII[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(1),
	devoe => ww_devoe,
	o => \ASCII[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\ASCII[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ASCII[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\ASCII[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(3),
	devoe => ww_devoe,
	o => \ASCII[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ASCII[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(4),
	devoe => ww_devoe,
	o => \ASCII[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ASCII[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(5),
	devoe => ww_devoe,
	o => \ASCII[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ASCII[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(6),
	devoe => ww_devoe,
	o => \ASCII[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\ASCII[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(7),
	devoe => ww_devoe,
	o => \ASCII[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\ASCII[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(8),
	devoe => ww_devoe,
	o => \ASCII[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\ASCII[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Parte_B|Memoria|dato_ok\(9),
	devoe => ww_devoe,
	o => \ASCII[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\ASCII[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ASCII[10]~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\reset_low~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_low,
	o => \reset_low~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\clk_select[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_select(1),
	o => \clk_select[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk_select[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_select(0),
	o => \clk_select[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y11_N2
\Clock|count_0[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[0]~13_combout\ = \Clock|count_0\(0) $ (VCC)
-- \Clock|count_0[0]~14\ = CARRY(\Clock|count_0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(0),
	datad => VCC,
	combout => \Clock|count_0[0]~13_combout\,
	cout => \Clock|count_0[0]~14\);

-- Location: FF_X10_Y11_N3
\Clock|count_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[0]~13_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(0));

-- Location: LCCOMB_X10_Y11_N4
\Clock|count_0[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[1]~15_combout\ = (\Clock|count_0\(1) & (!\Clock|count_0[0]~14\)) # (!\Clock|count_0\(1) & ((\Clock|count_0[0]~14\) # (GND)))
-- \Clock|count_0[1]~16\ = CARRY((!\Clock|count_0[0]~14\) # (!\Clock|count_0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(1),
	datad => VCC,
	cin => \Clock|count_0[0]~14\,
	combout => \Clock|count_0[1]~15_combout\,
	cout => \Clock|count_0[1]~16\);

-- Location: FF_X10_Y11_N5
\Clock|count_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[1]~15_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(1));

-- Location: LCCOMB_X10_Y11_N6
\Clock|count_0[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[2]~17_combout\ = (\Clock|count_0\(2) & (\Clock|count_0[1]~16\ $ (GND))) # (!\Clock|count_0\(2) & (!\Clock|count_0[1]~16\ & VCC))
-- \Clock|count_0[2]~18\ = CARRY((\Clock|count_0\(2) & !\Clock|count_0[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(2),
	datad => VCC,
	cin => \Clock|count_0[1]~16\,
	combout => \Clock|count_0[2]~17_combout\,
	cout => \Clock|count_0[2]~18\);

-- Location: FF_X10_Y11_N7
\Clock|count_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[2]~17_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(2));

-- Location: LCCOMB_X10_Y11_N8
\Clock|count_0[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[3]~19_combout\ = (\Clock|count_0\(3) & (!\Clock|count_0[2]~18\)) # (!\Clock|count_0\(3) & ((\Clock|count_0[2]~18\) # (GND)))
-- \Clock|count_0[3]~20\ = CARRY((!\Clock|count_0[2]~18\) # (!\Clock|count_0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(3),
	datad => VCC,
	cin => \Clock|count_0[2]~18\,
	combout => \Clock|count_0[3]~19_combout\,
	cout => \Clock|count_0[3]~20\);

-- Location: FF_X10_Y11_N9
\Clock|count_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[3]~19_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(3));

-- Location: LCCOMB_X10_Y11_N10
\Clock|count_0[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[4]~21_combout\ = (\Clock|count_0\(4) & (\Clock|count_0[3]~20\ $ (GND))) # (!\Clock|count_0\(4) & (!\Clock|count_0[3]~20\ & VCC))
-- \Clock|count_0[4]~22\ = CARRY((\Clock|count_0\(4) & !\Clock|count_0[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(4),
	datad => VCC,
	cin => \Clock|count_0[3]~20\,
	combout => \Clock|count_0[4]~21_combout\,
	cout => \Clock|count_0[4]~22\);

-- Location: FF_X10_Y11_N11
\Clock|count_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[4]~21_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(4));

-- Location: LCCOMB_X10_Y11_N12
\Clock|count_0[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[5]~23_combout\ = (\Clock|count_0\(5) & (!\Clock|count_0[4]~22\)) # (!\Clock|count_0\(5) & ((\Clock|count_0[4]~22\) # (GND)))
-- \Clock|count_0[5]~24\ = CARRY((!\Clock|count_0[4]~22\) # (!\Clock|count_0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(5),
	datad => VCC,
	cin => \Clock|count_0[4]~22\,
	combout => \Clock|count_0[5]~23_combout\,
	cout => \Clock|count_0[5]~24\);

-- Location: FF_X10_Y11_N13
\Clock|count_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[5]~23_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(5));

-- Location: LCCOMB_X10_Y11_N14
\Clock|count_0[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[6]~25_combout\ = (\Clock|count_0\(6) & (\Clock|count_0[5]~24\ $ (GND))) # (!\Clock|count_0\(6) & (!\Clock|count_0[5]~24\ & VCC))
-- \Clock|count_0[6]~26\ = CARRY((\Clock|count_0\(6) & !\Clock|count_0[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(6),
	datad => VCC,
	cin => \Clock|count_0[5]~24\,
	combout => \Clock|count_0[6]~25_combout\,
	cout => \Clock|count_0[6]~26\);

-- Location: FF_X10_Y11_N15
\Clock|count_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[6]~25_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(6));

-- Location: LCCOMB_X10_Y11_N16
\Clock|count_0[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[7]~27_combout\ = (\Clock|count_0\(7) & (!\Clock|count_0[6]~26\)) # (!\Clock|count_0\(7) & ((\Clock|count_0[6]~26\) # (GND)))
-- \Clock|count_0[7]~28\ = CARRY((!\Clock|count_0[6]~26\) # (!\Clock|count_0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(7),
	datad => VCC,
	cin => \Clock|count_0[6]~26\,
	combout => \Clock|count_0[7]~27_combout\,
	cout => \Clock|count_0[7]~28\);

-- Location: FF_X10_Y11_N17
\Clock|count_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[7]~27_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(7));

-- Location: LCCOMB_X10_Y11_N18
\Clock|count_0[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[8]~29_combout\ = (\Clock|count_0\(8) & (\Clock|count_0[7]~28\ $ (GND))) # (!\Clock|count_0\(8) & (!\Clock|count_0[7]~28\ & VCC))
-- \Clock|count_0[8]~30\ = CARRY((\Clock|count_0\(8) & !\Clock|count_0[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(8),
	datad => VCC,
	cin => \Clock|count_0[7]~28\,
	combout => \Clock|count_0[8]~29_combout\,
	cout => \Clock|count_0[8]~30\);

-- Location: FF_X10_Y11_N19
\Clock|count_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[8]~29_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(8));

-- Location: LCCOMB_X10_Y11_N20
\Clock|count_0[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[9]~31_combout\ = (\Clock|count_0\(9) & (!\Clock|count_0[8]~30\)) # (!\Clock|count_0\(9) & ((\Clock|count_0[8]~30\) # (GND)))
-- \Clock|count_0[9]~32\ = CARRY((!\Clock|count_0[8]~30\) # (!\Clock|count_0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(9),
	datad => VCC,
	cin => \Clock|count_0[8]~30\,
	combout => \Clock|count_0[9]~31_combout\,
	cout => \Clock|count_0[9]~32\);

-- Location: FF_X10_Y11_N21
\Clock|count_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[9]~31_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(9));

-- Location: LCCOMB_X10_Y11_N22
\Clock|count_0[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[10]~33_combout\ = (\Clock|count_0\(10) & (\Clock|count_0[9]~32\ $ (GND))) # (!\Clock|count_0\(10) & (!\Clock|count_0[9]~32\ & VCC))
-- \Clock|count_0[10]~34\ = CARRY((\Clock|count_0\(10) & !\Clock|count_0[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(10),
	datad => VCC,
	cin => \Clock|count_0[9]~32\,
	combout => \Clock|count_0[10]~33_combout\,
	cout => \Clock|count_0[10]~34\);

-- Location: FF_X10_Y11_N23
\Clock|count_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[10]~33_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(10));

-- Location: LCCOMB_X10_Y11_N24
\Clock|count_0[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[11]~35_combout\ = (\Clock|count_0\(11) & (!\Clock|count_0[10]~34\)) # (!\Clock|count_0\(11) & ((\Clock|count_0[10]~34\) # (GND)))
-- \Clock|count_0[11]~36\ = CARRY((!\Clock|count_0[10]~34\) # (!\Clock|count_0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_0\(11),
	datad => VCC,
	cin => \Clock|count_0[10]~34\,
	combout => \Clock|count_0[11]~35_combout\,
	cout => \Clock|count_0[11]~36\);

-- Location: FF_X10_Y11_N25
\Clock|count_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[11]~35_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(11));

-- Location: LCCOMB_X10_Y11_N26
\Clock|count_0[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_0[12]~37_combout\ = \Clock|count_0\(12) $ (!\Clock|count_0[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(12),
	cin => \Clock|count_0[11]~36\,
	combout => \Clock|count_0[12]~37_combout\);

-- Location: FF_X10_Y11_N27
\Clock|count_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_0[12]~37_combout\,
	sclr => \Clock|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_0\(12));

-- Location: LCCOMB_X10_Y11_N28
\Clock|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan0~0_combout\ = ((!\Clock|count_0\(5) & ((!\Clock|count_0\(3)) # (!\Clock|count_0\(4))))) # (!\Clock|count_0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(4),
	datab => \Clock|count_0\(3),
	datac => \Clock|count_0\(6),
	datad => \Clock|count_0\(5),
	combout => \Clock|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y11_N0
\Clock|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan0~1_combout\ = (!\Clock|count_0\(8) & (!\Clock|count_0\(7) & (!\Clock|count_0\(9) & \Clock|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(8),
	datab => \Clock|count_0\(7),
	datac => \Clock|count_0\(9),
	datad => \Clock|LessThan0~0_combout\,
	combout => \Clock|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y11_N30
\Clock|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan0~2_combout\ = (\Clock|count_0\(12) & ((\Clock|count_0\(11)) # ((\Clock|count_0\(10) & !\Clock|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_0\(10),
	datab => \Clock|count_0\(11),
	datac => \Clock|count_0\(12),
	datad => \Clock|LessThan0~1_combout\,
	combout => \Clock|LessThan0~2_combout\);

-- Location: LCCOMB_X9_Y11_N30
\Clock|clk_state_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|clk_state_0~0_combout\ = \Clock|clk_state_0~q\ $ (\Clock|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock|clk_state_0~q\,
	datad => \Clock|LessThan0~2_combout\,
	combout => \Clock|clk_state_0~0_combout\);

-- Location: FF_X9_Y11_N31
\Clock|clk_state_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Clock|clk_state_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|clk_state_0~q\);

-- Location: LCCOMB_X4_Y11_N0
\Clock|count_1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[0]~12_combout\ = \Clock|count_1\(0) $ (VCC)
-- \Clock|count_1[0]~13\ = CARRY(\Clock|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(0),
	datad => VCC,
	combout => \Clock|count_1[0]~12_combout\,
	cout => \Clock|count_1[0]~13\);

-- Location: FF_X4_Y11_N1
\Clock|count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[0]~12_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(0));

-- Location: LCCOMB_X4_Y11_N2
\Clock|count_1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[1]~14_combout\ = (\Clock|count_1\(1) & (!\Clock|count_1[0]~13\)) # (!\Clock|count_1\(1) & ((\Clock|count_1[0]~13\) # (GND)))
-- \Clock|count_1[1]~15\ = CARRY((!\Clock|count_1[0]~13\) # (!\Clock|count_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(1),
	datad => VCC,
	cin => \Clock|count_1[0]~13\,
	combout => \Clock|count_1[1]~14_combout\,
	cout => \Clock|count_1[1]~15\);

-- Location: FF_X4_Y11_N3
\Clock|count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[1]~14_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(1));

-- Location: LCCOMB_X4_Y11_N4
\Clock|count_1[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[2]~16_combout\ = (\Clock|count_1\(2) & (\Clock|count_1[1]~15\ $ (GND))) # (!\Clock|count_1\(2) & (!\Clock|count_1[1]~15\ & VCC))
-- \Clock|count_1[2]~17\ = CARRY((\Clock|count_1\(2) & !\Clock|count_1[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(2),
	datad => VCC,
	cin => \Clock|count_1[1]~15\,
	combout => \Clock|count_1[2]~16_combout\,
	cout => \Clock|count_1[2]~17\);

-- Location: FF_X4_Y11_N5
\Clock|count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[2]~16_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(2));

-- Location: LCCOMB_X4_Y11_N6
\Clock|count_1[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[3]~18_combout\ = (\Clock|count_1\(3) & (!\Clock|count_1[2]~17\)) # (!\Clock|count_1\(3) & ((\Clock|count_1[2]~17\) # (GND)))
-- \Clock|count_1[3]~19\ = CARRY((!\Clock|count_1[2]~17\) # (!\Clock|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(3),
	datad => VCC,
	cin => \Clock|count_1[2]~17\,
	combout => \Clock|count_1[3]~18_combout\,
	cout => \Clock|count_1[3]~19\);

-- Location: FF_X4_Y11_N7
\Clock|count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[3]~18_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(3));

-- Location: LCCOMB_X4_Y11_N8
\Clock|count_1[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[4]~20_combout\ = (\Clock|count_1\(4) & (\Clock|count_1[3]~19\ $ (GND))) # (!\Clock|count_1\(4) & (!\Clock|count_1[3]~19\ & VCC))
-- \Clock|count_1[4]~21\ = CARRY((\Clock|count_1\(4) & !\Clock|count_1[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(4),
	datad => VCC,
	cin => \Clock|count_1[3]~19\,
	combout => \Clock|count_1[4]~20_combout\,
	cout => \Clock|count_1[4]~21\);

-- Location: FF_X4_Y11_N9
\Clock|count_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[4]~20_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(4));

-- Location: LCCOMB_X4_Y11_N10
\Clock|count_1[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[5]~22_combout\ = (\Clock|count_1\(5) & (!\Clock|count_1[4]~21\)) # (!\Clock|count_1\(5) & ((\Clock|count_1[4]~21\) # (GND)))
-- \Clock|count_1[5]~23\ = CARRY((!\Clock|count_1[4]~21\) # (!\Clock|count_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(5),
	datad => VCC,
	cin => \Clock|count_1[4]~21\,
	combout => \Clock|count_1[5]~22_combout\,
	cout => \Clock|count_1[5]~23\);

-- Location: FF_X4_Y11_N11
\Clock|count_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[5]~22_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(5));

-- Location: LCCOMB_X4_Y11_N12
\Clock|count_1[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[6]~24_combout\ = (\Clock|count_1\(6) & (\Clock|count_1[5]~23\ $ (GND))) # (!\Clock|count_1\(6) & (!\Clock|count_1[5]~23\ & VCC))
-- \Clock|count_1[6]~25\ = CARRY((\Clock|count_1\(6) & !\Clock|count_1[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(6),
	datad => VCC,
	cin => \Clock|count_1[5]~23\,
	combout => \Clock|count_1[6]~24_combout\,
	cout => \Clock|count_1[6]~25\);

-- Location: FF_X4_Y11_N13
\Clock|count_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[6]~24_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(6));

-- Location: LCCOMB_X4_Y11_N14
\Clock|count_1[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[7]~26_combout\ = (\Clock|count_1\(7) & (!\Clock|count_1[6]~25\)) # (!\Clock|count_1\(7) & ((\Clock|count_1[6]~25\) # (GND)))
-- \Clock|count_1[7]~27\ = CARRY((!\Clock|count_1[6]~25\) # (!\Clock|count_1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(7),
	datad => VCC,
	cin => \Clock|count_1[6]~25\,
	combout => \Clock|count_1[7]~26_combout\,
	cout => \Clock|count_1[7]~27\);

-- Location: FF_X4_Y11_N15
\Clock|count_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[7]~26_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(7));

-- Location: LCCOMB_X4_Y11_N16
\Clock|count_1[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[8]~28_combout\ = (\Clock|count_1\(8) & (\Clock|count_1[7]~27\ $ (GND))) # (!\Clock|count_1\(8) & (!\Clock|count_1[7]~27\ & VCC))
-- \Clock|count_1[8]~29\ = CARRY((\Clock|count_1\(8) & !\Clock|count_1[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(8),
	datad => VCC,
	cin => \Clock|count_1[7]~27\,
	combout => \Clock|count_1[8]~28_combout\,
	cout => \Clock|count_1[8]~29\);

-- Location: FF_X4_Y11_N17
\Clock|count_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[8]~28_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(8));

-- Location: LCCOMB_X4_Y11_N18
\Clock|count_1[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[9]~30_combout\ = (\Clock|count_1\(9) & (!\Clock|count_1[8]~29\)) # (!\Clock|count_1\(9) & ((\Clock|count_1[8]~29\) # (GND)))
-- \Clock|count_1[9]~31\ = CARRY((!\Clock|count_1[8]~29\) # (!\Clock|count_1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_1\(9),
	datad => VCC,
	cin => \Clock|count_1[8]~29\,
	combout => \Clock|count_1[9]~30_combout\,
	cout => \Clock|count_1[9]~31\);

-- Location: FF_X4_Y11_N19
\Clock|count_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[9]~30_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(9));

-- Location: LCCOMB_X4_Y11_N20
\Clock|count_1[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[10]~32_combout\ = (\Clock|count_1\(10) & (\Clock|count_1[9]~31\ $ (GND))) # (!\Clock|count_1\(10) & (!\Clock|count_1[9]~31\ & VCC))
-- \Clock|count_1[10]~33\ = CARRY((\Clock|count_1\(10) & !\Clock|count_1[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(10),
	datad => VCC,
	cin => \Clock|count_1[9]~31\,
	combout => \Clock|count_1[10]~32_combout\,
	cout => \Clock|count_1[10]~33\);

-- Location: FF_X4_Y11_N21
\Clock|count_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[10]~32_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(10));

-- Location: LCCOMB_X4_Y11_N28
\Clock|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan1~0_combout\ = ((!\Clock|count_1\(4) & ((!\Clock|count_1\(3)) # (!\Clock|count_1\(2))))) # (!\Clock|count_1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(5),
	datab => \Clock|count_1\(2),
	datac => \Clock|count_1\(4),
	datad => \Clock|count_1\(3),
	combout => \Clock|LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y11_N30
\Clock|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan1~1_combout\ = (!\Clock|count_1\(8) & (!\Clock|count_1\(6) & (!\Clock|count_1\(7) & \Clock|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(8),
	datab => \Clock|count_1\(6),
	datac => \Clock|count_1\(7),
	datad => \Clock|LessThan1~0_combout\,
	combout => \Clock|LessThan1~1_combout\);

-- Location: LCCOMB_X4_Y11_N22
\Clock|count_1[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_1[11]~34_combout\ = \Clock|count_1\(11) $ (\Clock|count_1[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(11),
	cin => \Clock|count_1[10]~33\,
	combout => \Clock|count_1[11]~34_combout\);

-- Location: FF_X4_Y11_N23
\Clock|count_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_1[11]~34_combout\,
	sclr => \Clock|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_1\(11));

-- Location: LCCOMB_X4_Y11_N24
\Clock|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan1~2_combout\ = (\Clock|count_1\(11) & ((\Clock|count_1\(10)) # ((\Clock|count_1\(9) & !\Clock|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_1\(9),
	datab => \Clock|count_1\(10),
	datac => \Clock|LessThan1~1_combout\,
	datad => \Clock|count_1\(11),
	combout => \Clock|LessThan1~2_combout\);

-- Location: LCCOMB_X4_Y11_N26
\Clock|clk_state_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|clk_state_1~0_combout\ = \Clock|clk_state_1~q\ $ (\Clock|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock|clk_state_1~q\,
	datad => \Clock|LessThan1~2_combout\,
	combout => \Clock|clk_state_1~0_combout\);

-- Location: FF_X4_Y11_N27
\Clock|clk_state_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Clock|clk_state_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|clk_state_1~q\);

-- Location: LCCOMB_X9_Y11_N0
\Multiplexer|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexer|Mux0~0_combout\ = (\clk_select[1]~input_o\ & (\clk_select[0]~input_o\)) # (!\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\ & ((\Clock|clk_state_1~q\))) # (!\clk_select[0]~input_o\ & (\Clock|clk_state_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \clk_select[0]~input_o\,
	datac => \Clock|clk_state_0~q\,
	datad => \Clock|clk_state_1~q\,
	combout => \Multiplexer|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y11_N8
\Clock|count_3[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[0]~8_combout\ = \Clock|count_3\(0) $ (VCC)
-- \Clock|count_3[0]~9\ = CARRY(\Clock|count_3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_3\(0),
	datad => VCC,
	combout => \Clock|count_3[0]~8_combout\,
	cout => \Clock|count_3[0]~9\);

-- Location: FF_X9_Y11_N9
\Clock|count_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[0]~8_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(0));

-- Location: LCCOMB_X9_Y11_N10
\Clock|count_3[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[1]~10_combout\ = (\Clock|count_3\(1) & (!\Clock|count_3[0]~9\)) # (!\Clock|count_3\(1) & ((\Clock|count_3[0]~9\) # (GND)))
-- \Clock|count_3[1]~11\ = CARRY((!\Clock|count_3[0]~9\) # (!\Clock|count_3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_3\(1),
	datad => VCC,
	cin => \Clock|count_3[0]~9\,
	combout => \Clock|count_3[1]~10_combout\,
	cout => \Clock|count_3[1]~11\);

-- Location: FF_X9_Y11_N11
\Clock|count_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[1]~10_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(1));

-- Location: LCCOMB_X9_Y11_N12
\Clock|count_3[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[2]~12_combout\ = (\Clock|count_3\(2) & (\Clock|count_3[1]~11\ $ (GND))) # (!\Clock|count_3\(2) & (!\Clock|count_3[1]~11\ & VCC))
-- \Clock|count_3[2]~13\ = CARRY((\Clock|count_3\(2) & !\Clock|count_3[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_3\(2),
	datad => VCC,
	cin => \Clock|count_3[1]~11\,
	combout => \Clock|count_3[2]~12_combout\,
	cout => \Clock|count_3[2]~13\);

-- Location: FF_X9_Y11_N13
\Clock|count_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[2]~12_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(2));

-- Location: LCCOMB_X9_Y11_N14
\Clock|count_3[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[3]~14_combout\ = (\Clock|count_3\(3) & (!\Clock|count_3[2]~13\)) # (!\Clock|count_3\(3) & ((\Clock|count_3[2]~13\) # (GND)))
-- \Clock|count_3[3]~15\ = CARRY((!\Clock|count_3[2]~13\) # (!\Clock|count_3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_3\(3),
	datad => VCC,
	cin => \Clock|count_3[2]~13\,
	combout => \Clock|count_3[3]~14_combout\,
	cout => \Clock|count_3[3]~15\);

-- Location: FF_X9_Y11_N15
\Clock|count_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[3]~14_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(3));

-- Location: LCCOMB_X9_Y11_N16
\Clock|count_3[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[4]~16_combout\ = (\Clock|count_3\(4) & (\Clock|count_3[3]~15\ $ (GND))) # (!\Clock|count_3\(4) & (!\Clock|count_3[3]~15\ & VCC))
-- \Clock|count_3[4]~17\ = CARRY((\Clock|count_3\(4) & !\Clock|count_3[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_3\(4),
	datad => VCC,
	cin => \Clock|count_3[3]~15\,
	combout => \Clock|count_3[4]~16_combout\,
	cout => \Clock|count_3[4]~17\);

-- Location: FF_X9_Y11_N17
\Clock|count_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[4]~16_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(4));

-- Location: LCCOMB_X9_Y11_N18
\Clock|count_3[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[5]~18_combout\ = (\Clock|count_3\(5) & (!\Clock|count_3[4]~17\)) # (!\Clock|count_3\(5) & ((\Clock|count_3[4]~17\) # (GND)))
-- \Clock|count_3[5]~19\ = CARRY((!\Clock|count_3[4]~17\) # (!\Clock|count_3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_3\(5),
	datad => VCC,
	cin => \Clock|count_3[4]~17\,
	combout => \Clock|count_3[5]~18_combout\,
	cout => \Clock|count_3[5]~19\);

-- Location: FF_X9_Y11_N19
\Clock|count_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[5]~18_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(5));

-- Location: LCCOMB_X9_Y11_N4
\Clock|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan3~1_combout\ = ((!\Clock|count_3\(1) & (!\Clock|count_3\(0) & !\Clock|count_3\(2)))) # (!\Clock|count_3\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_3\(1),
	datab => \Clock|count_3\(3),
	datac => \Clock|count_3\(0),
	datad => \Clock|count_3\(2),
	combout => \Clock|LessThan3~1_combout\);

-- Location: LCCOMB_X9_Y11_N20
\Clock|count_3[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[6]~20_combout\ = (\Clock|count_3\(6) & (\Clock|count_3[5]~19\ $ (GND))) # (!\Clock|count_3\(6) & (!\Clock|count_3[5]~19\ & VCC))
-- \Clock|count_3[6]~21\ = CARRY((\Clock|count_3\(6) & !\Clock|count_3[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_3\(6),
	datad => VCC,
	cin => \Clock|count_3[5]~19\,
	combout => \Clock|count_3[6]~20_combout\,
	cout => \Clock|count_3[6]~21\);

-- Location: FF_X9_Y11_N21
\Clock|count_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[6]~20_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(6));

-- Location: LCCOMB_X9_Y11_N22
\Clock|count_3[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_3[7]~22_combout\ = \Clock|count_3[6]~21\ $ (\Clock|count_3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Clock|count_3\(7),
	cin => \Clock|count_3[6]~21\,
	combout => \Clock|count_3[7]~22_combout\);

-- Location: FF_X9_Y11_N23
\Clock|count_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_3[7]~22_combout\,
	sclr => \Clock|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_3\(7));

-- Location: LCCOMB_X9_Y11_N28
\Clock|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan3~0_combout\ = (!\Clock|count_3\(6)) # (!\Clock|count_3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock|count_3\(7),
	datad => \Clock|count_3\(6),
	combout => \Clock|LessThan3~0_combout\);

-- Location: LCCOMB_X9_Y11_N26
\Clock|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan3~2_combout\ = (!\Clock|LessThan3~0_combout\ & ((\Clock|count_3\(5)) # ((\Clock|count_3\(4) & !\Clock|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_3\(4),
	datab => \Clock|count_3\(5),
	datac => \Clock|LessThan3~1_combout\,
	datad => \Clock|LessThan3~0_combout\,
	combout => \Clock|LessThan3~2_combout\);

-- Location: LCCOMB_X9_Y11_N6
\Clock|clk_state_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|clk_state_3~0_combout\ = \Clock|clk_state_3~q\ $ (\Clock|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock|clk_state_3~q\,
	datad => \Clock|LessThan3~2_combout\,
	combout => \Clock|clk_state_3~0_combout\);

-- Location: FF_X9_Y11_N7
\Clock|clk_state_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Clock|clk_state_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|clk_state_3~q\);

-- Location: LCCOMB_X5_Y11_N4
\Clock|count_2[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[0]~10_combout\ = \Clock|count_2\(0) $ (VCC)
-- \Clock|count_2[0]~11\ = CARRY(\Clock|count_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_2\(0),
	datad => VCC,
	combout => \Clock|count_2[0]~10_combout\,
	cout => \Clock|count_2[0]~11\);

-- Location: FF_X5_Y11_N5
\Clock|count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[0]~10_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(0));

-- Location: LCCOMB_X5_Y11_N6
\Clock|count_2[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[1]~12_combout\ = (\Clock|count_2\(1) & (!\Clock|count_2[0]~11\)) # (!\Clock|count_2\(1) & ((\Clock|count_2[0]~11\) # (GND)))
-- \Clock|count_2[1]~13\ = CARRY((!\Clock|count_2[0]~11\) # (!\Clock|count_2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(1),
	datad => VCC,
	cin => \Clock|count_2[0]~11\,
	combout => \Clock|count_2[1]~12_combout\,
	cout => \Clock|count_2[1]~13\);

-- Location: FF_X5_Y11_N7
\Clock|count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[1]~12_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(1));

-- Location: LCCOMB_X5_Y11_N8
\Clock|count_2[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[2]~14_combout\ = (\Clock|count_2\(2) & (\Clock|count_2[1]~13\ $ (GND))) # (!\Clock|count_2\(2) & (!\Clock|count_2[1]~13\ & VCC))
-- \Clock|count_2[2]~15\ = CARRY((\Clock|count_2\(2) & !\Clock|count_2[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_2\(2),
	datad => VCC,
	cin => \Clock|count_2[1]~13\,
	combout => \Clock|count_2[2]~14_combout\,
	cout => \Clock|count_2[2]~15\);

-- Location: FF_X5_Y11_N9
\Clock|count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[2]~14_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(2));

-- Location: LCCOMB_X5_Y11_N10
\Clock|count_2[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[3]~16_combout\ = (\Clock|count_2\(3) & (!\Clock|count_2[2]~15\)) # (!\Clock|count_2\(3) & ((\Clock|count_2[2]~15\) # (GND)))
-- \Clock|count_2[3]~17\ = CARRY((!\Clock|count_2[2]~15\) # (!\Clock|count_2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(3),
	datad => VCC,
	cin => \Clock|count_2[2]~15\,
	combout => \Clock|count_2[3]~16_combout\,
	cout => \Clock|count_2[3]~17\);

-- Location: FF_X5_Y11_N11
\Clock|count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[3]~16_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(3));

-- Location: LCCOMB_X5_Y11_N12
\Clock|count_2[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[4]~18_combout\ = (\Clock|count_2\(4) & (\Clock|count_2[3]~17\ $ (GND))) # (!\Clock|count_2\(4) & (!\Clock|count_2[3]~17\ & VCC))
-- \Clock|count_2[4]~19\ = CARRY((\Clock|count_2\(4) & !\Clock|count_2[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(4),
	datad => VCC,
	cin => \Clock|count_2[3]~17\,
	combout => \Clock|count_2[4]~18_combout\,
	cout => \Clock|count_2[4]~19\);

-- Location: FF_X5_Y11_N13
\Clock|count_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[4]~18_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(4));

-- Location: LCCOMB_X5_Y11_N14
\Clock|count_2[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[5]~20_combout\ = (\Clock|count_2\(5) & (!\Clock|count_2[4]~19\)) # (!\Clock|count_2\(5) & ((\Clock|count_2[4]~19\) # (GND)))
-- \Clock|count_2[5]~21\ = CARRY((!\Clock|count_2[4]~19\) # (!\Clock|count_2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_2\(5),
	datad => VCC,
	cin => \Clock|count_2[4]~19\,
	combout => \Clock|count_2[5]~20_combout\,
	cout => \Clock|count_2[5]~21\);

-- Location: FF_X5_Y11_N15
\Clock|count_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[5]~20_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(5));

-- Location: LCCOMB_X5_Y11_N16
\Clock|count_2[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[6]~22_combout\ = (\Clock|count_2\(6) & (\Clock|count_2[5]~21\ $ (GND))) # (!\Clock|count_2\(6) & (!\Clock|count_2[5]~21\ & VCC))
-- \Clock|count_2[6]~23\ = CARRY((\Clock|count_2\(6) & !\Clock|count_2[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_2\(6),
	datad => VCC,
	cin => \Clock|count_2[5]~21\,
	combout => \Clock|count_2[6]~22_combout\,
	cout => \Clock|count_2[6]~23\);

-- Location: FF_X5_Y11_N17
\Clock|count_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[6]~22_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(6));

-- Location: LCCOMB_X5_Y11_N18
\Clock|count_2[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[7]~24_combout\ = (\Clock|count_2\(7) & (!\Clock|count_2[6]~23\)) # (!\Clock|count_2\(7) & ((\Clock|count_2[6]~23\) # (GND)))
-- \Clock|count_2[7]~25\ = CARRY((!\Clock|count_2[6]~23\) # (!\Clock|count_2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_2\(7),
	datad => VCC,
	cin => \Clock|count_2[6]~23\,
	combout => \Clock|count_2[7]~24_combout\,
	cout => \Clock|count_2[7]~25\);

-- Location: FF_X5_Y11_N19
\Clock|count_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[7]~24_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(7));

-- Location: LCCOMB_X5_Y11_N20
\Clock|count_2[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[8]~26_combout\ = (\Clock|count_2\(8) & (\Clock|count_2[7]~25\ $ (GND))) # (!\Clock|count_2\(8) & (!\Clock|count_2[7]~25\ & VCC))
-- \Clock|count_2[8]~27\ = CARRY((\Clock|count_2\(8) & !\Clock|count_2[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock|count_2\(8),
	datad => VCC,
	cin => \Clock|count_2[7]~25\,
	combout => \Clock|count_2[8]~26_combout\,
	cout => \Clock|count_2[8]~27\);

-- Location: FF_X5_Y11_N21
\Clock|count_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[8]~26_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(8));

-- Location: LCCOMB_X5_Y11_N22
\Clock|count_2[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|count_2[9]~28_combout\ = \Clock|count_2\(9) $ (\Clock|count_2[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(9),
	cin => \Clock|count_2[8]~27\,
	combout => \Clock|count_2[9]~28_combout\);

-- Location: FF_X5_Y11_N23
\Clock|count_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Clock|count_2[9]~28_combout\,
	sclr => \Clock|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|count_2\(9));

-- Location: LCCOMB_X5_Y11_N2
\Clock|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan2~0_combout\ = ((!\Clock|count_2\(2) & ((!\Clock|count_2\(1)) # (!\Clock|count_2\(0))))) # (!\Clock|count_2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(3),
	datab => \Clock|count_2\(0),
	datac => \Clock|count_2\(2),
	datad => \Clock|count_2\(1),
	combout => \Clock|LessThan2~0_combout\);

-- Location: LCCOMB_X5_Y11_N24
\Clock|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan2~1_combout\ = (!\Clock|count_2\(4) & (!\Clock|count_2\(6) & (!\Clock|count_2\(5) & \Clock|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(4),
	datab => \Clock|count_2\(6),
	datac => \Clock|count_2\(5),
	datad => \Clock|LessThan2~0_combout\,
	combout => \Clock|LessThan2~1_combout\);

-- Location: LCCOMB_X5_Y11_N0
\Clock|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|LessThan2~2_combout\ = (\Clock|count_2\(9) & ((\Clock|count_2\(8)) # ((\Clock|count_2\(7) & !\Clock|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock|count_2\(8),
	datab => \Clock|count_2\(7),
	datac => \Clock|count_2\(9),
	datad => \Clock|LessThan2~1_combout\,
	combout => \Clock|LessThan2~2_combout\);

-- Location: LCCOMB_X5_Y11_N28
\Clock|clk_state_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clock|clk_state_2~0_combout\ = \Clock|clk_state_2~q\ $ (\Clock|LessThan2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock|clk_state_2~q\,
	datad => \Clock|LessThan2~2_combout\,
	combout => \Clock|clk_state_2~0_combout\);

-- Location: FF_X5_Y11_N29
\Clock|clk_state_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Clock|clk_state_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock|clk_state_2~q\);

-- Location: LCCOMB_X13_Y14_N14
\Multiplexer|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexer|Mux0~combout\ = LCELL((\clk_select[1]~input_o\ & ((\Multiplexer|Mux0~0_combout\ & (\Clock|clk_state_3~q\)) # (!\Multiplexer|Mux0~0_combout\ & ((\Clock|clk_state_2~q\))))) # (!\clk_select[1]~input_o\ & (\Multiplexer|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Multiplexer|Mux0~0_combout\,
	datac => \Clock|clk_state_3~q\,
	datad => \Clock|clk_state_2~q\,
	combout => \Multiplexer|Mux0~combout\);

-- Location: CLKCTRL_G3
\Multiplexer|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Multiplexer|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Multiplexer|Mux0~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y7_N18
\Parte_B|FSM|current_state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|current_state.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Parte_B|FSM|current_state.idle~feeder_combout\);

-- Location: FF_X23_Y7_N19
\Parte_B|FSM|current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|current_state.idle~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.idle~q\);

-- Location: LCCOMB_X23_Y7_N2
\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\ = (\reset_low~input_o\ & !\Parte_B|FSM|current_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_low~input_o\,
	datad => \Parte_B|FSM|current_state.idle~q\,
	combout => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\);

-- Location: LCCOMB_X22_Y7_N10
\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	datab => \reset_low~input_o\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	combout => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\);

-- Location: LCCOMB_X14_Y15_N20
\Parte_A|Cont|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Cont|cont[0]~3_combout\ = !\Parte_A|Cont|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Parte_A|Cont|cont\(0),
	combout => \Parte_A|Cont|cont[0]~3_combout\);

-- Location: LCCOMB_X14_Y15_N4
\Parte_A|FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|FSM|Selector1~0_combout\ = (\Parte_A|FSM|current_state.load_shift~q\) # ((!\Parte_A|Cont|bus_out~q\ & \Parte_A|FSM|current_state.cont_down~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|FSM|current_state.load_shift~q\,
	datab => \Parte_A|Cont|bus_out~q\,
	datac => \Parte_A|FSM|current_state.cont_down~q\,
	combout => \Parte_A|FSM|Selector1~0_combout\);

-- Location: FF_X14_Y15_N5
\Parte_A|FSM|current_state.cont_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|FSM|Selector1~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|FSM|current_state.cont_down~q\);

-- Location: FF_X14_Y15_N21
\Parte_A|Cont|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Cont|cont[0]~3_combout\,
	clrn => \Parte_B|FSM|current_state.espera~q\,
	ena => \Parte_A|FSM|current_state.cont_down~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Cont|cont\(0));

-- Location: LCCOMB_X14_Y15_N28
\Parte_A|Cont|cont[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Cont|cont[2]~2_combout\ = \Parte_A|Cont|cont\(2) $ (((\Parte_A|Cont|cont\(1) & (\Parte_A|Cont|cont\(0) & \Parte_A|FSM|current_state.cont_down~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Cont|cont\(1),
	datab => \Parte_A|Cont|cont\(0),
	datac => \Parte_A|Cont|cont\(2),
	datad => \Parte_A|FSM|current_state.cont_down~q\,
	combout => \Parte_A|Cont|cont[2]~2_combout\);

-- Location: FF_X14_Y15_N29
\Parte_A|Cont|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Cont|cont[2]~2_combout\,
	clrn => \Parte_B|FSM|current_state.espera~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Cont|cont\(2));

-- Location: LCCOMB_X14_Y15_N8
\Parte_A|Cont|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Cont|cont~0_combout\ = (\Parte_A|Cont|cont\(1) & (\Parte_A|Cont|cont\(3) $ (((\Parte_A|Cont|cont\(2) & \Parte_A|Cont|cont\(0)))))) # (!\Parte_A|Cont|cont\(1) & (\Parte_A|Cont|cont\(3) & ((\Parte_A|Cont|cont\(2)) # (!\Parte_A|Cont|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Cont|cont\(1),
	datab => \Parte_A|Cont|cont\(2),
	datac => \Parte_A|Cont|cont\(3),
	datad => \Parte_A|Cont|cont\(0),
	combout => \Parte_A|Cont|cont~0_combout\);

-- Location: FF_X14_Y15_N9
\Parte_A|Cont|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Cont|cont~0_combout\,
	clrn => \Parte_B|FSM|current_state.espera~q\,
	ena => \Parte_A|FSM|current_state.cont_down~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Cont|cont\(3));

-- Location: LCCOMB_X14_Y15_N6
\Parte_A|Cont|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Cont|cont~1_combout\ = (\Parte_A|Cont|cont\(0) & (!\Parte_A|Cont|cont\(1) & ((\Parte_A|Cont|cont\(2)) # (!\Parte_A|Cont|cont\(3))))) # (!\Parte_A|Cont|cont\(0) & (((\Parte_A|Cont|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Cont|cont\(0),
	datab => \Parte_A|Cont|cont\(3),
	datac => \Parte_A|Cont|cont\(1),
	datad => \Parte_A|Cont|cont\(2),
	combout => \Parte_A|Cont|cont~1_combout\);

-- Location: FF_X14_Y15_N7
\Parte_A|Cont|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Cont|cont~1_combout\,
	clrn => \Parte_B|FSM|current_state.espera~q\,
	ena => \Parte_A|FSM|current_state.cont_down~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Cont|cont\(1));

-- Location: LCCOMB_X14_Y15_N22
\Parte_A|Cont|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Cont|Equal0~0_combout\ = (!\Parte_A|Cont|cont\(1) & (\Parte_A|Cont|cont\(0) & (\Parte_A|Cont|cont\(3) & !\Parte_A|Cont|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Cont|cont\(1),
	datab => \Parte_A|Cont|cont\(0),
	datac => \Parte_A|Cont|cont\(3),
	datad => \Parte_A|Cont|cont\(2),
	combout => \Parte_A|Cont|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y15_N2
\Parte_A|Cont|bus_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Cont|bus_out~0_combout\ = (\Parte_A|Cont|bus_out~q\) # ((\Parte_A|Cont|Equal0~0_combout\ & \Parte_A|FSM|current_state.cont_down~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Cont|Equal0~0_combout\,
	datac => \Parte_A|Cont|bus_out~q\,
	datad => \Parte_A|FSM|current_state.cont_down~q\,
	combout => \Parte_A|Cont|bus_out~0_combout\);

-- Location: FF_X14_Y15_N3
\Parte_A|Cont|bus_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Cont|bus_out~0_combout\,
	clrn => \Parte_B|FSM|current_state.espera~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Cont|bus_out~q\);

-- Location: LCCOMB_X14_Y15_N18
\Parte_A|FSM|next_state.finished~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|FSM|next_state.finished~0_combout\ = (\Parte_A|Cont|bus_out~q\ & \Parte_A|FSM|current_state.cont_down~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Parte_A|Cont|bus_out~q\,
	datad => \Parte_A|FSM|current_state.cont_down~q\,
	combout => \Parte_A|FSM|next_state.finished~0_combout\);

-- Location: FF_X14_Y15_N19
\Parte_A|FSM|current_state.finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|FSM|next_state.finished~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|FSM|current_state.finished~q\);

-- Location: LCCOMB_X13_Y15_N16
\Parte_B|FSM|current_state.espera~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|current_state.espera~0_combout\ = !\Parte_A|FSM|current_state.finished~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_A|FSM|current_state.finished~q\,
	combout => \Parte_B|FSM|current_state.espera~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\entry[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry(2),
	o => \entry[2]~input_o\);

-- Location: LCCOMB_X21_Y13_N26
\antirrebotes:2:antirreb|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|cont~0_combout\ = (!\antirrebotes:2:antirreb|y~0_combout\ & (!\antirrebotes:2:antirreb|cont\(0) & (\entry[2]~input_o\ $ (\antirrebotes:2:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:2:antirreb|y~0_combout\,
	datab => \entry[2]~input_o\,
	datac => \antirrebotes:2:antirreb|cont\(0),
	datad => \antirrebotes:2:antirreb|y~q\,
	combout => \antirrebotes:2:antirreb|cont~0_combout\);

-- Location: FF_X21_Y13_N27
\antirrebotes:2:antirreb|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:2:antirreb|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:2:antirreb|cont\(0));

-- Location: LCCOMB_X21_Y13_N18
\antirrebotes:2:antirreb|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|cont[3]~2_combout\ = (!\antirrebotes:2:antirreb|y~0_combout\ & (\entry[2]~input_o\ $ (\antirrebotes:2:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entry[2]~input_o\,
	datac => \antirrebotes:2:antirreb|y~q\,
	datad => \antirrebotes:2:antirreb|y~0_combout\,
	combout => \antirrebotes:2:antirreb|cont[3]~2_combout\);

-- Location: LCCOMB_X21_Y13_N16
\antirrebotes:2:antirreb|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|cont~4_combout\ = (\antirrebotes:2:antirreb|cont[3]~2_combout\ & (\antirrebotes:2:antirreb|cont\(0) $ (\antirrebotes:2:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \antirrebotes:2:antirreb|cont\(0),
	datac => \antirrebotes:2:antirreb|cont\(1),
	datad => \antirrebotes:2:antirreb|cont[3]~2_combout\,
	combout => \antirrebotes:2:antirreb|cont~4_combout\);

-- Location: FF_X21_Y13_N17
\antirrebotes:2:antirreb|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:2:antirreb|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:2:antirreb|cont\(1));

-- Location: LCCOMB_X21_Y13_N22
\antirrebotes:2:antirreb|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|cont~3_combout\ = (\antirrebotes:2:antirreb|cont[3]~2_combout\ & (\antirrebotes:2:antirreb|cont\(2) $ (((\antirrebotes:2:antirreb|cont\(0) & \antirrebotes:2:antirreb|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:2:antirreb|cont\(0),
	datab => \antirrebotes:2:antirreb|cont\(1),
	datac => \antirrebotes:2:antirreb|cont\(2),
	datad => \antirrebotes:2:antirreb|cont[3]~2_combout\,
	combout => \antirrebotes:2:antirreb|cont~3_combout\);

-- Location: FF_X21_Y13_N23
\antirrebotes:2:antirreb|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:2:antirreb|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:2:antirreb|cont\(2));

-- Location: LCCOMB_X21_Y13_N24
\antirrebotes:2:antirreb|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|Add0~0_combout\ = \antirrebotes:2:antirreb|cont\(3) $ (((\antirrebotes:2:antirreb|cont\(2) & (\antirrebotes:2:antirreb|cont\(1) & \antirrebotes:2:antirreb|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:2:antirreb|cont\(2),
	datab => \antirrebotes:2:antirreb|cont\(1),
	datac => \antirrebotes:2:antirreb|cont\(3),
	datad => \antirrebotes:2:antirreb|cont\(0),
	combout => \antirrebotes:2:antirreb|Add0~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\antirrebotes:2:antirreb|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|cont~1_combout\ = (\antirrebotes:2:antirreb|Add0~0_combout\ & (!\antirrebotes:2:antirreb|y~0_combout\ & (\entry[2]~input_o\ $ (\antirrebotes:2:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:2:antirreb|Add0~0_combout\,
	datab => \entry[2]~input_o\,
	datac => \antirrebotes:2:antirreb|y~q\,
	datad => \antirrebotes:2:antirreb|y~0_combout\,
	combout => \antirrebotes:2:antirreb|cont~1_combout\);

-- Location: FF_X21_Y13_N29
\antirrebotes:2:antirreb|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:2:antirreb|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:2:antirreb|cont\(3));

-- Location: LCCOMB_X21_Y13_N30
\antirrebotes:2:antirreb|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|y~0_combout\ = (\antirrebotes:2:antirreb|cont\(3) & (\antirrebotes:2:antirreb|cont\(0) & (!\antirrebotes:2:antirreb|cont\(2) & !\antirrebotes:2:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:2:antirreb|cont\(3),
	datab => \antirrebotes:2:antirreb|cont\(0),
	datac => \antirrebotes:2:antirreb|cont\(2),
	datad => \antirrebotes:2:antirreb|cont\(1),
	combout => \antirrebotes:2:antirreb|y~0_combout\);

-- Location: LCCOMB_X21_Y13_N8
\antirrebotes:2:antirreb|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:2:antirreb|y~1_combout\ = (\antirrebotes:2:antirreb|y~0_combout\ & (\entry[2]~input_o\)) # (!\antirrebotes:2:antirreb|y~0_combout\ & ((\antirrebotes:2:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entry[2]~input_o\,
	datac => \antirrebotes:2:antirreb|y~q\,
	datad => \antirrebotes:2:antirreb|y~0_combout\,
	combout => \antirrebotes:2:antirreb|y~1_combout\);

-- Location: FF_X21_Y13_N9
\antirrebotes:2:antirreb|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:2:antirreb|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:2:antirreb|y~q\);

-- Location: LCCOMB_X14_Y14_N20
\sincronizadores:2:sinc|meta~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:2:sinc|meta~feeder_combout\ = \antirrebotes:2:antirreb|y~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebotes:2:antirreb|y~q\,
	combout => \sincronizadores:2:sinc|meta~feeder_combout\);

-- Location: FF_X14_Y14_N21
\sincronizadores:2:sinc|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \sincronizadores:2:sinc|meta~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:2:sinc|meta~q\);

-- Location: FF_X13_Y14_N25
\sincronizadores:2:sinc|syncin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~combout\,
	asdata => \sincronizadores:2:sinc|meta~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:2:sinc|syncin~q\);

-- Location: IOIBUF_X34_Y12_N15
\entry[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry(1),
	o => \entry[1]~input_o\);

-- Location: LCCOMB_X17_Y14_N18
\antirrebotes:1:antirreb|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|cont~0_combout\ = (!\antirrebotes:1:antirreb|cont\(0) & (!\antirrebotes:1:antirreb|y~0_combout\ & (\antirrebotes:1:antirreb|y~q\ $ (\entry[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:1:antirreb|y~q\,
	datab => \entry[1]~input_o\,
	datac => \antirrebotes:1:antirreb|cont\(0),
	datad => \antirrebotes:1:antirreb|y~0_combout\,
	combout => \antirrebotes:1:antirreb|cont~0_combout\);

-- Location: FF_X17_Y14_N19
\antirrebotes:1:antirreb|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:1:antirreb|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:1:antirreb|cont\(0));

-- Location: LCCOMB_X17_Y14_N10
\antirrebotes:1:antirreb|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|cont[0]~2_combout\ = (!\antirrebotes:1:antirreb|y~0_combout\ & (\antirrebotes:1:antirreb|y~q\ $ (\entry[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \antirrebotes:1:antirreb|y~q\,
	datac => \entry[1]~input_o\,
	datad => \antirrebotes:1:antirreb|y~0_combout\,
	combout => \antirrebotes:1:antirreb|cont[0]~2_combout\);

-- Location: LCCOMB_X17_Y14_N12
\antirrebotes:1:antirreb|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|cont~4_combout\ = (\antirrebotes:1:antirreb|cont[0]~2_combout\ & (\antirrebotes:1:antirreb|cont\(0) $ (\antirrebotes:1:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \antirrebotes:1:antirreb|cont\(0),
	datac => \antirrebotes:1:antirreb|cont\(1),
	datad => \antirrebotes:1:antirreb|cont[0]~2_combout\,
	combout => \antirrebotes:1:antirreb|cont~4_combout\);

-- Location: FF_X17_Y14_N13
\antirrebotes:1:antirreb|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:1:antirreb|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:1:antirreb|cont\(1));

-- Location: LCCOMB_X17_Y14_N22
\antirrebotes:1:antirreb|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|cont~3_combout\ = (\antirrebotes:1:antirreb|cont[0]~2_combout\ & (\antirrebotes:1:antirreb|cont\(2) $ (((\antirrebotes:1:antirreb|cont\(1) & \antirrebotes:1:antirreb|cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:1:antirreb|cont\(1),
	datab => \antirrebotes:1:antirreb|cont\(0),
	datac => \antirrebotes:1:antirreb|cont\(2),
	datad => \antirrebotes:1:antirreb|cont[0]~2_combout\,
	combout => \antirrebotes:1:antirreb|cont~3_combout\);

-- Location: FF_X17_Y14_N23
\antirrebotes:1:antirreb|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:1:antirreb|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:1:antirreb|cont\(2));

-- Location: LCCOMB_X17_Y14_N28
\antirrebotes:1:antirreb|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|Add0~0_combout\ = \antirrebotes:1:antirreb|cont\(3) $ (((\antirrebotes:1:antirreb|cont\(1) & (\antirrebotes:1:antirreb|cont\(2) & \antirrebotes:1:antirreb|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:1:antirreb|cont\(1),
	datab => \antirrebotes:1:antirreb|cont\(3),
	datac => \antirrebotes:1:antirreb|cont\(2),
	datad => \antirrebotes:1:antirreb|cont\(0),
	combout => \antirrebotes:1:antirreb|Add0~0_combout\);

-- Location: LCCOMB_X17_Y14_N20
\antirrebotes:1:antirreb|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|cont~1_combout\ = (\antirrebotes:1:antirreb|Add0~0_combout\ & (!\antirrebotes:1:antirreb|y~0_combout\ & (\entry[1]~input_o\ $ (\antirrebotes:1:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:1:antirreb|Add0~0_combout\,
	datab => \entry[1]~input_o\,
	datac => \antirrebotes:1:antirreb|y~q\,
	datad => \antirrebotes:1:antirreb|y~0_combout\,
	combout => \antirrebotes:1:antirreb|cont~1_combout\);

-- Location: FF_X17_Y14_N21
\antirrebotes:1:antirreb|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:1:antirreb|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:1:antirreb|cont\(3));

-- Location: LCCOMB_X17_Y14_N2
\antirrebotes:1:antirreb|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|y~0_combout\ = (!\antirrebotes:1:antirreb|cont\(1) & (\antirrebotes:1:antirreb|cont\(3) & (!\antirrebotes:1:antirreb|cont\(2) & \antirrebotes:1:antirreb|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:1:antirreb|cont\(1),
	datab => \antirrebotes:1:antirreb|cont\(3),
	datac => \antirrebotes:1:antirreb|cont\(2),
	datad => \antirrebotes:1:antirreb|cont\(0),
	combout => \antirrebotes:1:antirreb|y~0_combout\);

-- Location: LCCOMB_X17_Y14_N4
\antirrebotes:1:antirreb|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:1:antirreb|y~1_combout\ = (\antirrebotes:1:antirreb|y~0_combout\ & (\entry[1]~input_o\)) # (!\antirrebotes:1:antirreb|y~0_combout\ & ((\antirrebotes:1:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entry[1]~input_o\,
	datac => \antirrebotes:1:antirreb|y~q\,
	datad => \antirrebotes:1:antirreb|y~0_combout\,
	combout => \antirrebotes:1:antirreb|y~1_combout\);

-- Location: FF_X17_Y14_N5
\antirrebotes:1:antirreb|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:1:antirreb|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:1:antirreb|y~q\);

-- Location: LCCOMB_X14_Y14_N26
\sincronizadores:1:sinc|meta~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:1:sinc|meta~feeder_combout\ = \antirrebotes:1:antirreb|y~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebotes:1:antirreb|y~q\,
	combout => \sincronizadores:1:sinc|meta~feeder_combout\);

-- Location: FF_X14_Y14_N27
\sincronizadores:1:sinc|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \sincronizadores:1:sinc|meta~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:1:sinc|meta~q\);

-- Location: LCCOMB_X13_Y14_N18
\sincronizadores:1:sinc|syncin~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:1:sinc|syncin~feeder_combout\ = \sincronizadores:1:sinc|meta~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sincronizadores:1:sinc|meta~q\,
	combout => \sincronizadores:1:sinc|syncin~feeder_combout\);

-- Location: FF_X13_Y14_N19
\sincronizadores:1:sinc|syncin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~combout\,
	d => \sincronizadores:1:sinc|syncin~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:1:sinc|syncin~q\);

-- Location: IOIBUF_X34_Y12_N1
\entry[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry(3),
	o => \entry[3]~input_o\);

-- Location: LCCOMB_X23_Y14_N22
\antirrebotes:3:antirreb|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|cont~0_combout\ = (!\antirrebotes:3:antirreb|cont\(0) & (!\antirrebotes:3:antirreb|y~0_combout\ & (\entry[3]~input_o\ $ (\antirrebotes:3:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entry[3]~input_o\,
	datab => \antirrebotes:3:antirreb|y~q\,
	datac => \antirrebotes:3:antirreb|cont\(0),
	datad => \antirrebotes:3:antirreb|y~0_combout\,
	combout => \antirrebotes:3:antirreb|cont~0_combout\);

-- Location: FF_X23_Y14_N23
\antirrebotes:3:antirreb|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:3:antirreb|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:3:antirreb|cont\(0));

-- Location: LCCOMB_X23_Y14_N2
\antirrebotes:3:antirreb|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|cont[3]~2_combout\ = (!\antirrebotes:3:antirreb|y~0_combout\ & (\entry[3]~input_o\ $ (\antirrebotes:3:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entry[3]~input_o\,
	datac => \antirrebotes:3:antirreb|y~q\,
	datad => \antirrebotes:3:antirreb|y~0_combout\,
	combout => \antirrebotes:3:antirreb|cont[3]~2_combout\);

-- Location: LCCOMB_X23_Y14_N20
\antirrebotes:3:antirreb|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|cont~4_combout\ = (\antirrebotes:3:antirreb|cont[3]~2_combout\ & (\antirrebotes:3:antirreb|cont\(0) $ (\antirrebotes:3:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:3:antirreb|cont\(0),
	datac => \antirrebotes:3:antirreb|cont\(1),
	datad => \antirrebotes:3:antirreb|cont[3]~2_combout\,
	combout => \antirrebotes:3:antirreb|cont~4_combout\);

-- Location: FF_X23_Y14_N21
\antirrebotes:3:antirreb|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:3:antirreb|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:3:antirreb|cont\(1));

-- Location: LCCOMB_X23_Y14_N18
\antirrebotes:3:antirreb|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|cont~3_combout\ = (\antirrebotes:3:antirreb|cont[3]~2_combout\ & (\antirrebotes:3:antirreb|cont\(2) $ (((\antirrebotes:3:antirreb|cont\(0) & \antirrebotes:3:antirreb|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:3:antirreb|cont\(0),
	datab => \antirrebotes:3:antirreb|cont[3]~2_combout\,
	datac => \antirrebotes:3:antirreb|cont\(2),
	datad => \antirrebotes:3:antirreb|cont\(1),
	combout => \antirrebotes:3:antirreb|cont~3_combout\);

-- Location: FF_X23_Y14_N19
\antirrebotes:3:antirreb|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:3:antirreb|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:3:antirreb|cont\(2));

-- Location: LCCOMB_X23_Y14_N24
\antirrebotes:3:antirreb|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|Add0~0_combout\ = \antirrebotes:3:antirreb|cont\(3) $ (((\antirrebotes:3:antirreb|cont\(1) & (\antirrebotes:3:antirreb|cont\(0) & \antirrebotes:3:antirreb|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:3:antirreb|cont\(1),
	datab => \antirrebotes:3:antirreb|cont\(3),
	datac => \antirrebotes:3:antirreb|cont\(0),
	datad => \antirrebotes:3:antirreb|cont\(2),
	combout => \antirrebotes:3:antirreb|Add0~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\antirrebotes:3:antirreb|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|cont~1_combout\ = (!\antirrebotes:3:antirreb|y~0_combout\ & (\antirrebotes:3:antirreb|Add0~0_combout\ & (\entry[3]~input_o\ $ (\antirrebotes:3:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:3:antirreb|y~0_combout\,
	datab => \entry[3]~input_o\,
	datac => \antirrebotes:3:antirreb|y~q\,
	datad => \antirrebotes:3:antirreb|Add0~0_combout\,
	combout => \antirrebotes:3:antirreb|cont~1_combout\);

-- Location: FF_X23_Y14_N29
\antirrebotes:3:antirreb|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:3:antirreb|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:3:antirreb|cont\(3));

-- Location: LCCOMB_X23_Y14_N6
\antirrebotes:3:antirreb|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|y~0_combout\ = (!\antirrebotes:3:antirreb|cont\(1) & (\antirrebotes:3:antirreb|cont\(3) & (\antirrebotes:3:antirreb|cont\(0) & !\antirrebotes:3:antirreb|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:3:antirreb|cont\(1),
	datab => \antirrebotes:3:antirreb|cont\(3),
	datac => \antirrebotes:3:antirreb|cont\(0),
	datad => \antirrebotes:3:antirreb|cont\(2),
	combout => \antirrebotes:3:antirreb|y~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\antirrebotes:3:antirreb|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:3:antirreb|y~1_combout\ = (\antirrebotes:3:antirreb|y~0_combout\ & (\entry[3]~input_o\)) # (!\antirrebotes:3:antirreb|y~0_combout\ & ((\antirrebotes:3:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entry[3]~input_o\,
	datac => \antirrebotes:3:antirreb|y~q\,
	datad => \antirrebotes:3:antirreb|y~0_combout\,
	combout => \antirrebotes:3:antirreb|y~1_combout\);

-- Location: FF_X23_Y14_N5
\antirrebotes:3:antirreb|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:3:antirreb|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:3:antirreb|y~q\);

-- Location: LCCOMB_X14_Y14_N6
\sincronizadores:3:sinc|meta~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:3:sinc|meta~feeder_combout\ = \antirrebotes:3:antirreb|y~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebotes:3:antirreb|y~q\,
	combout => \sincronizadores:3:sinc|meta~feeder_combout\);

-- Location: FF_X14_Y14_N7
\sincronizadores:3:sinc|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \sincronizadores:3:sinc|meta~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:3:sinc|meta~q\);

-- Location: LCCOMB_X13_Y14_N28
\sincronizadores:3:sinc|syncin~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:3:sinc|syncin~feeder_combout\ = \sincronizadores:3:sinc|meta~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sincronizadores:3:sinc|meta~q\,
	combout => \sincronizadores:3:sinc|syncin~feeder_combout\);

-- Location: FF_X13_Y14_N29
\sincronizadores:3:sinc|syncin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~combout\,
	d => \sincronizadores:3:sinc|syncin~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:3:sinc|syncin~q\);

-- Location: IOIBUF_X0_Y9_N8
\entry[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry(4),
	o => \entry[4]~input_o\);

-- Location: LCCOMB_X6_Y11_N26
\antirrebotes:4:antirreb|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|cont~0_combout\ = (!\antirrebotes:4:antirreb|y~0_combout\ & (!\antirrebotes:4:antirreb|cont\(0) & (\entry[4]~input_o\ $ (\antirrebotes:4:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|y~0_combout\,
	datab => \entry[4]~input_o\,
	datac => \antirrebotes:4:antirreb|cont\(0),
	datad => \antirrebotes:4:antirreb|y~q\,
	combout => \antirrebotes:4:antirreb|cont~0_combout\);

-- Location: FF_X6_Y11_N27
\antirrebotes:4:antirreb|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:4:antirreb|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:4:antirreb|cont\(0));

-- Location: LCCOMB_X6_Y11_N18
\antirrebotes:4:antirreb|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|cont[3]~2_combout\ = (!\antirrebotes:4:antirreb|y~0_combout\ & (\entry[4]~input_o\ $ (\antirrebotes:4:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entry[4]~input_o\,
	datac => \antirrebotes:4:antirreb|y~0_combout\,
	datad => \antirrebotes:4:antirreb|y~q\,
	combout => \antirrebotes:4:antirreb|cont[3]~2_combout\);

-- Location: LCCOMB_X6_Y11_N24
\antirrebotes:4:antirreb|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|cont~4_combout\ = (\antirrebotes:4:antirreb|cont[3]~2_combout\ & (\antirrebotes:4:antirreb|cont\(0) $ (\antirrebotes:4:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|cont\(0),
	datac => \antirrebotes:4:antirreb|cont\(1),
	datad => \antirrebotes:4:antirreb|cont[3]~2_combout\,
	combout => \antirrebotes:4:antirreb|cont~4_combout\);

-- Location: FF_X6_Y11_N25
\antirrebotes:4:antirreb|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:4:antirreb|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:4:antirreb|cont\(1));

-- Location: LCCOMB_X6_Y11_N14
\antirrebotes:4:antirreb|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|cont~3_combout\ = (\antirrebotes:4:antirreb|cont[3]~2_combout\ & (\antirrebotes:4:antirreb|cont\(2) $ (((\antirrebotes:4:antirreb|cont\(0) & \antirrebotes:4:antirreb|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|cont\(0),
	datab => \antirrebotes:4:antirreb|cont\(1),
	datac => \antirrebotes:4:antirreb|cont\(2),
	datad => \antirrebotes:4:antirreb|cont[3]~2_combout\,
	combout => \antirrebotes:4:antirreb|cont~3_combout\);

-- Location: FF_X6_Y11_N15
\antirrebotes:4:antirreb|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:4:antirreb|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:4:antirreb|cont\(2));

-- Location: LCCOMB_X6_Y11_N20
\antirrebotes:4:antirreb|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|Add0~0_combout\ = \antirrebotes:4:antirreb|cont\(3) $ (((\antirrebotes:4:antirreb|cont\(0) & (\antirrebotes:4:antirreb|cont\(2) & \antirrebotes:4:antirreb|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|cont\(0),
	datab => \antirrebotes:4:antirreb|cont\(3),
	datac => \antirrebotes:4:antirreb|cont\(2),
	datad => \antirrebotes:4:antirreb|cont\(1),
	combout => \antirrebotes:4:antirreb|Add0~0_combout\);

-- Location: LCCOMB_X6_Y11_N28
\antirrebotes:4:antirreb|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|cont~1_combout\ = (!\antirrebotes:4:antirreb|y~0_combout\ & (\antirrebotes:4:antirreb|Add0~0_combout\ & (\entry[4]~input_o\ $ (\antirrebotes:4:antirreb|y~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|y~0_combout\,
	datab => \entry[4]~input_o\,
	datac => \antirrebotes:4:antirreb|y~q\,
	datad => \antirrebotes:4:antirreb|Add0~0_combout\,
	combout => \antirrebotes:4:antirreb|cont~1_combout\);

-- Location: FF_X6_Y11_N29
\antirrebotes:4:antirreb|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:4:antirreb|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:4:antirreb|cont\(3));

-- Location: LCCOMB_X6_Y11_N22
\antirrebotes:4:antirreb|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|y~0_combout\ = (\antirrebotes:4:antirreb|cont\(0) & (\antirrebotes:4:antirreb|cont\(3) & (!\antirrebotes:4:antirreb|cont\(2) & !\antirrebotes:4:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|cont\(0),
	datab => \antirrebotes:4:antirreb|cont\(3),
	datac => \antirrebotes:4:antirreb|cont\(2),
	datad => \antirrebotes:4:antirreb|cont\(1),
	combout => \antirrebotes:4:antirreb|y~0_combout\);

-- Location: LCCOMB_X6_Y11_N8
\antirrebotes:4:antirreb|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:4:antirreb|y~1_combout\ = (\antirrebotes:4:antirreb|y~0_combout\ & (\entry[4]~input_o\)) # (!\antirrebotes:4:antirreb|y~0_combout\ & ((\antirrebotes:4:antirreb|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:4:antirreb|y~0_combout\,
	datab => \entry[4]~input_o\,
	datac => \antirrebotes:4:antirreb|y~q\,
	combout => \antirrebotes:4:antirreb|y~1_combout\);

-- Location: FF_X6_Y11_N9
\antirrebotes:4:antirreb|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:4:antirreb|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:4:antirreb|y~q\);

-- Location: LCCOMB_X14_Y14_N12
\sincronizadores:4:sinc|meta~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:4:sinc|meta~feeder_combout\ = \antirrebotes:4:antirreb|y~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebotes:4:antirreb|y~q\,
	combout => \sincronizadores:4:sinc|meta~feeder_combout\);

-- Location: FF_X14_Y14_N13
\sincronizadores:4:sinc|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \sincronizadores:4:sinc|meta~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:4:sinc|meta~q\);

-- Location: FF_X13_Y14_N3
\sincronizadores:4:sinc|syncin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~combout\,
	asdata => \sincronizadores:4:sinc|meta~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:4:sinc|syncin~q\);

-- Location: IOIBUF_X34_Y12_N22
\entry[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entry(0),
	o => \entry[0]~input_o\);

-- Location: LCCOMB_X28_Y14_N22
\antirrebotes:0:antirreb|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|cont~0_combout\ = (!\antirrebotes:0:antirreb|y~0_combout\ & (!\antirrebotes:0:antirreb|cont\(0) & (\antirrebotes:0:antirreb|y~q\ $ (\entry[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|y~0_combout\,
	datab => \antirrebotes:0:antirreb|y~q\,
	datac => \antirrebotes:0:antirreb|cont\(0),
	datad => \entry[0]~input_o\,
	combout => \antirrebotes:0:antirreb|cont~0_combout\);

-- Location: FF_X28_Y14_N23
\antirrebotes:0:antirreb|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:0:antirreb|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:0:antirreb|cont\(0));

-- Location: LCCOMB_X28_Y14_N18
\antirrebotes:0:antirreb|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|cont[3]~2_combout\ = (!\antirrebotes:0:antirreb|y~0_combout\ & (\antirrebotes:0:antirreb|y~q\ $ (\entry[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \antirrebotes:0:antirreb|y~q\,
	datac => \antirrebotes:0:antirreb|y~0_combout\,
	datad => \entry[0]~input_o\,
	combout => \antirrebotes:0:antirreb|cont[3]~2_combout\);

-- Location: LCCOMB_X28_Y14_N12
\antirrebotes:0:antirreb|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|cont~4_combout\ = (\antirrebotes:0:antirreb|cont[3]~2_combout\ & (\antirrebotes:0:antirreb|cont\(0) $ (\antirrebotes:0:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|cont\(0),
	datac => \antirrebotes:0:antirreb|cont\(1),
	datad => \antirrebotes:0:antirreb|cont[3]~2_combout\,
	combout => \antirrebotes:0:antirreb|cont~4_combout\);

-- Location: FF_X28_Y14_N13
\antirrebotes:0:antirreb|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:0:antirreb|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:0:antirreb|cont\(1));

-- Location: LCCOMB_X28_Y14_N26
\antirrebotes:0:antirreb|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|cont~3_combout\ = (\antirrebotes:0:antirreb|cont[3]~2_combout\ & (\antirrebotes:0:antirreb|cont\(2) $ (((\antirrebotes:0:antirreb|cont\(0) & \antirrebotes:0:antirreb|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|cont\(0),
	datab => \antirrebotes:0:antirreb|cont[3]~2_combout\,
	datac => \antirrebotes:0:antirreb|cont\(2),
	datad => \antirrebotes:0:antirreb|cont\(1),
	combout => \antirrebotes:0:antirreb|cont~3_combout\);

-- Location: FF_X28_Y14_N27
\antirrebotes:0:antirreb|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:0:antirreb|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:0:antirreb|cont\(2));

-- Location: LCCOMB_X28_Y14_N28
\antirrebotes:0:antirreb|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|Add0~0_combout\ = \antirrebotes:0:antirreb|cont\(3) $ (((\antirrebotes:0:antirreb|cont\(2) & (\antirrebotes:0:antirreb|cont\(0) & \antirrebotes:0:antirreb|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|cont\(2),
	datab => \antirrebotes:0:antirreb|cont\(3),
	datac => \antirrebotes:0:antirreb|cont\(0),
	datad => \antirrebotes:0:antirreb|cont\(1),
	combout => \antirrebotes:0:antirreb|Add0~0_combout\);

-- Location: LCCOMB_X28_Y14_N20
\antirrebotes:0:antirreb|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|cont~1_combout\ = (!\antirrebotes:0:antirreb|y~0_combout\ & (\antirrebotes:0:antirreb|Add0~0_combout\ & (\antirrebotes:0:antirreb|y~q\ $ (\entry[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|y~0_combout\,
	datab => \antirrebotes:0:antirreb|Add0~0_combout\,
	datac => \antirrebotes:0:antirreb|y~q\,
	datad => \entry[0]~input_o\,
	combout => \antirrebotes:0:antirreb|cont~1_combout\);

-- Location: FF_X28_Y14_N21
\antirrebotes:0:antirreb|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:0:antirreb|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:0:antirreb|cont\(3));

-- Location: LCCOMB_X28_Y14_N30
\antirrebotes:0:antirreb|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|y~0_combout\ = (!\antirrebotes:0:antirreb|cont\(2) & (\antirrebotes:0:antirreb|cont\(3) & (\antirrebotes:0:antirreb|cont\(0) & !\antirrebotes:0:antirreb|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|cont\(2),
	datab => \antirrebotes:0:antirreb|cont\(3),
	datac => \antirrebotes:0:antirreb|cont\(0),
	datad => \antirrebotes:0:antirreb|cont\(1),
	combout => \antirrebotes:0:antirreb|y~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\antirrebotes:0:antirreb|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \antirrebotes:0:antirreb|y~1_combout\ = (\antirrebotes:0:antirreb|y~0_combout\ & ((\entry[0]~input_o\))) # (!\antirrebotes:0:antirreb|y~0_combout\ & (\antirrebotes:0:antirreb|y~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \antirrebotes:0:antirreb|y~0_combout\,
	datac => \antirrebotes:0:antirreb|y~q\,
	datad => \entry[0]~input_o\,
	combout => \antirrebotes:0:antirreb|y~1_combout\);

-- Location: FF_X28_Y14_N5
\antirrebotes:0:antirreb|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \antirrebotes:0:antirreb|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \antirrebotes:0:antirreb|y~q\);

-- Location: LCCOMB_X14_Y14_N0
\sincronizadores:0:sinc|meta~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sincronizadores:0:sinc|meta~feeder_combout\ = \antirrebotes:0:antirreb|y~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \antirrebotes:0:antirreb|y~q\,
	combout => \sincronizadores:0:sinc|meta~feeder_combout\);

-- Location: FF_X14_Y14_N1
\sincronizadores:0:sinc|meta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \sincronizadores:0:sinc|meta~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:0:sinc|meta~q\);

-- Location: FF_X13_Y14_N23
\sincronizadores:0:sinc|syncin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~combout\,
	asdata => \sincronizadores:0:sinc|meta~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sincronizadores:0:sinc|syncin~q\);

-- Location: CLKCTRL_G0
\Parte_B|FSM|current_state.contador~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Parte_B|FSM|current_state.contador~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y8_N12
\Parte_B|Contador|cont[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[0]~7_combout\ = \Parte_B|Contador|cont\(0) $ (VCC)
-- \Parte_B|Contador|cont[0]~8\ = CARRY(\Parte_B|Contador|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(0),
	datad => VCC,
	combout => \Parte_B|Contador|cont[0]~7_combout\,
	cout => \Parte_B|Contador|cont[0]~8\);

-- Location: LCCOMB_X13_Y14_N10
\mod_lcd|fsm|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Mux0~0_combout\ = (!\sincronizadores:3:sinc|syncin~q\ & (!\sincronizadores:1:sinc|syncin~q\ & (!\sincronizadores:0:sinc|syncin~q\ & !\sincronizadores:2:sinc|syncin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:3:sinc|syncin~q\,
	datab => \sincronizadores:1:sinc|syncin~q\,
	datac => \sincronizadores:0:sinc|syncin~q\,
	datad => \sincronizadores:2:sinc|syncin~q\,
	combout => \mod_lcd|fsm|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y15_N30
\Parte_B|FSM|next_state.entrada_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_4~0_combout\ = (\sincronizadores:4:sinc|syncin~q\ & (\mod_lcd|fsm|Mux0~0_combout\ & \Parte_B|FSM|current_state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sincronizadores:4:sinc|syncin~q\,
	datac => \mod_lcd|fsm|Mux0~0_combout\,
	datad => \Parte_B|FSM|current_state.ready~q\,
	combout => \Parte_B|FSM|next_state.entrada_4~0_combout\);

-- Location: FF_X14_Y15_N15
\Parte_B|FSM|current_state.entrada_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	asdata => \Parte_B|FSM|next_state.entrada_4~0_combout\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.entrada_4~q\);

-- Location: LCCOMB_X14_Y15_N14
\Parte_B|Contador|opcion[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|opcion\(4) = (!\Parte_B|FSM|current_state.ready~q\ & ((\Parte_B|FSM|current_state.entrada_4~q\) # (\Parte_B|Contador|opcion\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|FSM|current_state.ready~q\,
	datac => \Parte_B|FSM|current_state.entrada_4~q\,
	datad => \Parte_B|Contador|opcion\(4),
	combout => \Parte_B|Contador|opcion\(4));

-- Location: LCCOMB_X19_Y11_N2
\Parte_B|Contador|opcion[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|opcion\(2) = (!\Parte_B|FSM|current_state.ready~q\ & ((\Parte_B|FSM|current_state.entrada_2~q\) # (\Parte_B|Contador|opcion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.ready~q\,
	datab => \Parte_B|FSM|current_state.entrada_2~q\,
	datad => \Parte_B|Contador|opcion\(2),
	combout => \Parte_B|Contador|opcion\(2));

-- Location: LCCOMB_X12_Y14_N20
\Parte_B|FSM|next_state.entrada_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_1~0_combout\ = (!\sincronizadores:2:sinc|syncin~q\ & (\sincronizadores:1:sinc|syncin~q\ & \Parte_B|FSM|next_state.entrada_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \sincronizadores:1:sinc|syncin~q\,
	datad => \Parte_B|FSM|next_state.entrada_2~0_combout\,
	combout => \Parte_B|FSM|next_state.entrada_1~0_combout\);

-- Location: FF_X12_Y14_N21
\Parte_B|FSM|current_state.entrada_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|next_state.entrada_1~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.entrada_1~q\);

-- Location: LCCOMB_X19_Y11_N16
\Parte_B|Contador|opcion[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|opcion\(1) = (!\Parte_B|FSM|current_state.ready~q\ & ((\Parte_B|FSM|current_state.entrada_1~q\) # (\Parte_B|Contador|opcion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.entrada_1~q\,
	datac => \Parte_B|FSM|current_state.ready~q\,
	datad => \Parte_B|Contador|opcion\(1),
	combout => \Parte_B|Contador|opcion\(1));

-- Location: LCCOMB_X19_Y11_N24
\Parte_B|Contador|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux0~0_combout\ = (!\Parte_B|Contador|opcion\(2) & !\Parte_B|Contador|opcion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|opcion\(2),
	datad => \Parte_B|Contador|opcion\(1),
	combout => \Parte_B|Contador|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y14_N26
\Parte_B|FSM|next_state.entrada_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_0~0_combout\ = (!\sincronizadores:2:sinc|syncin~q\ & (!\sincronizadores:1:sinc|syncin~q\ & \Parte_B|FSM|current_state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:2:sinc|syncin~q\,
	datab => \sincronizadores:1:sinc|syncin~q\,
	datad => \Parte_B|FSM|current_state.ready~q\,
	combout => \Parte_B|FSM|next_state.entrada_0~0_combout\);

-- Location: LCCOMB_X12_Y14_N8
\Parte_B|FSM|next_state.entrada_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_3~4_combout\ = (!\sincronizadores:0:sinc|syncin~q\ & (!\sincronizadores:4:sinc|syncin~q\ & (\sincronizadores:3:sinc|syncin~q\ & \Parte_B|FSM|next_state.entrada_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:0:sinc|syncin~q\,
	datab => \sincronizadores:4:sinc|syncin~q\,
	datac => \sincronizadores:3:sinc|syncin~q\,
	datad => \Parte_B|FSM|next_state.entrada_0~0_combout\,
	combout => \Parte_B|FSM|next_state.entrada_3~4_combout\);

-- Location: FF_X12_Y14_N9
\Parte_B|FSM|current_state.entrada_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|next_state.entrada_3~4_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.entrada_3~q\);

-- Location: LCCOMB_X12_Y14_N16
\Parte_B|Contador|opcion[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|opcion\(3) = (!\Parte_B|FSM|current_state.ready~q\ & ((\Parte_B|FSM|current_state.entrada_3~q\) # (\Parte_B|Contador|opcion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.ready~q\,
	datac => \Parte_B|FSM|current_state.entrada_3~q\,
	datad => \Parte_B|Contador|opcion\(3),
	combout => \Parte_B|Contador|opcion\(3));

-- Location: LCCOMB_X12_Y14_N12
\Parte_B|FSM|next_state.entrada_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_0~1_combout\ = (\sincronizadores:0:sinc|syncin~q\ & (!\sincronizadores:4:sinc|syncin~q\ & (!\sincronizadores:3:sinc|syncin~q\ & \Parte_B|FSM|next_state.entrada_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:0:sinc|syncin~q\,
	datab => \sincronizadores:4:sinc|syncin~q\,
	datac => \sincronizadores:3:sinc|syncin~q\,
	datad => \Parte_B|FSM|next_state.entrada_0~0_combout\,
	combout => \Parte_B|FSM|next_state.entrada_0~1_combout\);

-- Location: FF_X12_Y14_N13
\Parte_B|FSM|current_state.entrada_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|next_state.entrada_0~1_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.entrada_0~q\);

-- Location: LCCOMB_X19_Y11_N12
\Parte_B|Contador|opcion[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|opcion\(0) = (!\Parte_B|FSM|current_state.ready~q\ & ((\Parte_B|FSM|current_state.entrada_0~q\) # (\Parte_B|Contador|opcion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.ready~q\,
	datab => \Parte_B|FSM|current_state.entrada_0~q\,
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|opcion\(0));

-- Location: LCCOMB_X19_Y11_N18
\Parte_B|Contador|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux4~0_combout\ = (\Parte_B|Contador|opcion\(4)) # (((\Parte_B|Contador|opcion\(3)) # (!\Parte_B|Contador|opcion\(0))) # (!\Parte_B|Contador|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|opcion\(4),
	datab => \Parte_B|Contador|Mux0~0_combout\,
	datac => \Parte_B|Contador|opcion\(3),
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\Parte_B|Contador|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux2~0_combout\ = (!\Parte_B|Contador|opcion\(4) & (!\Parte_B|Contador|opcion\(3) & !\Parte_B|Contador|opcion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|opcion\(4),
	datac => \Parte_B|Contador|opcion\(3),
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y11_N22
\Parte_B|Contador|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux2~1_combout\ = (\Parte_B|Contador|opcion\(2) & (\Parte_B|Contador|Mux2~0_combout\ & !\Parte_B|Contador|opcion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|opcion\(2),
	datac => \Parte_B|Contador|Mux2~0_combout\,
	datad => \Parte_B|Contador|opcion\(1),
	combout => \Parte_B|Contador|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y11_N10
\Parte_B|Contador|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux1~0_combout\ = (!\Parte_B|Contador|opcion\(4) & (\Parte_B|Contador|Mux0~0_combout\ & (\Parte_B|Contador|opcion\(3) & !\Parte_B|Contador|opcion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|opcion\(4),
	datab => \Parte_B|Contador|Mux0~0_combout\,
	datac => \Parte_B|Contador|opcion\(3),
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\Parte_B|Contador|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux3~0_combout\ = (!\Parte_B|Contador|opcion\(4) & (\Parte_B|Contador|opcion\(1) & (!\Parte_B|Contador|opcion\(3) & !\Parte_B|Contador|opcion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|opcion\(4),
	datab => \Parte_B|Contador|opcion\(1),
	datac => \Parte_B|Contador|opcion\(3),
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\Parte_B|Contador|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux0~1_combout\ = (\Parte_B|Contador|opcion\(4) & (\Parte_B|Contador|Mux0~0_combout\ & (!\Parte_B|Contador|opcion\(3) & !\Parte_B|Contador|opcion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|opcion\(4),
	datab => \Parte_B|Contador|Mux0~0_combout\,
	datac => \Parte_B|Contador|opcion\(3),
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\Parte_B|Contador|cont[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[0]~6_combout\ = (!\Parte_B|Contador|Mux1~0_combout\ & (!\Parte_B|Contador|Mux0~1_combout\ & ((\Parte_B|Contador|opcion\(2)) # (!\Parte_B|Contador|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|opcion\(2),
	datac => \Parte_B|Contador|Mux3~0_combout\,
	datad => \Parte_B|Contador|Mux0~1_combout\,
	combout => \Parte_B|Contador|cont[0]~6_combout\);

-- Location: LCCOMB_X25_Y8_N24
\Parte_B|Contador|cont[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[0]~15_combout\ = (!\Parte_B|Contador|contador~8_combout\ & (((\Parte_B|Contador|Mux2~1_combout\) # (!\Parte_B|Contador|cont[0]~6_combout\)) # (!\Parte_B|Contador|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux4~0_combout\,
	datab => \Parte_B|Contador|Mux2~1_combout\,
	datac => \Parte_B|Contador|cont[0]~6_combout\,
	datad => \Parte_B|Contador|contador~8_combout\,
	combout => \Parte_B|Contador|cont[0]~15_combout\);

-- Location: FF_X25_Y8_N13
\Parte_B|Contador|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|cont[0]~7_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	ena => \Parte_B|Contador|cont[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|cont\(0));

-- Location: LCCOMB_X19_Y11_N20
\Parte_B|Contador|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~0_combout\ = ((\Parte_B|Contador|opcion\(3)) # (\Parte_B|Contador|opcion\(4) $ (!\Parte_B|Contador|opcion\(0)))) # (!\Parte_B|Contador|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|opcion\(4),
	datab => \Parte_B|Contador|Mux0~0_combout\,
	datac => \Parte_B|Contador|opcion\(3),
	datad => \Parte_B|Contador|opcion\(0),
	combout => \Parte_B|Contador|contador~0_combout\);

-- Location: LCCOMB_X25_Y8_N14
\Parte_B|Contador|cont[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[1]~9_combout\ = (\Parte_B|Contador|cont\(1) & (!\Parte_B|Contador|cont[0]~8\)) # (!\Parte_B|Contador|cont\(1) & ((\Parte_B|Contador|cont[0]~8\) # (GND)))
-- \Parte_B|Contador|cont[1]~10\ = CARRY((!\Parte_B|Contador|cont[0]~8\) # (!\Parte_B|Contador|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(1),
	datad => VCC,
	cin => \Parte_B|Contador|cont[0]~8\,
	combout => \Parte_B|Contador|cont[1]~9_combout\,
	cout => \Parte_B|Contador|cont[1]~10\);

-- Location: FF_X25_Y8_N15
\Parte_B|Contador|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|cont[1]~9_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	ena => \Parte_B|Contador|cont[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|cont\(1));

-- Location: LCCOMB_X25_Y8_N16
\Parte_B|Contador|cont[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[2]~11_combout\ = (\Parte_B|Contador|cont\(2) & (\Parte_B|Contador|cont[1]~10\ $ (GND))) # (!\Parte_B|Contador|cont\(2) & (!\Parte_B|Contador|cont[1]~10\ & VCC))
-- \Parte_B|Contador|cont[2]~12\ = CARRY((\Parte_B|Contador|cont\(2) & !\Parte_B|Contador|cont[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(2),
	datad => VCC,
	cin => \Parte_B|Contador|cont[1]~10\,
	combout => \Parte_B|Contador|cont[2]~11_combout\,
	cout => \Parte_B|Contador|cont[2]~12\);

-- Location: FF_X25_Y8_N17
\Parte_B|Contador|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|cont[2]~11_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	ena => \Parte_B|Contador|cont[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|cont\(2));

-- Location: LCCOMB_X25_Y8_N18
\Parte_B|Contador|cont[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[3]~13_combout\ = (\Parte_B|Contador|cont\(3) & (!\Parte_B|Contador|cont[2]~12\)) # (!\Parte_B|Contador|cont\(3) & ((\Parte_B|Contador|cont[2]~12\) # (GND)))
-- \Parte_B|Contador|cont[3]~14\ = CARRY((!\Parte_B|Contador|cont[2]~12\) # (!\Parte_B|Contador|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(3),
	datad => VCC,
	cin => \Parte_B|Contador|cont[2]~12\,
	combout => \Parte_B|Contador|cont[3]~13_combout\,
	cout => \Parte_B|Contador|cont[3]~14\);

-- Location: FF_X25_Y8_N19
\Parte_B|Contador|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|cont[3]~13_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	ena => \Parte_B|Contador|cont[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|cont\(3));

-- Location: LCCOMB_X25_Y8_N20
\Parte_B|Contador|cont[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[4]~16_combout\ = (\Parte_B|Contador|cont\(4) & (\Parte_B|Contador|cont[3]~14\ $ (GND))) # (!\Parte_B|Contador|cont\(4) & (!\Parte_B|Contador|cont[3]~14\ & VCC))
-- \Parte_B|Contador|cont[4]~17\ = CARRY((\Parte_B|Contador|cont\(4) & !\Parte_B|Contador|cont[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(4),
	datad => VCC,
	cin => \Parte_B|Contador|cont[3]~14\,
	combout => \Parte_B|Contador|cont[4]~16_combout\,
	cout => \Parte_B|Contador|cont[4]~17\);

-- Location: FF_X25_Y8_N21
\Parte_B|Contador|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|cont[4]~16_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	ena => \Parte_B|Contador|cont[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|cont\(4));

-- Location: LCCOMB_X25_Y8_N22
\Parte_B|Contador|cont[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|cont[5]~18_combout\ = \Parte_B|Contador|cont\(5) $ (\Parte_B|Contador|cont[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(5),
	cin => \Parte_B|Contador|cont[4]~17\,
	combout => \Parte_B|Contador|cont[5]~18_combout\);

-- Location: FF_X25_Y8_N23
\Parte_B|Contador|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|cont[5]~18_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	ena => \Parte_B|Contador|cont[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|cont\(5));

-- Location: LCCOMB_X25_Y8_N30
\Parte_B|Contador|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~1_combout\ = (\Parte_B|Contador|cont\(2) & (!\Parte_B|Contador|cont\(5) & !\Parte_B|Contador|cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(2),
	datac => \Parte_B|Contador|cont\(5),
	datad => \Parte_B|Contador|cont\(4),
	combout => \Parte_B|Contador|contador~1_combout\);

-- Location: LCCOMB_X25_Y8_N4
\Parte_B|Contador|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~2_combout\ = (\Parte_B|Contador|contador~0_combout\ & (!\Parte_B|Contador|cont\(1) & (\Parte_B|Contador|contador~1_combout\ & !\Parte_B|Contador|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contador~0_combout\,
	datab => \Parte_B|Contador|cont\(1),
	datac => \Parte_B|Contador|contador~1_combout\,
	datad => \Parte_B|Contador|cont\(3),
	combout => \Parte_B|Contador|contador~2_combout\);

-- Location: LCCOMB_X19_Y11_N8
\Parte_B|Contador|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~3_combout\ = (\Parte_B|Contador|opcion\(2) $ (!\Parte_B|Contador|opcion\(1))) # (!\Parte_B|Contador|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|opcion\(2),
	datac => \Parte_B|Contador|Mux2~0_combout\,
	datad => \Parte_B|Contador|opcion\(1),
	combout => \Parte_B|Contador|contador~3_combout\);

-- Location: LCCOMB_X25_Y8_N26
\Parte_B|Contador|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~4_combout\ = (\Parte_B|Contador|cont\(1) & ((\Parte_B|Contador|cont\(5)) # (\Parte_B|Contador|cont\(3)))) # (!\Parte_B|Contador|cont\(1) & (\Parte_B|Contador|cont\(5) & \Parte_B|Contador|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(1),
	datac => \Parte_B|Contador|cont\(5),
	datad => \Parte_B|Contador|cont\(3),
	combout => \Parte_B|Contador|contador~4_combout\);

-- Location: LCCOMB_X25_Y8_N28
\Parte_B|Contador|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~5_combout\ = (\Parte_B|Contador|cont\(4) & (!\Parte_B|Contador|cont\(2) & (!\Parte_B|Contador|contador~4_combout\ & \Parte_B|Contador|cont\(3)))) # (!\Parte_B|Contador|cont\(4) & (\Parte_B|Contador|cont\(2) & 
-- (\Parte_B|Contador|contador~4_combout\ & !\Parte_B|Contador|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(4),
	datab => \Parte_B|Contador|cont\(2),
	datac => \Parte_B|Contador|contador~4_combout\,
	datad => \Parte_B|Contador|cont\(3),
	combout => \Parte_B|Contador|contador~5_combout\);

-- Location: LCCOMB_X25_Y8_N2
\Parte_B|Contador|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~6_combout\ = (\Parte_B|Contador|contador~5_combout\ & ((\Parte_B|Contador|cont\(2) & ((\Parte_B|Contador|Mux0~1_combout\))) # (!\Parte_B|Contador|cont\(2) & (!\Parte_B|Contador|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux4~0_combout\,
	datab => \Parte_B|Contador|cont\(2),
	datac => \Parte_B|Contador|Mux0~1_combout\,
	datad => \Parte_B|Contador|contador~5_combout\,
	combout => \Parte_B|Contador|contador~6_combout\);

-- Location: LCCOMB_X25_Y8_N0
\Parte_B|Contador|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~7_combout\ = (\Parte_B|Contador|contador~3_combout\ & ((\Parte_B|Contador|cont\(0)) # (\Parte_B|Contador|contador~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(0),
	datac => \Parte_B|Contador|contador~3_combout\,
	datad => \Parte_B|Contador|contador~6_combout\,
	combout => \Parte_B|Contador|contador~7_combout\);

-- Location: LCCOMB_X25_Y8_N6
\Parte_B|Contador|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contador~8_combout\ = (\Parte_B|Contador|cont\(0) & (!\Parte_B|Contador|Mux1~0_combout\ & (\Parte_B|Contador|contador~2_combout\ & !\Parte_B|Contador|contador~7_combout\))) # (!\Parte_B|Contador|cont\(0) & 
-- ((\Parte_B|Contador|Mux1~0_combout\ & (\Parte_B|Contador|contador~2_combout\)) # (!\Parte_B|Contador|Mux1~0_combout\ & ((\Parte_B|Contador|contador~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(0),
	datab => \Parte_B|Contador|Mux1~0_combout\,
	datac => \Parte_B|Contador|contador~2_combout\,
	datad => \Parte_B|Contador|contador~7_combout\,
	combout => \Parte_B|Contador|contador~8_combout\);

-- Location: LCCOMB_X25_Y8_N8
\Parte_B|Contador|contTosend_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contTosend_ready~feeder_combout\ = \Parte_B|Contador|contador~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Contador|contador~8_combout\,
	combout => \Parte_B|Contador|contTosend_ready~feeder_combout\);

-- Location: FF_X25_Y8_N9
\Parte_B|Contador|contTosend_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contTosend_ready~feeder_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contTosend_ready~q\);

-- Location: LCCOMB_X24_Y8_N8
\Parte_B|FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|Selector0~0_combout\ = (\Parte_B|Contador|contTosend_ready~q\ & (\Parte_A|FSM|current_state.finished~q\ & ((\Parte_B|FSM|current_state.start~q\) # (\Parte_B|FSM|current_state.espera~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contTosend_ready~q\,
	datab => \Parte_A|FSM|current_state.finished~q\,
	datac => \Parte_B|FSM|current_state.start~q\,
	datad => \Parte_B|FSM|current_state.espera~q\,
	combout => \Parte_B|FSM|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\mod_lcd|fsm|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Mux0~1_combout\ = (\sincronizadores:1:sinc|syncin~q\ & (!\sincronizadores:2:sinc|syncin~q\ & (!\sincronizadores:0:sinc|syncin~q\ & !\sincronizadores:3:sinc|syncin~q\))) # (!\sincronizadores:1:sinc|syncin~q\ & 
-- ((\sincronizadores:2:sinc|syncin~q\ & (!\sincronizadores:0:sinc|syncin~q\ & !\sincronizadores:3:sinc|syncin~q\)) # (!\sincronizadores:2:sinc|syncin~q\ & (\sincronizadores:0:sinc|syncin~q\ $ (\sincronizadores:3:sinc|syncin~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:1:sinc|syncin~q\,
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \sincronizadores:0:sinc|syncin~q\,
	datad => \sincronizadores:3:sinc|syncin~q\,
	combout => \mod_lcd|fsm|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y14_N0
\mod_lcd|fsm|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Mux0~2_combout\ = (\sincronizadores:4:sinc|syncin~q\ & ((\mod_lcd|fsm|Mux0~0_combout\))) # (!\sincronizadores:4:sinc|syncin~q\ & (\mod_lcd|fsm|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:4:sinc|syncin~q\,
	datac => \mod_lcd|fsm|Mux0~1_combout\,
	datad => \mod_lcd|fsm|Mux0~0_combout\,
	combout => \mod_lcd|fsm|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y8_N2
\Parte_B|FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|Selector0~1_combout\ = ((\Parte_B|FSM|Selector0~0_combout\) # ((\Parte_B|FSM|current_state.ready~q\ & !\mod_lcd|fsm|Mux0~2_combout\))) # (!\Parte_B|FSM|current_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.ready~q\,
	datab => \Parte_B|FSM|current_state.idle~q\,
	datac => \Parte_B|FSM|Selector0~0_combout\,
	datad => \mod_lcd|fsm|Mux0~2_combout\,
	combout => \Parte_B|FSM|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y8_N6
\Parte_B|FSM|current_state.ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|current_state.ready~feeder_combout\ = \Parte_B|FSM|Selector0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|FSM|Selector0~1_combout\,
	combout => \Parte_B|FSM|current_state.ready~feeder_combout\);

-- Location: FF_X24_Y8_N7
\Parte_B|FSM|current_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|current_state.ready~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.ready~q\);

-- Location: LCCOMB_X12_Y14_N28
\Parte_B|FSM|next_state.entrada_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_2~0_combout\ = (!\sincronizadores:3:sinc|syncin~q\ & (!\sincronizadores:4:sinc|syncin~q\ & (!\sincronizadores:0:sinc|syncin~q\ & \Parte_B|FSM|current_state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:3:sinc|syncin~q\,
	datab => \sincronizadores:4:sinc|syncin~q\,
	datac => \sincronizadores:0:sinc|syncin~q\,
	datad => \Parte_B|FSM|current_state.ready~q\,
	combout => \Parte_B|FSM|next_state.entrada_2~0_combout\);

-- Location: LCCOMB_X12_Y14_N6
\Parte_B|FSM|next_state.entrada_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|next_state.entrada_2~1_combout\ = (\sincronizadores:2:sinc|syncin~q\ & (!\sincronizadores:1:sinc|syncin~q\ & \Parte_B|FSM|next_state.entrada_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \sincronizadores:1:sinc|syncin~q\,
	datad => \Parte_B|FSM|next_state.entrada_2~0_combout\,
	combout => \Parte_B|FSM|next_state.entrada_2~1_combout\);

-- Location: FF_X12_Y14_N7
\Parte_B|FSM|current_state.entrada_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|next_state.entrada_2~1_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.entrada_2~q\);

-- Location: LCCOMB_X12_Y14_N0
\Parte_B|FSM|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|Selector1~1_combout\ = (\Parte_B|FSM|current_state.entrada_2~q\) # ((\Parte_B|FSM|current_state.entrada_1~q\) # ((\Parte_B|FSM|current_state.entrada_3~q\) # (\Parte_B|FSM|current_state.entrada_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.entrada_2~q\,
	datab => \Parte_B|FSM|current_state.entrada_1~q\,
	datac => \Parte_B|FSM|current_state.entrada_3~q\,
	datad => \Parte_B|FSM|current_state.entrada_0~q\,
	combout => \Parte_B|FSM|Selector1~1_combout\);

-- Location: LCCOMB_X14_Y15_N10
\Parte_B|FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|Selector1~0_combout\ = (\Parte_A|FSM|current_state.finished~q\ & ((\Parte_B|FSM|current_state.espera~q\) # (\Parte_B|FSM|current_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.espera~q\,
	datab => \Parte_B|FSM|current_state.start~q\,
	datad => \Parte_A|FSM|current_state.finished~q\,
	combout => \Parte_B|FSM|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y15_N16
\Parte_B|FSM|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|Selector1~2_combout\ = (\Parte_B|FSM|Selector1~1_combout\) # ((\Parte_B|FSM|current_state.entrada_4~q\) # ((!\Parte_B|Contador|contTosend_ready~q\ & \Parte_B|FSM|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|Selector1~1_combout\,
	datab => \Parte_B|FSM|current_state.entrada_4~q\,
	datac => \Parte_B|Contador|contTosend_ready~q\,
	datad => \Parte_B|FSM|Selector1~0_combout\,
	combout => \Parte_B|FSM|Selector1~2_combout\);

-- Location: FF_X14_Y15_N17
\Parte_B|FSM|current_state.contador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|Selector1~2_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.contador~q\);

-- Location: LCCOMB_X1_Y11_N22
\Parte_B|FSM|current_state.memoria~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|current_state.memoria~feeder_combout\ = \Parte_B|FSM|current_state.contador~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|FSM|current_state.contador~q\,
	combout => \Parte_B|FSM|current_state.memoria~feeder_combout\);

-- Location: FF_X1_Y11_N23
\Parte_B|FSM|current_state.memoria\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|current_state.memoria~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.memoria~q\);

-- Location: LCCOMB_X14_Y15_N24
\Parte_B|FSM|current_state.start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|current_state.start~feeder_combout\ = \Parte_B|FSM|current_state.memoria~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|FSM|current_state.memoria~q\,
	combout => \Parte_B|FSM|current_state.start~feeder_combout\);

-- Location: FF_X14_Y15_N25
\Parte_B|FSM|current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|current_state.start~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.start~q\);

-- Location: LCCOMB_X14_Y15_N12
\Parte_B|FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|FSM|Selector2~0_combout\ = (\Parte_B|FSM|current_state.start~q\) # (\Parte_A|FSM|current_state.finished~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|FSM|current_state.start~q\,
	datad => \Parte_A|FSM|current_state.finished~q\,
	combout => \Parte_B|FSM|Selector2~0_combout\);

-- Location: FF_X13_Y15_N17
\Parte_B|FSM|current_state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_B|FSM|current_state.espera~0_combout\,
	clrn => \reset_low~input_o\,
	ena => \Parte_B|FSM|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|FSM|current_state.espera~q\);

-- Location: LCCOMB_X14_Y15_N26
\Parte_A|FSM|next_state.load_shift~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|FSM|next_state.load_shift~0_combout\ = (!\Parte_B|FSM|current_state.espera~q\ & \Parte_B|FSM|current_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|FSM|current_state.espera~q\,
	datab => \Parte_B|FSM|current_state.start~q\,
	combout => \Parte_A|FSM|next_state.load_shift~0_combout\);

-- Location: FF_X14_Y15_N27
\Parte_A|FSM|current_state.load_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|FSM|next_state.load_shift~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|FSM|current_state.load_shift~q\);

-- Location: CLKCTRL_G1
\Parte_B|FSM|current_state.memoria~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Parte_B|FSM|current_state.memoria~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y8_N18
\Parte_B|Contador|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add1~0_combout\ = \Parte_B|Contador|cont\(0) $ (VCC)
-- \Parte_B|Contador|Add1~1\ = CARRY(\Parte_B|Contador|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(0),
	datad => VCC,
	combout => \Parte_B|Contador|Add1~0_combout\,
	cout => \Parte_B|Contador|Add1~1\);

-- Location: LCCOMB_X24_Y8_N20
\Parte_B|Contador|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add1~2_combout\ = (\Parte_B|Contador|cont\(1) & (!\Parte_B|Contador|Add1~1\)) # (!\Parte_B|Contador|cont\(1) & ((\Parte_B|Contador|Add1~1\) # (GND)))
-- \Parte_B|Contador|Add1~3\ = CARRY((!\Parte_B|Contador|Add1~1\) # (!\Parte_B|Contador|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(1),
	datad => VCC,
	cin => \Parte_B|Contador|Add1~1\,
	combout => \Parte_B|Contador|Add1~2_combout\,
	cout => \Parte_B|Contador|Add1~3\);

-- Location: LCCOMB_X24_Y8_N22
\Parte_B|Contador|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add1~4_combout\ = (\Parte_B|Contador|cont\(2) & ((GND) # (!\Parte_B|Contador|Add1~3\))) # (!\Parte_B|Contador|cont\(2) & (\Parte_B|Contador|Add1~3\ $ (GND)))
-- \Parte_B|Contador|Add1~5\ = CARRY((\Parte_B|Contador|cont\(2)) # (!\Parte_B|Contador|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(2),
	datad => VCC,
	cin => \Parte_B|Contador|Add1~3\,
	combout => \Parte_B|Contador|Add1~4_combout\,
	cout => \Parte_B|Contador|Add1~5\);

-- Location: LCCOMB_X24_Y8_N14
\Parte_B|Contador|contToaddress_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[2]~3_combout\ = (!\Parte_B|Contador|Mux1~0_combout\ & ((\Parte_B|Contador|Mux2~1_combout\ & ((\Parte_B|Contador|Add1~4_combout\))) # (!\Parte_B|Contador|Mux2~1_combout\ & (\Parte_B|Contador|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux2~1_combout\,
	datab => \Parte_B|Contador|cont\(2),
	datac => \Parte_B|Contador|Add1~4_combout\,
	datad => \Parte_B|Contador|Mux1~0_combout\,
	combout => \Parte_B|Contador|contToaddress_out[2]~3_combout\);

-- Location: LCCOMB_X26_Y8_N16
\Parte_B|Contador|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add2~0_combout\ = \Parte_B|Contador|cont\(1) $ (VCC)
-- \Parte_B|Contador|Add2~1\ = CARRY(\Parte_B|Contador|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(1),
	datad => VCC,
	combout => \Parte_B|Contador|Add2~0_combout\,
	cout => \Parte_B|Contador|Add2~1\);

-- Location: LCCOMB_X26_Y8_N18
\Parte_B|Contador|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add2~2_combout\ = (\Parte_B|Contador|cont\(2) & (!\Parte_B|Contador|Add2~1\)) # (!\Parte_B|Contador|cont\(2) & ((\Parte_B|Contador|Add2~1\) # (GND)))
-- \Parte_B|Contador|Add2~3\ = CARRY((!\Parte_B|Contador|Add2~1\) # (!\Parte_B|Contador|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(2),
	datad => VCC,
	cin => \Parte_B|Contador|Add2~1\,
	combout => \Parte_B|Contador|Add2~2_combout\,
	cout => \Parte_B|Contador|Add2~3\);

-- Location: LCCOMB_X23_Y8_N0
\Parte_B|Contador|contToaddress_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[2]~4_combout\ = (!\Parte_B|Contador|contToaddress_out[2]~3_combout\ & (!\Parte_B|Contador|contador~8_combout\ & ((!\Parte_B|Contador|Add2~2_combout\) # (!\Parte_B|Contador|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|contToaddress_out[2]~3_combout\,
	datac => \Parte_B|Contador|Add2~2_combout\,
	datad => \Parte_B|Contador|contador~8_combout\,
	combout => \Parte_B|Contador|contToaddress_out[2]~4_combout\);

-- Location: FF_X23_Y8_N1
\Parte_B|Contador|contToaddress_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contToaddress_out[2]~4_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out\(2));

-- Location: LCCOMB_X24_Y8_N0
\Parte_B|Contador|contToaddress_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[1]~1_combout\ = (!\Parte_B|Contador|Mux1~0_combout\ & ((\Parte_B|Contador|Mux2~1_combout\ & ((\Parte_B|Contador|Add1~2_combout\))) # (!\Parte_B|Contador|Mux2~1_combout\ & (\Parte_B|Contador|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|Mux2~1_combout\,
	datac => \Parte_B|Contador|cont\(1),
	datad => \Parte_B|Contador|Add1~2_combout\,
	combout => \Parte_B|Contador|contToaddress_out[1]~1_combout\);

-- Location: LCCOMB_X23_Y8_N14
\Parte_B|Contador|contToaddress_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[1]~2_combout\ = (!\Parte_B|Contador|contToaddress_out[1]~1_combout\ & (!\Parte_B|Contador|contador~8_combout\ & ((!\Parte_B|Contador|Add2~0_combout\) # (!\Parte_B|Contador|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|contToaddress_out[1]~1_combout\,
	datac => \Parte_B|Contador|Add2~0_combout\,
	datad => \Parte_B|Contador|contador~8_combout\,
	combout => \Parte_B|Contador|contToaddress_out[1]~2_combout\);

-- Location: FF_X23_Y8_N15
\Parte_B|Contador|contToaddress_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contToaddress_out[1]~2_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out\(1));

-- Location: LCCOMB_X23_Y8_N2
\Parte_B|Contador|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux7~0_combout\ = (\Parte_B|Contador|Mux2~1_combout\ & (\Parte_B|Contador|cont\(0) $ (((\Parte_B|Contador|Add1~0_combout\))))) # (!\Parte_B|Contador|Mux2~1_combout\ & (\Parte_B|Contador|cont\(0) & (\Parte_B|Contador|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(0),
	datab => \Parte_B|Contador|Mux4~0_combout\,
	datac => \Parte_B|Contador|Mux2~1_combout\,
	datad => \Parte_B|Contador|Add1~0_combout\,
	combout => \Parte_B|Contador|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y8_N30
\Parte_B|Contador|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Mux7~1_combout\ = (\Parte_B|Contador|contador~8_combout\) # (\Parte_B|Contador|cont\(0) $ (((!\Parte_B|Contador|cont[0]~6_combout\) # (!\Parte_B|Contador|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(0),
	datab => \Parte_B|Contador|Mux7~0_combout\,
	datac => \Parte_B|Contador|cont[0]~6_combout\,
	datad => \Parte_B|Contador|contador~8_combout\,
	combout => \Parte_B|Contador|Mux7~1_combout\);

-- Location: FF_X23_Y8_N31
\Parte_B|Contador|contToaddress_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|Mux7~1_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out\(0));

-- Location: LCCOMB_X19_Y11_N30
\Parte_B|Contador|contToaddress_out[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[5]~6_combout\ = (!\Parte_B|Contador|Mux1~0_combout\ & (((\Parte_B|Contador|opcion\(2)) # (!\Parte_B|Contador|Mux2~0_combout\)) # (!\Parte_B|Contador|opcion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|opcion\(1),
	datac => \Parte_B|Contador|Mux2~0_combout\,
	datad => \Parte_B|Contador|opcion\(2),
	combout => \Parte_B|Contador|contToaddress_out[5]~6_combout\);

-- Location: LCCOMB_X19_Y11_N4
\Parte_B|Contador|contToaddress_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[5]~5_combout\ = (!\Parte_B|Contador|Mux1~0_combout\ & (\Parte_B|Contador|Mux2~0_combout\ & (\Parte_B|Contador|opcion\(1) $ (\Parte_B|Contador|opcion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|opcion\(1),
	datac => \Parte_B|Contador|Mux2~0_combout\,
	datad => \Parte_B|Contador|opcion\(2),
	combout => \Parte_B|Contador|contToaddress_out[5]~5_combout\);

-- Location: LCCOMB_X26_Y8_N20
\Parte_B|Contador|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add2~4_combout\ = (\Parte_B|Contador|cont\(3) & (\Parte_B|Contador|Add2~3\ $ (GND))) # (!\Parte_B|Contador|cont\(3) & (!\Parte_B|Contador|Add2~3\ & VCC))
-- \Parte_B|Contador|Add2~5\ = CARRY((\Parte_B|Contador|cont\(3) & !\Parte_B|Contador|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(3),
	datad => VCC,
	cin => \Parte_B|Contador|Add2~3\,
	combout => \Parte_B|Contador|Add2~4_combout\,
	cout => \Parte_B|Contador|Add2~5\);

-- Location: LCCOMB_X26_Y8_N22
\Parte_B|Contador|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add2~6_combout\ = (\Parte_B|Contador|cont\(4) & (!\Parte_B|Contador|Add2~5\)) # (!\Parte_B|Contador|cont\(4) & ((\Parte_B|Contador|Add2~5\) # (GND)))
-- \Parte_B|Contador|Add2~7\ = CARRY((!\Parte_B|Contador|Add2~5\) # (!\Parte_B|Contador|cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(4),
	datad => VCC,
	cin => \Parte_B|Contador|Add2~5\,
	combout => \Parte_B|Contador|Add2~6_combout\,
	cout => \Parte_B|Contador|Add2~7\);

-- Location: LCCOMB_X26_Y8_N10
\Parte_B|Contador|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add0~0_combout\ = \Parte_B|Contador|cont\(3) $ (\Parte_B|Contador|cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(3),
	datac => \Parte_B|Contador|cont\(4),
	combout => \Parte_B|Contador|Add0~0_combout\);

-- Location: LCCOMB_X26_Y8_N8
\Parte_B|Contador|contToaddress_out[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[4]~10_combout\ = (\Parte_B|Contador|contToaddress_out[5]~6_combout\ & (\Parte_B|Contador|contToaddress_out[5]~5_combout\)) # (!\Parte_B|Contador|contToaddress_out[5]~6_combout\ & 
-- ((\Parte_B|Contador|contToaddress_out[5]~5_combout\ & ((!\Parte_B|Contador|Add0~0_combout\))) # (!\Parte_B|Contador|contToaddress_out[5]~5_combout\ & (\Parte_B|Contador|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out[5]~6_combout\,
	datab => \Parte_B|Contador|contToaddress_out[5]~5_combout\,
	datac => \Parte_B|Contador|Add2~6_combout\,
	datad => \Parte_B|Contador|Add0~0_combout\,
	combout => \Parte_B|Contador|contToaddress_out[4]~10_combout\);

-- Location: LCCOMB_X24_Y8_N24
\Parte_B|Contador|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add1~6_combout\ = (\Parte_B|Contador|cont\(3) & (\Parte_B|Contador|Add1~5\ & VCC)) # (!\Parte_B|Contador|cont\(3) & (!\Parte_B|Contador|Add1~5\))
-- \Parte_B|Contador|Add1~7\ = CARRY((!\Parte_B|Contador|cont\(3) & !\Parte_B|Contador|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Parte_B|Contador|cont\(3),
	datad => VCC,
	cin => \Parte_B|Contador|Add1~5\,
	combout => \Parte_B|Contador|Add1~6_combout\,
	cout => \Parte_B|Contador|Add1~7\);

-- Location: LCCOMB_X24_Y8_N26
\Parte_B|Contador|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add1~8_combout\ = (\Parte_B|Contador|cont\(4) & ((GND) # (!\Parte_B|Contador|Add1~7\))) # (!\Parte_B|Contador|cont\(4) & (\Parte_B|Contador|Add1~7\ $ (GND)))
-- \Parte_B|Contador|Add1~9\ = CARRY((\Parte_B|Contador|cont\(4)) # (!\Parte_B|Contador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(4),
	datad => VCC,
	cin => \Parte_B|Contador|Add1~7\,
	combout => \Parte_B|Contador|Add1~8_combout\,
	cout => \Parte_B|Contador|Add1~9\);

-- Location: LCCOMB_X26_Y8_N2
\Parte_B|Contador|contToaddress_out[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[4]~11_combout\ = (\Parte_B|Contador|contToaddress_out[5]~6_combout\ & ((\Parte_B|Contador|contToaddress_out[4]~10_combout\ & ((\Parte_B|Contador|Add1~8_combout\))) # (!\Parte_B|Contador|contToaddress_out[4]~10_combout\ 
-- & (\Parte_B|Contador|cont\(4))))) # (!\Parte_B|Contador|contToaddress_out[5]~6_combout\ & (((\Parte_B|Contador|contToaddress_out[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(4),
	datab => \Parte_B|Contador|contToaddress_out[5]~6_combout\,
	datac => \Parte_B|Contador|contToaddress_out[4]~10_combout\,
	datad => \Parte_B|Contador|Add1~8_combout\,
	combout => \Parte_B|Contador|contToaddress_out[4]~11_combout\);

-- Location: LCCOMB_X21_Y8_N8
\Parte_B|Contador|contToaddress_out[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[4]~12_combout\ = (\Parte_B|Contador|contador~8_combout\) # (!\Parte_B|Contador|contToaddress_out[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Parte_B|Contador|contador~8_combout\,
	datad => \Parte_B|Contador|contToaddress_out[4]~11_combout\,
	combout => \Parte_B|Contador|contToaddress_out[4]~12_combout\);

-- Location: FF_X21_Y8_N9
\Parte_B|Contador|contToaddress_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contToaddress_out[4]~12_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out\(4));

-- Location: LCCOMB_X23_Y8_N22
\Parte_B|Memoria|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux5~7_combout\ = (\Parte_B|Contador|contToaddress_out\(1) & ((\Parte_B|Contador|contToaddress_out\(4)) # (\Parte_B|Contador|contToaddress_out\(2) $ (\Parte_B|Contador|contToaddress_out\(0))))) # (!\Parte_B|Contador|contToaddress_out\(1) 
-- & ((\Parte_B|Contador|contToaddress_out\(2)) # ((!\Parte_B|Contador|contToaddress_out\(4)) # (!\Parte_B|Contador|contToaddress_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(2),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux5~7_combout\);

-- Location: LCCOMB_X23_Y8_N4
\Parte_B|Contador|contToaddress_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[0]~0_combout\ = (\Parte_B|Contador|cont[0]~6_combout\ & (!\Parte_B|Contador|Mux2~1_combout\ & (\Parte_B|Contador|Mux4~0_combout\ & !\Parte_B|Contador|contador~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont[0]~6_combout\,
	datab => \Parte_B|Contador|Mux2~1_combout\,
	datac => \Parte_B|Contador|Mux4~0_combout\,
	datad => \Parte_B|Contador|contador~8_combout\,
	combout => \Parte_B|Contador|contToaddress_out[0]~0_combout\);

-- Location: FF_X23_Y8_N5
\Parte_B|Contador|contToaddress_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contToaddress_out[0]~0_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out[0]~en_q\);

-- Location: LCCOMB_X24_Y8_N16
\Parte_B|Contador|contToaddress_out[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[3]~8_combout\ = (\Parte_B|Contador|Mux1~0_combout\ & (\Parte_B|Contador|cont\(3))) # (!\Parte_B|Contador|Mux1~0_combout\ & ((\Parte_B|Contador|contador~3_combout\ & (\Parte_B|Contador|cont\(3))) # 
-- (!\Parte_B|Contador|contador~3_combout\ & ((\Parte_B|Contador|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|Mux1~0_combout\,
	datab => \Parte_B|Contador|cont\(3),
	datac => \Parte_B|Contador|contador~3_combout\,
	datad => \Parte_B|Contador|Add1~6_combout\,
	combout => \Parte_B|Contador|contToaddress_out[3]~8_combout\);

-- Location: LCCOMB_X26_Y8_N4
\Parte_B|Contador|contToaddress_out[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[3]~7_combout\ = (!\Parte_B|Contador|contToaddress_out[5]~6_combout\ & ((\Parte_B|Contador|contToaddress_out[5]~5_combout\ & (!\Parte_B|Contador|cont\(3))) # (!\Parte_B|Contador|contToaddress_out[5]~5_combout\ & 
-- ((\Parte_B|Contador|Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out[5]~6_combout\,
	datab => \Parte_B|Contador|cont\(3),
	datac => \Parte_B|Contador|contToaddress_out[5]~5_combout\,
	datad => \Parte_B|Contador|Add2~4_combout\,
	combout => \Parte_B|Contador|contToaddress_out[3]~7_combout\);

-- Location: LCCOMB_X22_Y8_N6
\Parte_B|Contador|contToaddress_out[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[3]~9_combout\ = (\Parte_B|Contador|contador~8_combout\) # ((!\Parte_B|Contador|contToaddress_out[3]~7_combout\ & ((!\Parte_B|Contador|contToaddress_out[5]~6_combout\) # 
-- (!\Parte_B|Contador|contToaddress_out[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out[3]~8_combout\,
	datab => \Parte_B|Contador|contToaddress_out[3]~7_combout\,
	datac => \Parte_B|Contador|contador~8_combout\,
	datad => \Parte_B|Contador|contToaddress_out[5]~6_combout\,
	combout => \Parte_B|Contador|contToaddress_out[3]~9_combout\);

-- Location: FF_X22_Y8_N7
\Parte_B|Contador|contToaddress_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contToaddress_out[3]~9_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out\(3));

-- Location: LCCOMB_X26_Y8_N24
\Parte_B|Contador|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add2~8_combout\ = \Parte_B|Contador|Add2~7\ $ (\Parte_B|Contador|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Contador|cont\(5),
	cin => \Parte_B|Contador|Add2~7\,
	combout => \Parte_B|Contador|Add2~8_combout\);

-- Location: LCCOMB_X26_Y8_N28
\Parte_B|Contador|contToaddress_out[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[5]~13_combout\ = (\Parte_B|Contador|contToaddress_out[5]~5_combout\ & ((\Parte_B|Contador|cont\(4)) # ((\Parte_B|Contador|cont\(3))))) # (!\Parte_B|Contador|contToaddress_out[5]~5_combout\ & 
-- (((\Parte_B|Contador|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|cont\(4),
	datab => \Parte_B|Contador|cont\(3),
	datac => \Parte_B|Contador|contToaddress_out[5]~5_combout\,
	datad => \Parte_B|Contador|Add2~8_combout\,
	combout => \Parte_B|Contador|contToaddress_out[5]~13_combout\);

-- Location: LCCOMB_X24_Y8_N28
\Parte_B|Contador|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|Add1~10_combout\ = \Parte_B|Contador|Add1~9\ $ (\Parte_B|Contador|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Contador|cont\(5),
	cin => \Parte_B|Contador|Add1~9\,
	combout => \Parte_B|Contador|Add1~10_combout\);

-- Location: LCCOMB_X24_Y8_N10
\Parte_B|Contador|contToaddress_out[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[5]~14_combout\ = (\Parte_B|Contador|contToaddress_out[5]~6_combout\ & ((\Parte_B|Contador|contToaddress_out[5]~5_combout\ & ((\Parte_B|Contador|Add1~10_combout\))) # (!\Parte_B|Contador|contToaddress_out[5]~5_combout\ & 
-- (\Parte_B|Contador|cont\(5))))) # (!\Parte_B|Contador|contToaddress_out[5]~6_combout\ & (\Parte_B|Contador|cont\(5) & (\Parte_B|Contador|contToaddress_out[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out[5]~6_combout\,
	datab => \Parte_B|Contador|cont\(5),
	datac => \Parte_B|Contador|contToaddress_out[5]~5_combout\,
	datad => \Parte_B|Contador|Add1~10_combout\,
	combout => \Parte_B|Contador|contToaddress_out[5]~14_combout\);

-- Location: LCCOMB_X24_Y8_N4
\Parte_B|Contador|contToaddress_out[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Contador|contToaddress_out[5]~15_combout\ = (!\Parte_B|Contador|contador~8_combout\ & (\Parte_B|Contador|contToaddress_out[5]~14_combout\ $ (((\Parte_B|Contador|contToaddress_out[5]~6_combout\) # 
-- (!\Parte_B|Contador|contToaddress_out[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contador~8_combout\,
	datab => \Parte_B|Contador|contToaddress_out[5]~6_combout\,
	datac => \Parte_B|Contador|contToaddress_out[5]~13_combout\,
	datad => \Parte_B|Contador|contToaddress_out[5]~14_combout\,
	combout => \Parte_B|Contador|contToaddress_out[5]~15_combout\);

-- Location: FF_X24_Y8_N5
\Parte_B|Contador|contToaddress_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.contador~clkctrl_outclk\,
	d => \Parte_B|Contador|contToaddress_out[5]~15_combout\,
	clrn => \Parte_B|FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Contador|contToaddress_out\(5));

-- Location: LCCOMB_X23_Y8_N8
\Parte_B|Memoria|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux5~8_combout\ = (((!\Parte_B|Contador|contToaddress_out\(4)) # (!\Parte_B|Contador|contToaddress_out\(0))) # (!\Parte_B|Contador|contToaddress_out\(1))) # (!\Parte_B|Contador|contToaddress_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(2),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux5~8_combout\);

-- Location: LCCOMB_X23_Y8_N12
\Parte_B|Memoria|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux5~5_combout\ = (\Parte_B|Contador|contToaddress_out\(4) & ((\Parte_B|Contador|contToaddress_out\(2) & (\Parte_B|Contador|contToaddress_out\(1))) # (!\Parte_B|Contador|contToaddress_out\(2) & (!\Parte_B|Contador|contToaddress_out\(1) & 
-- \Parte_B|Contador|contToaddress_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(2),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y8_N24
\Parte_B|Memoria|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux5~11_combout\ = (\Parte_B|Contador|contToaddress_out\(5) & (((\Parte_B|Memoria|Mux5~8_combout\)) # (!\Parte_B|Contador|contToaddress_out\(3)))) # (!\Parte_B|Contador|contToaddress_out\(5) & (\Parte_B|Contador|contToaddress_out\(3) & 
-- ((\Parte_B|Memoria|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(5),
	datab => \Parte_B|Contador|contToaddress_out\(3),
	datac => \Parte_B|Memoria|Mux5~8_combout\,
	datad => \Parte_B|Memoria|Mux5~5_combout\,
	combout => \Parte_B|Memoria|Mux5~11_combout\);

-- Location: LCCOMB_X23_Y8_N10
\Parte_B|Memoria|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux5~12_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & (\Parte_B|Memoria|Mux5~11_combout\ & ((\Parte_B|Memoria|Mux5~7_combout\) # (\Parte_B|Contador|contToaddress_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Memoria|Mux5~7_combout\,
	datab => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datac => \Parte_B|Contador|contToaddress_out\(3),
	datad => \Parte_B|Memoria|Mux5~11_combout\,
	combout => \Parte_B|Memoria|Mux5~12_combout\);

-- Location: LCCOMB_X22_Y8_N14
\Parte_B|Memoria|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux1~7_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & (!\Parte_B|Contador|contToaddress_out\(2) & (!\Parte_B|Contador|contToaddress_out\(0) & !\Parte_B|Contador|contToaddress_out\(1)))) # (!\Parte_B|Contador|contToaddress_out\(3) & 
-- ((\Parte_B|Contador|contToaddress_out\(0) $ (!\Parte_B|Contador|contToaddress_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(2),
	datac => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Contador|contToaddress_out\(1),
	combout => \Parte_B|Memoria|Mux1~7_combout\);

-- Location: LCCOMB_X22_Y8_N24
\Parte_B|Memoria|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux1~5_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & (\Parte_B|Contador|contToaddress_out\(0) $ (((\Parte_B|Contador|contToaddress_out\(1) & \Parte_B|Contador|contToaddress_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(2),
	datad => \Parte_B|Contador|contToaddress_out\(3),
	combout => \Parte_B|Memoria|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y8_N12
\Parte_B|Memoria|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux1~8_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & (\Parte_B|Contador|contToaddress_out\(1) $ (((\Parte_B|Contador|contToaddress_out\(2)) # (!\Parte_B|Contador|contToaddress_out\(0)))))) # 
-- (!\Parte_B|Contador|contToaddress_out\(3) & ((\Parte_B|Contador|contToaddress_out\(2) & (\Parte_B|Contador|contToaddress_out\(0))) # (!\Parte_B|Contador|contToaddress_out\(2) & ((!\Parte_B|Contador|contToaddress_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(2),
	datac => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Contador|contToaddress_out\(1),
	combout => \Parte_B|Memoria|Mux1~8_combout\);

-- Location: LCCOMB_X22_Y8_N0
\Parte_B|Memoria|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux1~11_combout\ = (\Parte_B|Contador|contToaddress_out\(4) & ((\Parte_B|Contador|contToaddress_out\(5) & ((\Parte_B|Memoria|Mux1~8_combout\))) # (!\Parte_B|Contador|contToaddress_out\(5) & (\Parte_B|Memoria|Mux1~5_combout\)))) # 
-- (!\Parte_B|Contador|contToaddress_out\(4) & (((\Parte_B|Contador|contToaddress_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(4),
	datab => \Parte_B|Memoria|Mux1~5_combout\,
	datac => \Parte_B|Contador|contToaddress_out\(5),
	datad => \Parte_B|Memoria|Mux1~8_combout\,
	combout => \Parte_B|Memoria|Mux1~11_combout\);

-- Location: LCCOMB_X22_Y8_N2
\Parte_B|Memoria|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux1~12_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & (\Parte_B|Memoria|Mux1~11_combout\ & ((\Parte_B|Contador|contToaddress_out\(4)) # (\Parte_B|Memoria|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(4),
	datab => \Parte_B|Memoria|Mux1~7_combout\,
	datac => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datad => \Parte_B|Memoria|Mux1~11_combout\,
	combout => \Parte_B|Memoria|Mux1~12_combout\);

-- Location: LCCOMB_X21_Y8_N4
\Parte_B|Memoria|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux2~7_combout\ = (\Parte_B|Contador|contToaddress_out\(0) & ((\Parte_B|Contador|contToaddress_out\(2) $ (\Parte_B|Contador|contToaddress_out\(1))))) # (!\Parte_B|Contador|contToaddress_out\(0) & (!\Parte_B|Contador|contToaddress_out\(1) 
-- & (\Parte_B|Contador|contToaddress_out\(4) $ (\Parte_B|Contador|contToaddress_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(2),
	datad => \Parte_B|Contador|contToaddress_out\(1),
	combout => \Parte_B|Memoria|Mux2~7_combout\);

-- Location: LCCOMB_X21_Y8_N14
\Parte_B|Memoria|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux2~8_combout\ = (\Parte_B|Contador|contToaddress_out\(0) & ((\Parte_B|Contador|contToaddress_out\(2) $ (!\Parte_B|Contador|contToaddress_out\(1))) # (!\Parte_B|Contador|contToaddress_out\(4)))) # 
-- (!\Parte_B|Contador|contToaddress_out\(0) & (((!\Parte_B|Contador|contToaddress_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(2),
	datad => \Parte_B|Contador|contToaddress_out\(1),
	combout => \Parte_B|Memoria|Mux2~8_combout\);

-- Location: LCCOMB_X21_Y8_N30
\Parte_B|Memoria|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux2~5_combout\ = (\Parte_B|Contador|contToaddress_out\(4) & ((\Parte_B|Contador|contToaddress_out\(0)) # ((\Parte_B|Contador|contToaddress_out\(2) & \Parte_B|Contador|contToaddress_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(2),
	datad => \Parte_B|Contador|contToaddress_out\(1),
	combout => \Parte_B|Memoria|Mux2~5_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Parte_B|Memoria|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux2~11_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & ((\Parte_B|Contador|contToaddress_out\(5) & (\Parte_B|Memoria|Mux2~8_combout\)) # (!\Parte_B|Contador|contToaddress_out\(5) & ((\Parte_B|Memoria|Mux2~5_combout\))))) # 
-- (!\Parte_B|Contador|contToaddress_out\(3) & (((\Parte_B|Contador|contToaddress_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Memoria|Mux2~8_combout\,
	datac => \Parte_B|Memoria|Mux2~5_combout\,
	datad => \Parte_B|Contador|contToaddress_out\(5),
	combout => \Parte_B|Memoria|Mux2~11_combout\);

-- Location: LCCOMB_X21_Y8_N26
\Parte_B|Memoria|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux2~12_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & (\Parte_B|Memoria|Mux2~11_combout\ & ((\Parte_B|Contador|contToaddress_out\(3)) # (\Parte_B|Memoria|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datac => \Parte_B|Memoria|Mux2~7_combout\,
	datad => \Parte_B|Memoria|Mux2~11_combout\,
	combout => \Parte_B|Memoria|Mux2~12_combout\);

-- Location: LCCOMB_X23_Y8_N20
\Parte_B|Memoria|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux4~7_combout\ = (!\Parte_B|Contador|contToaddress_out\(0) & (!\Parte_B|Contador|contToaddress_out\(1) & (\Parte_B|Contador|contToaddress_out\(3) & \Parte_B|Contador|contToaddress_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(3),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y8_N26
\Parte_B|Memoria|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux4~8_combout\ = (\Parte_B|Contador|contToaddress_out\(1) & ((\Parte_B|Contador|contToaddress_out\(0) & (!\Parte_B|Contador|contToaddress_out\(3))) # (!\Parte_B|Contador|contToaddress_out\(0) & (\Parte_B|Contador|contToaddress_out\(3) & 
-- !\Parte_B|Contador|contToaddress_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(3),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux4~8_combout\);

-- Location: LCCOMB_X23_Y8_N18
\Parte_B|Memoria|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux4~5_combout\ = (\Parte_B|Contador|contToaddress_out\(1) & (\Parte_B|Contador|contToaddress_out\(0) $ (((!\Parte_B|Contador|contToaddress_out\(3) & !\Parte_B|Contador|contToaddress_out\(4)))))) # 
-- (!\Parte_B|Contador|contToaddress_out\(1) & (\Parte_B|Contador|contToaddress_out\(0) & (\Parte_B|Contador|contToaddress_out\(3) & \Parte_B|Contador|contToaddress_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(3),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux4~5_combout\);

-- Location: LCCOMB_X23_Y8_N16
\Parte_B|Memoria|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux4~11_combout\ = (\Parte_B|Contador|contToaddress_out\(5) & ((\Parte_B|Contador|contToaddress_out\(2) & (\Parte_B|Memoria|Mux4~8_combout\)) # (!\Parte_B|Contador|contToaddress_out\(2) & ((\Parte_B|Memoria|Mux4~5_combout\))))) # 
-- (!\Parte_B|Contador|contToaddress_out\(5) & (\Parte_B|Contador|contToaddress_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(5),
	datab => \Parte_B|Contador|contToaddress_out\(2),
	datac => \Parte_B|Memoria|Mux4~8_combout\,
	datad => \Parte_B|Memoria|Mux4~5_combout\,
	combout => \Parte_B|Memoria|Mux4~11_combout\);

-- Location: LCCOMB_X23_Y8_N6
\Parte_B|Memoria|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux4~12_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & (\Parte_B|Memoria|Mux4~11_combout\ & ((\Parte_B|Contador|contToaddress_out\(5)) # (\Parte_B|Memoria|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(5),
	datab => \Parte_B|Memoria|Mux4~7_combout\,
	datac => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datad => \Parte_B|Memoria|Mux4~11_combout\,
	combout => \Parte_B|Memoria|Mux4~12_combout\);

-- Location: LCCOMB_X21_Y8_N10
\Parte_B|Memoria|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux6~2_combout\ = (\Parte_B|Contador|contToaddress_out\(2) & (!\Parte_B|Contador|contToaddress_out\(0) & (!\Parte_B|Contador|contToaddress_out\(1) & \Parte_B|Contador|contToaddress_out\(5)))) # (!\Parte_B|Contador|contToaddress_out\(2) & 
-- ((\Parte_B|Contador|contToaddress_out\(1) $ (!\Parte_B|Contador|contToaddress_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out\(2),
	datac => \Parte_B|Contador|contToaddress_out\(1),
	datad => \Parte_B|Contador|contToaddress_out\(5),
	combout => \Parte_B|Memoria|Mux6~2_combout\);

-- Location: LCCOMB_X21_Y8_N0
\Parte_B|Memoria|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux6~3_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & ((\Parte_B|Contador|contToaddress_out\(5)) # ((\Parte_B|Contador|contToaddress_out\(4) & !\Parte_B|Memoria|Mux6~2_combout\)))) # (!\Parte_B|Contador|contToaddress_out\(3) & 
-- (\Parte_B|Contador|contToaddress_out\(5) & ((!\Parte_B|Memoria|Mux6~2_combout\) # (!\Parte_B|Contador|contToaddress_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(5),
	datad => \Parte_B|Memoria|Mux6~2_combout\,
	combout => \Parte_B|Memoria|Mux6~3_combout\);

-- Location: LCCOMB_X21_Y8_N6
\Parte_B|Memoria|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux6~4_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & (\Parte_B|Memoria|Mux6~3_combout\ & ((\Parte_B|Contador|contToaddress_out\(5)) # (!\Parte_B|Memoria|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Memoria|Mux6~2_combout\,
	datab => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datac => \Parte_B|Contador|contToaddress_out\(5),
	datad => \Parte_B|Memoria|Mux6~3_combout\,
	combout => \Parte_B|Memoria|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y8_N8
\Parte_B|Memoria|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux0~14_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & ((\Parte_B|Contador|contToaddress_out\(1) & ((\Parte_B|Contador|contToaddress_out\(4)) # (!\Parte_B|Contador|contToaddress_out\(2)))) # 
-- (!\Parte_B|Contador|contToaddress_out\(1) & ((!\Parte_B|Contador|contToaddress_out\(4)))))) # (!\Parte_B|Contador|contToaddress_out\(3) & (\Parte_B|Contador|contToaddress_out\(2) $ (((!\Parte_B|Contador|contToaddress_out\(1) & 
-- \Parte_B|Contador|contToaddress_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(2),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux0~14_combout\);

-- Location: LCCOMB_X22_Y8_N30
\Parte_B|Memoria|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux0~15_combout\ = (\Parte_B|Contador|contToaddress_out\(5) & ((\Parte_B|Memoria|Mux0~14_combout\) # ((\Parte_B|Contador|contToaddress_out\(3) & \Parte_B|Contador|contToaddress_out\(4))))) # (!\Parte_B|Contador|contToaddress_out\(5) & 
-- (\Parte_B|Contador|contToaddress_out\(3) & (\Parte_B|Memoria|Mux0~14_combout\ & \Parte_B|Contador|contToaddress_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(5),
	datac => \Parte_B|Memoria|Mux0~14_combout\,
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux0~15_combout\);

-- Location: LCCOMB_X22_Y8_N4
\Parte_B|Memoria|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux0~12_combout\ = (\Parte_B|Contador|contToaddress_out\(1) & ((\Parte_B|Contador|contToaddress_out\(2) & ((!\Parte_B|Contador|contToaddress_out\(4)))) # (!\Parte_B|Contador|contToaddress_out\(2) & (\Parte_B|Contador|contToaddress_out\(3) 
-- & \Parte_B|Contador|contToaddress_out\(4))))) # (!\Parte_B|Contador|contToaddress_out\(1) & (!\Parte_B|Contador|contToaddress_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(2),
	datad => \Parte_B|Contador|contToaddress_out\(4),
	combout => \Parte_B|Memoria|Mux0~12_combout\);

-- Location: LCCOMB_X22_Y8_N10
\Parte_B|Memoria|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux0~13_combout\ = (\Parte_B|Memoria|Mux0~12_combout\ & (\Parte_B|Contador|contToaddress_out\(5) $ (((\Parte_B|Contador|contToaddress_out\(3) & \Parte_B|Contador|contToaddress_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Memoria|Mux0~12_combout\,
	datad => \Parte_B|Contador|contToaddress_out\(5),
	combout => \Parte_B|Memoria|Mux0~13_combout\);

-- Location: LCCOMB_X22_Y8_N22
\Parte_B|Memoria|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux0~11_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & ((\Parte_B|Contador|contToaddress_out\(0) & ((\Parte_B|Memoria|Mux0~13_combout\))) # (!\Parte_B|Contador|contToaddress_out\(0) & (\Parte_B|Memoria|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(0),
	datab => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datac => \Parte_B|Memoria|Mux0~15_combout\,
	datad => \Parte_B|Memoria|Mux0~13_combout\,
	combout => \Parte_B|Memoria|Mux0~11_combout\);

-- Location: LCCOMB_X21_Y8_N16
\Parte_B|Memoria|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux3~14_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & (!\Parte_B|Contador|contToaddress_out\(1) & ((\Parte_B|Contador|contToaddress_out\(4)) # (\Parte_B|Contador|contToaddress_out\(5))))) # 
-- (!\Parte_B|Contador|contToaddress_out\(3) & (\Parte_B|Contador|contToaddress_out\(5) & (\Parte_B|Contador|contToaddress_out\(4) $ (\Parte_B|Contador|contToaddress_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(1),
	datad => \Parte_B|Contador|contToaddress_out\(5),
	combout => \Parte_B|Memoria|Mux3~14_combout\);

-- Location: LCCOMB_X21_Y8_N22
\Parte_B|Memoria|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux3~15_combout\ = (\Parte_B|Memoria|Mux3~14_combout\ & ((\Parte_B|Contador|contToaddress_out\(5) & (\Parte_B|Contador|contToaddress_out\(1) $ (!\Parte_B|Contador|contToaddress_out\(0)))) # (!\Parte_B|Contador|contToaddress_out\(5) & 
-- (!\Parte_B|Contador|contToaddress_out\(1) & \Parte_B|Contador|contToaddress_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(5),
	datab => \Parte_B|Contador|contToaddress_out\(1),
	datac => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Memoria|Mux3~14_combout\,
	combout => \Parte_B|Memoria|Mux3~15_combout\);

-- Location: LCCOMB_X21_Y8_N12
\Parte_B|Memoria|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux3~9_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & (\Parte_B|Contador|contToaddress_out\(4) & (\Parte_B|Contador|contToaddress_out\(1) $ (\Parte_B|Contador|contToaddress_out\(5))))) # (!\Parte_B|Contador|contToaddress_out\(3) & 
-- (\Parte_B|Contador|contToaddress_out\(5) & ((\Parte_B|Contador|contToaddress_out\(1)) # (!\Parte_B|Contador|contToaddress_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(1),
	datad => \Parte_B|Contador|contToaddress_out\(5),
	combout => \Parte_B|Memoria|Mux3~9_combout\);

-- Location: LCCOMB_X21_Y8_N2
\Parte_B|Memoria|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux3~10_combout\ = (\Parte_B|Contador|contToaddress_out\(3) & ((\Parte_B|Contador|contToaddress_out\(4) & (\Parte_B|Contador|contToaddress_out\(1))) # (!\Parte_B|Contador|contToaddress_out\(4) & 
-- ((\Parte_B|Contador|contToaddress_out\(5)))))) # (!\Parte_B|Contador|contToaddress_out\(3) & (((!\Parte_B|Contador|contToaddress_out\(1) & \Parte_B|Contador|contToaddress_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out\(3),
	datab => \Parte_B|Contador|contToaddress_out\(4),
	datac => \Parte_B|Contador|contToaddress_out\(1),
	datad => \Parte_B|Contador|contToaddress_out\(5),
	combout => \Parte_B|Memoria|Mux3~10_combout\);

-- Location: LCCOMB_X21_Y8_N18
\Parte_B|Memoria|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux3~8_combout\ = (\Parte_B|Contador|contToaddress_out\(0) & ((\Parte_B|Memoria|Mux3~10_combout\))) # (!\Parte_B|Contador|contToaddress_out\(0) & (\Parte_B|Memoria|Mux3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Memoria|Mux3~9_combout\,
	datab => \Parte_B|Contador|contToaddress_out\(0),
	datad => \Parte_B|Memoria|Mux3~10_combout\,
	combout => \Parte_B|Memoria|Mux3~8_combout\);

-- Location: LCCOMB_X21_Y8_N28
\Parte_B|Memoria|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|Mux3~13_combout\ = (!\Parte_B|Contador|contToaddress_out[0]~en_q\ & ((\Parte_B|Contador|contToaddress_out\(2) & ((\Parte_B|Memoria|Mux3~8_combout\))) # (!\Parte_B|Contador|contToaddress_out\(2) & (\Parte_B|Memoria|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Contador|contToaddress_out[0]~en_q\,
	datab => \Parte_B|Contador|contToaddress_out\(2),
	datac => \Parte_B|Memoria|Mux3~15_combout\,
	datad => \Parte_B|Memoria|Mux3~8_combout\,
	combout => \Parte_B|Memoria|Mux3~13_combout\);

-- Location: LCCOMB_X22_Y8_N20
\Parte_B|Memoria|bit_test~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|bit_test~0_combout\ = \Parte_B|Memoria|Mux4~12_combout\ $ (\Parte_B|Memoria|Mux6~4_combout\ $ (\Parte_B|Memoria|Mux0~11_combout\ $ (\Parte_B|Memoria|Mux3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Memoria|Mux4~12_combout\,
	datab => \Parte_B|Memoria|Mux6~4_combout\,
	datac => \Parte_B|Memoria|Mux0~11_combout\,
	datad => \Parte_B|Memoria|Mux3~13_combout\,
	combout => \Parte_B|Memoria|bit_test~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\Parte_B|Memoria|bit_test~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|bit_test~1_combout\ = \Parte_B|Memoria|Mux5~12_combout\ $ (\Parte_B|Memoria|Mux1~12_combout\ $ (\Parte_B|Memoria|Mux2~12_combout\ $ (!\Parte_B|Memoria|bit_test~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Memoria|Mux5~12_combout\,
	datab => \Parte_B|Memoria|Mux1~12_combout\,
	datac => \Parte_B|Memoria|Mux2~12_combout\,
	datad => \Parte_B|Memoria|bit_test~0_combout\,
	combout => \Parte_B|Memoria|bit_test~1_combout\);

-- Location: FF_X22_Y8_N17
\Parte_B|Memoria|dato_ok[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	d => \Parte_B|Memoria|bit_test~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(1));

-- Location: LCCOMB_X22_Y7_N16
\Parte_A|Reg|reg_despl:0:primero:priff|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:0:primero:priff|q~3_combout\ = !\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	combout => \Parte_A|Reg|reg_despl:0:primero:priff|q~3_combout\);

-- Location: LCCOMB_X23_Y7_N0
\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~0_combout\ = (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (!\reset_low~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_low~input_o\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~0_combout\);

-- Location: FF_X23_Y7_N31
\Parte_A|Reg|reg_despl:0:primero:priff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	asdata => \Parte_A|Reg|reg_despl:0:primero:priff|q~3_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:0:primero:priff|q~_emulated_q\);

-- Location: LCCOMB_X23_Y7_N30
\Parte_A|Reg|reg_despl:0:primero:priff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:0:primero:priff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:0:primero:priff|q~_emulated_q\ $ (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_low~input_o\,
	datab => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	datac => \Parte_A|Reg|reg_despl:0:primero:priff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	combout => \Parte_A|Reg|reg_despl:0:primero:priff|q~0_combout\);

-- Location: LCCOMB_X23_Y7_N6
\Parte_A|Reg|reg_despl:1:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:1:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & (\Parte_B|Memoria|dato_ok\(1))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- ((\Parte_A|Reg|reg_despl:0:primero:priff|q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_B|Memoria|dato_ok\(1),
	datab => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datac => \Parte_A|Reg|reg_despl:0:primero:priff|q~0_combout\,
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:1:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N7
\Parte_A|Reg|reg_despl:1:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:1:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:1:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X23_Y7_N4
\Parte_A|Reg|reg_despl:1:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:1:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:1:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	datac => \reset_low~input_o\,
	datad => \Parte_A|Reg|reg_despl:1:medios:medff|q~_emulated_q\,
	combout => \Parte_A|Reg|reg_despl:1:medios:medff|q~0_combout\);

-- Location: LCCOMB_X23_Y7_N8
\Parte_A|Reg|reg_despl:2:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:2:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|Reg|reg_despl:1:medios:medff|q~0_combout\ & !\Parte_A|FSM|current_state.load_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datac => \Parte_A|Reg|reg_despl:1:medios:medff|q~0_combout\,
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:2:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N9
\Parte_A|Reg|reg_despl:2:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:2:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:2:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X22_Y7_N30
\Parte_A|Reg|reg_despl:2:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:2:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:2:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \reset_low~input_o\,
	datac => \Parte_A|Reg|reg_despl:2:medios:medff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:2:medios:medff|q~0_combout\);

-- Location: LCCOMB_X21_Y8_N20
\Parte_B|Memoria|dato_ok[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|dato_ok[3]~feeder_combout\ = \Parte_B|Memoria|Mux6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Memoria|Mux6~4_combout\,
	combout => \Parte_B|Memoria|dato_ok[3]~feeder_combout\);

-- Location: FF_X21_Y8_N21
\Parte_B|Memoria|dato_ok[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	d => \Parte_B|Memoria|dato_ok[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(3));

-- Location: LCCOMB_X23_Y7_N10
\Parte_A|Reg|reg_despl:3:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:3:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(3)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:2:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:2:medios:medff|q~0_combout\,
	datac => \Parte_B|Memoria|dato_ok\(3),
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:3:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N11
\Parte_A|Reg|reg_despl:3:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:3:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:3:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X22_Y7_N28
\Parte_A|Reg|reg_despl:3:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:3:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:3:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \reset_low~input_o\,
	datac => \Parte_A|Reg|reg_despl:3:medios:medff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:3:medios:medff|q~0_combout\);

-- Location: LCCOMB_X22_Y8_N26
\Parte_B|Memoria|dato_ok[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|dato_ok[4]~feeder_combout\ = \Parte_B|Memoria|Mux5~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Parte_B|Memoria|Mux5~12_combout\,
	combout => \Parte_B|Memoria|dato_ok[4]~feeder_combout\);

-- Location: FF_X22_Y8_N27
\Parte_B|Memoria|dato_ok[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	d => \Parte_B|Memoria|dato_ok[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(4));

-- Location: LCCOMB_X22_Y7_N4
\Parte_A|Reg|reg_despl:4:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:4:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(4)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:3:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|FSM|current_state.load_shift~q\,
	datac => \Parte_A|Reg|reg_despl:3:medios:medff|q~0_combout\,
	datad => \Parte_B|Memoria|dato_ok\(4),
	combout => \Parte_A|Reg|reg_despl:4:medios:medff|q~1_combout\);

-- Location: FF_X22_Y7_N5
\Parte_A|Reg|reg_despl:4:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:4:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:4:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X22_Y7_N2
\Parte_A|Reg|reg_despl:4:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:4:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:4:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \reset_low~input_o\,
	datac => \Parte_A|Reg|reg_despl:4:medios:medff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:4:medios:medff|q~0_combout\);

-- Location: LCCOMB_X23_Y8_N28
\Parte_B|Memoria|dato_ok[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|dato_ok[5]~feeder_combout\ = \Parte_B|Memoria|Mux4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Memoria|Mux4~12_combout\,
	combout => \Parte_B|Memoria|dato_ok[5]~feeder_combout\);

-- Location: FF_X23_Y8_N29
\Parte_B|Memoria|dato_ok[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	d => \Parte_B|Memoria|dato_ok[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(5));

-- Location: LCCOMB_X22_Y7_N8
\Parte_A|Reg|reg_despl:5:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:5:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(5)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:4:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:4:medios:medff|q~0_combout\,
	datac => \Parte_B|Memoria|dato_ok\(5),
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:5:medios:medff|q~1_combout\);

-- Location: FF_X22_Y7_N9
\Parte_A|Reg|reg_despl:5:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:5:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:5:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X22_Y7_N22
\Parte_A|Reg|reg_despl:5:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:5:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:5:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \reset_low~input_o\,
	datac => \Parte_A|Reg|reg_despl:5:medios:medff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:5:medios:medff|q~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\Parte_B|Memoria|dato_ok[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|dato_ok[6]~feeder_combout\ = \Parte_B|Memoria|Mux3~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Memoria|Mux3~13_combout\,
	combout => \Parte_B|Memoria|dato_ok[6]~feeder_combout\);

-- Location: FF_X22_Y8_N29
\Parte_B|Memoria|dato_ok[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	d => \Parte_B|Memoria|dato_ok[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(6));

-- Location: LCCOMB_X23_Y7_N20
\Parte_A|Reg|reg_despl:6:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:6:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(6)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:5:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:5:medios:medff|q~0_combout\,
	datac => \Parte_A|FSM|current_state.load_shift~q\,
	datad => \Parte_B|Memoria|dato_ok\(6),
	combout => \Parte_A|Reg|reg_despl:6:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N21
\Parte_A|Reg|reg_despl:6:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:6:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:6:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X22_Y7_N18
\Parte_A|Reg|reg_despl:6:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:6:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:6:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \reset_low~input_o\,
	datac => \Parte_A|Reg|reg_despl:6:medios:medff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:6:medios:medff|q~0_combout\);

-- Location: FF_X21_Y8_N19
\Parte_B|Memoria|dato_ok[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	asdata => \Parte_B|Memoria|Mux2~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(7));

-- Location: LCCOMB_X23_Y7_N28
\Parte_A|Reg|reg_despl:7:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:7:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(7)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:6:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:6:medios:medff|q~0_combout\,
	datac => \Parte_B|Memoria|dato_ok\(7),
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:7:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N29
\Parte_A|Reg|reg_despl:7:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:7:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:7:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X23_Y7_N22
\Parte_A|Reg|reg_despl:7:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:7:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:7:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	datac => \reset_low~input_o\,
	datad => \Parte_A|Reg|reg_despl:7:medios:medff|q~_emulated_q\,
	combout => \Parte_A|Reg|reg_despl:7:medios:medff|q~0_combout\);

-- Location: LCCOMB_X22_Y8_N18
\Parte_B|Memoria|dato_ok[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_B|Memoria|dato_ok[8]~feeder_combout\ = \Parte_B|Memoria|Mux1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parte_B|Memoria|Mux1~12_combout\,
	combout => \Parte_B|Memoria|dato_ok[8]~feeder_combout\);

-- Location: FF_X22_Y8_N19
\Parte_B|Memoria|dato_ok[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	d => \Parte_B|Memoria|dato_ok[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(8));

-- Location: LCCOMB_X23_Y7_N24
\Parte_A|Reg|reg_despl:8:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:8:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(8)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:7:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|FSM|current_state.load_shift~q\,
	datac => \Parte_A|Reg|reg_despl:7:medios:medff|q~0_combout\,
	datad => \Parte_B|Memoria|dato_ok\(8),
	combout => \Parte_A|Reg|reg_despl:8:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N25
\Parte_A|Reg|reg_despl:8:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:8:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:8:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X23_Y7_N14
\Parte_A|Reg|reg_despl:8:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:8:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:8:medios:medff|q~_emulated_q\ $ (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_low~input_o\,
	datab => \Parte_A|Reg|reg_despl:8:medios:medff|q~_emulated_q\,
	datac => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	combout => \Parte_A|Reg|reg_despl:8:medios:medff|q~0_combout\);

-- Location: FF_X22_Y8_N21
\Parte_B|Memoria|dato_ok[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Parte_B|FSM|current_state.memoria~clkctrl_outclk\,
	asdata => \Parte_B|Memoria|Mux0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_B|Memoria|dato_ok\(9));

-- Location: LCCOMB_X23_Y7_N16
\Parte_A|Reg|reg_despl:9:medios:medff|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:9:medios:medff|q~1_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|FSM|current_state.load_shift~q\ & ((\Parte_B|Memoria|dato_ok\(9)))) # (!\Parte_A|FSM|current_state.load_shift~q\ & 
-- (\Parte_A|Reg|reg_despl:8:medios:medff|q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:8:medios:medff|q~0_combout\,
	datac => \Parte_B|Memoria|dato_ok\(9),
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:9:medios:medff|q~1_combout\);

-- Location: FF_X23_Y7_N17
\Parte_A|Reg|reg_despl:9:medios:medff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:9:medios:medff|q~1_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:9:medios:medff|q~_emulated_q\);

-- Location: LCCOMB_X23_Y7_N26
\Parte_A|Reg|reg_despl:9:medios:medff|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:9:medios:medff|q~0_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:9:medios:medff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	datac => \reset_low~input_o\,
	datad => \Parte_A|Reg|reg_despl:9:medios:medff|q~_emulated_q\,
	combout => \Parte_A|Reg|reg_despl:9:medios:medff|q~0_combout\);

-- Location: LCCOMB_X23_Y7_N12
\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~3_combout\ = \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (((\Parte_A|Reg|reg_despl:9:medios:medff|q~0_combout\ & !\Parte_A|FSM|current_state.load_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datac => \Parte_A|Reg|reg_despl:9:medios:medff|q~0_combout\,
	datad => \Parte_A|FSM|current_state.load_shift~q\,
	combout => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~3_combout\);

-- Location: FF_X23_Y7_N13
\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Multiplexer|Mux0~clkctrl_outclk\,
	d => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~3_combout\,
	clrn => \Parte_A|Reg|reg_despl:10:ultimo:ultff|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~_emulated_q\);

-- Location: LCCOMB_X22_Y7_N0
\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~2_combout\ = (\reset_low~input_o\ & ((\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\) # (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\ $ (\Parte_A|Reg|reg_despl:10:ultimo:ultff|q~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~1_combout\,
	datab => \reset_low~input_o\,
	datac => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~_emulated_q\,
	datad => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~7_combout\,
	combout => \Parte_A|Reg|reg_despl:10:ultimo:ultff|q~2_combout\);

-- Location: FF_X5_Y17_N13
\mod_lcd|fsm|clock:cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[14]~q\);

-- Location: LCCOMB_X5_Y18_N16
\mod_lcd|fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~0_combout\ = \mod_lcd|fsm|clock:cont[0]~q\ $ (VCC)
-- \mod_lcd|fsm|Add0~1\ = CARRY(\mod_lcd|fsm|clock:cont[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[0]~q\,
	datad => VCC,
	combout => \mod_lcd|fsm|Add0~0_combout\,
	cout => \mod_lcd|fsm|Add0~1\);

-- Location: FF_X5_Y18_N17
\mod_lcd|fsm|clock:cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[0]~q\);

-- Location: LCCOMB_X5_Y18_N18
\mod_lcd|fsm|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~2_combout\ = (\mod_lcd|fsm|clock:cont[1]~q\ & (!\mod_lcd|fsm|Add0~1\)) # (!\mod_lcd|fsm|clock:cont[1]~q\ & ((\mod_lcd|fsm|Add0~1\) # (GND)))
-- \mod_lcd|fsm|Add0~3\ = CARRY((!\mod_lcd|fsm|Add0~1\) # (!\mod_lcd|fsm|clock:cont[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[1]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~1\,
	combout => \mod_lcd|fsm|Add0~2_combout\,
	cout => \mod_lcd|fsm|Add0~3\);

-- Location: FF_X5_Y18_N19
\mod_lcd|fsm|clock:cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[1]~q\);

-- Location: LCCOMB_X5_Y18_N20
\mod_lcd|fsm|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~4_combout\ = (\mod_lcd|fsm|clock:cont[2]~q\ & (\mod_lcd|fsm|Add0~3\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[2]~q\ & (!\mod_lcd|fsm|Add0~3\ & VCC))
-- \mod_lcd|fsm|Add0~5\ = CARRY((\mod_lcd|fsm|clock:cont[2]~q\ & !\mod_lcd|fsm|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[2]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~3\,
	combout => \mod_lcd|fsm|Add0~4_combout\,
	cout => \mod_lcd|fsm|Add0~5\);

-- Location: FF_X5_Y18_N21
\mod_lcd|fsm|clock:cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[2]~q\);

-- Location: LCCOMB_X5_Y18_N22
\mod_lcd|fsm|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~6_combout\ = (\mod_lcd|fsm|clock:cont[3]~q\ & (!\mod_lcd|fsm|Add0~5\)) # (!\mod_lcd|fsm|clock:cont[3]~q\ & ((\mod_lcd|fsm|Add0~5\) # (GND)))
-- \mod_lcd|fsm|Add0~7\ = CARRY((!\mod_lcd|fsm|Add0~5\) # (!\mod_lcd|fsm|clock:cont[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[3]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~5\,
	combout => \mod_lcd|fsm|Add0~6_combout\,
	cout => \mod_lcd|fsm|Add0~7\);

-- Location: FF_X5_Y18_N23
\mod_lcd|fsm|clock:cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[3]~q\);

-- Location: LCCOMB_X5_Y18_N24
\mod_lcd|fsm|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~8_combout\ = (\mod_lcd|fsm|clock:cont[4]~q\ & (\mod_lcd|fsm|Add0~7\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[4]~q\ & (!\mod_lcd|fsm|Add0~7\ & VCC))
-- \mod_lcd|fsm|Add0~9\ = CARRY((\mod_lcd|fsm|clock:cont[4]~q\ & !\mod_lcd|fsm|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[4]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~7\,
	combout => \mod_lcd|fsm|Add0~8_combout\,
	cout => \mod_lcd|fsm|Add0~9\);

-- Location: FF_X5_Y18_N25
\mod_lcd|fsm|clock:cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[4]~q\);

-- Location: LCCOMB_X5_Y18_N26
\mod_lcd|fsm|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~10_combout\ = (\mod_lcd|fsm|clock:cont[5]~q\ & (!\mod_lcd|fsm|Add0~9\)) # (!\mod_lcd|fsm|clock:cont[5]~q\ & ((\mod_lcd|fsm|Add0~9\) # (GND)))
-- \mod_lcd|fsm|Add0~11\ = CARRY((!\mod_lcd|fsm|Add0~9\) # (!\mod_lcd|fsm|clock:cont[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[5]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~9\,
	combout => \mod_lcd|fsm|Add0~10_combout\,
	cout => \mod_lcd|fsm|Add0~11\);

-- Location: LCCOMB_X5_Y18_N4
\mod_lcd|fsm|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|cont~5_combout\ = (\mod_lcd|fsm|Add0~10_combout\ & ((!\mod_lcd|fsm|Equal0~4_combout\) # (!\mod_lcd|fsm|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|Add0~10_combout\,
	datac => \mod_lcd|fsm|Add0~32_combout\,
	datad => \mod_lcd|fsm|Equal0~4_combout\,
	combout => \mod_lcd|fsm|cont~5_combout\);

-- Location: FF_X5_Y18_N5
\mod_lcd|fsm|clock:cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[5]~q\);

-- Location: LCCOMB_X5_Y18_N28
\mod_lcd|fsm|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~12_combout\ = (\mod_lcd|fsm|clock:cont[6]~q\ & (\mod_lcd|fsm|Add0~11\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[6]~q\ & (!\mod_lcd|fsm|Add0~11\ & VCC))
-- \mod_lcd|fsm|Add0~13\ = CARRY((\mod_lcd|fsm|clock:cont[6]~q\ & !\mod_lcd|fsm|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[6]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~11\,
	combout => \mod_lcd|fsm|Add0~12_combout\,
	cout => \mod_lcd|fsm|Add0~13\);

-- Location: FF_X5_Y18_N29
\mod_lcd|fsm|clock:cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[6]~q\);

-- Location: LCCOMB_X5_Y18_N30
\mod_lcd|fsm|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~14_combout\ = (\mod_lcd|fsm|clock:cont[7]~q\ & (!\mod_lcd|fsm|Add0~13\)) # (!\mod_lcd|fsm|clock:cont[7]~q\ & ((\mod_lcd|fsm|Add0~13\) # (GND)))
-- \mod_lcd|fsm|Add0~15\ = CARRY((!\mod_lcd|fsm|Add0~13\) # (!\mod_lcd|fsm|clock:cont[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[7]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~13\,
	combout => \mod_lcd|fsm|Add0~14_combout\,
	cout => \mod_lcd|fsm|Add0~15\);

-- Location: LCCOMB_X5_Y18_N12
\mod_lcd|fsm|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|cont~4_combout\ = (\mod_lcd|fsm|Add0~14_combout\ & ((!\mod_lcd|fsm|Equal0~4_combout\) # (!\mod_lcd|fsm|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~14_combout\,
	datac => \mod_lcd|fsm|Add0~32_combout\,
	datad => \mod_lcd|fsm|Equal0~4_combout\,
	combout => \mod_lcd|fsm|cont~4_combout\);

-- Location: FF_X5_Y18_N13
\mod_lcd|fsm|clock:cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[7]~q\);

-- Location: LCCOMB_X5_Y17_N0
\mod_lcd|fsm|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~16_combout\ = (\mod_lcd|fsm|clock:cont[8]~q\ & (\mod_lcd|fsm|Add0~15\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[8]~q\ & (!\mod_lcd|fsm|Add0~15\ & VCC))
-- \mod_lcd|fsm|Add0~17\ = CARRY((\mod_lcd|fsm|clock:cont[8]~q\ & !\mod_lcd|fsm|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[8]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~15\,
	combout => \mod_lcd|fsm|Add0~16_combout\,
	cout => \mod_lcd|fsm|Add0~17\);

-- Location: FF_X5_Y17_N1
\mod_lcd|fsm|clock:cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[8]~q\);

-- Location: LCCOMB_X5_Y17_N2
\mod_lcd|fsm|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~18_combout\ = (\mod_lcd|fsm|clock:cont[9]~q\ & (!\mod_lcd|fsm|Add0~17\)) # (!\mod_lcd|fsm|clock:cont[9]~q\ & ((\mod_lcd|fsm|Add0~17\) # (GND)))
-- \mod_lcd|fsm|Add0~19\ = CARRY((!\mod_lcd|fsm|Add0~17\) # (!\mod_lcd|fsm|clock:cont[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[9]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~17\,
	combout => \mod_lcd|fsm|Add0~18_combout\,
	cout => \mod_lcd|fsm|Add0~19\);

-- Location: LCCOMB_X5_Y17_N28
\mod_lcd|fsm|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|cont~3_combout\ = (\mod_lcd|fsm|Add0~18_combout\ & ((!\mod_lcd|fsm|Add0~32_combout\) # (!\mod_lcd|fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|Add0~18_combout\,
	datac => \mod_lcd|fsm|Equal0~4_combout\,
	datad => \mod_lcd|fsm|Add0~32_combout\,
	combout => \mod_lcd|fsm|cont~3_combout\);

-- Location: FF_X5_Y17_N29
\mod_lcd|fsm|clock:cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[9]~q\);

-- Location: LCCOMB_X5_Y17_N4
\mod_lcd|fsm|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~20_combout\ = (\mod_lcd|fsm|clock:cont[10]~q\ & (\mod_lcd|fsm|Add0~19\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[10]~q\ & (!\mod_lcd|fsm|Add0~19\ & VCC))
-- \mod_lcd|fsm|Add0~21\ = CARRY((\mod_lcd|fsm|clock:cont[10]~q\ & !\mod_lcd|fsm|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[10]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~19\,
	combout => \mod_lcd|fsm|Add0~20_combout\,
	cout => \mod_lcd|fsm|Add0~21\);

-- Location: LCCOMB_X5_Y17_N30
\mod_lcd|fsm|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|cont~2_combout\ = (\mod_lcd|fsm|Add0~20_combout\ & ((!\mod_lcd|fsm|Equal0~4_combout\) # (!\mod_lcd|fsm|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|Add0~32_combout\,
	datac => \mod_lcd|fsm|Add0~20_combout\,
	datad => \mod_lcd|fsm|Equal0~4_combout\,
	combout => \mod_lcd|fsm|cont~2_combout\);

-- Location: FF_X5_Y17_N31
\mod_lcd|fsm|clock:cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[10]~q\);

-- Location: LCCOMB_X5_Y17_N6
\mod_lcd|fsm|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~22_combout\ = (\mod_lcd|fsm|clock:cont[11]~q\ & (!\mod_lcd|fsm|Add0~21\)) # (!\mod_lcd|fsm|clock:cont[11]~q\ & ((\mod_lcd|fsm|Add0~21\) # (GND)))
-- \mod_lcd|fsm|Add0~23\ = CARRY((!\mod_lcd|fsm|Add0~21\) # (!\mod_lcd|fsm|clock:cont[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[11]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~21\,
	combout => \mod_lcd|fsm|Add0~22_combout\,
	cout => \mod_lcd|fsm|Add0~23\);

-- Location: FF_X5_Y17_N7
\mod_lcd|fsm|clock:cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[11]~q\);

-- Location: LCCOMB_X5_Y17_N8
\mod_lcd|fsm|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~24_combout\ = (\mod_lcd|fsm|clock:cont[12]~q\ & (\mod_lcd|fsm|Add0~23\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[12]~q\ & (!\mod_lcd|fsm|Add0~23\ & VCC))
-- \mod_lcd|fsm|Add0~25\ = CARRY((\mod_lcd|fsm|clock:cont[12]~q\ & !\mod_lcd|fsm|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[12]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~23\,
	combout => \mod_lcd|fsm|Add0~24_combout\,
	cout => \mod_lcd|fsm|Add0~25\);

-- Location: FF_X5_Y17_N9
\mod_lcd|fsm|clock:cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[12]~q\);

-- Location: LCCOMB_X5_Y17_N10
\mod_lcd|fsm|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~26_combout\ = (\mod_lcd|fsm|clock:cont[13]~q\ & (!\mod_lcd|fsm|Add0~25\)) # (!\mod_lcd|fsm|clock:cont[13]~q\ & ((\mod_lcd|fsm|Add0~25\) # (GND)))
-- \mod_lcd|fsm|Add0~27\ = CARRY((!\mod_lcd|fsm|Add0~25\) # (!\mod_lcd|fsm|clock:cont[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[13]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~25\,
	combout => \mod_lcd|fsm|Add0~26_combout\,
	cout => \mod_lcd|fsm|Add0~27\);

-- Location: FF_X5_Y17_N11
\mod_lcd|fsm|clock:cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[13]~q\);

-- Location: LCCOMB_X5_Y17_N12
\mod_lcd|fsm|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~28_combout\ = (\mod_lcd|fsm|clock:cont[14]~q\ & (\mod_lcd|fsm|Add0~27\ $ (GND))) # (!\mod_lcd|fsm|clock:cont[14]~q\ & (!\mod_lcd|fsm|Add0~27\ & VCC))
-- \mod_lcd|fsm|Add0~29\ = CARRY((\mod_lcd|fsm|clock:cont[14]~q\ & !\mod_lcd|fsm|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[14]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~27\,
	combout => \mod_lcd|fsm|Add0~28_combout\,
	cout => \mod_lcd|fsm|Add0~29\);

-- Location: LCCOMB_X5_Y17_N24
\mod_lcd|fsm|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|cont~1_combout\ = (\mod_lcd|fsm|Add0~30_combout\ & ((!\mod_lcd|fsm|Equal0~4_combout\) # (!\mod_lcd|fsm|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|Add0~32_combout\,
	datac => \mod_lcd|fsm|Add0~30_combout\,
	datad => \mod_lcd|fsm|Equal0~4_combout\,
	combout => \mod_lcd|fsm|cont~1_combout\);

-- Location: FF_X5_Y17_N25
\mod_lcd|fsm|clock:cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[15]~q\);

-- Location: LCCOMB_X5_Y17_N14
\mod_lcd|fsm|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~30_combout\ = (\mod_lcd|fsm|clock:cont[15]~q\ & (!\mod_lcd|fsm|Add0~29\)) # (!\mod_lcd|fsm|clock:cont[15]~q\ & ((\mod_lcd|fsm|Add0~29\) # (GND)))
-- \mod_lcd|fsm|Add0~31\ = CARRY((!\mod_lcd|fsm|Add0~29\) # (!\mod_lcd|fsm|clock:cont[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|clock:cont[15]~q\,
	datad => VCC,
	cin => \mod_lcd|fsm|Add0~29\,
	combout => \mod_lcd|fsm|Add0~30_combout\,
	cout => \mod_lcd|fsm|Add0~31\);

-- Location: LCCOMB_X5_Y18_N14
\mod_lcd|fsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Equal0~0_combout\ = (!\mod_lcd|fsm|Add0~6_combout\ & (!\mod_lcd|fsm|Add0~0_combout\ & (!\mod_lcd|fsm|Add0~2_combout\ & !\mod_lcd|fsm|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~6_combout\,
	datab => \mod_lcd|fsm|Add0~0_combout\,
	datac => \mod_lcd|fsm|Add0~2_combout\,
	datad => \mod_lcd|fsm|Add0~4_combout\,
	combout => \mod_lcd|fsm|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y18_N8
\mod_lcd|fsm|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Equal0~1_combout\ = (\mod_lcd|fsm|Add0~10_combout\ & (!\mod_lcd|fsm|Add0~8_combout\ & (\mod_lcd|fsm|Equal0~0_combout\ & !\mod_lcd|fsm|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~10_combout\,
	datab => \mod_lcd|fsm|Add0~8_combout\,
	datac => \mod_lcd|fsm|Equal0~0_combout\,
	datad => \mod_lcd|fsm|Add0~12_combout\,
	combout => \mod_lcd|fsm|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y17_N18
\mod_lcd|fsm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Equal0~2_combout\ = (\mod_lcd|fsm|Add0~14_combout\ & (\mod_lcd|fsm|Add0~18_combout\ & (!\mod_lcd|fsm|Add0~16_combout\ & \mod_lcd|fsm|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~14_combout\,
	datab => \mod_lcd|fsm|Add0~18_combout\,
	datac => \mod_lcd|fsm|Add0~16_combout\,
	datad => \mod_lcd|fsm|Equal0~1_combout\,
	combout => \mod_lcd|fsm|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y17_N20
\mod_lcd|fsm|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Equal0~3_combout\ = (!\mod_lcd|fsm|Add0~22_combout\ & (!\mod_lcd|fsm|Add0~24_combout\ & (\mod_lcd|fsm|Add0~20_combout\ & \mod_lcd|fsm|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~22_combout\,
	datab => \mod_lcd|fsm|Add0~24_combout\,
	datac => \mod_lcd|fsm|Add0~20_combout\,
	datad => \mod_lcd|fsm|Equal0~2_combout\,
	combout => \mod_lcd|fsm|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y17_N22
\mod_lcd|fsm|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Equal0~4_combout\ = (!\mod_lcd|fsm|Add0~28_combout\ & (!\mod_lcd|fsm|Add0~26_combout\ & (\mod_lcd|fsm|Add0~30_combout\ & \mod_lcd|fsm|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~28_combout\,
	datab => \mod_lcd|fsm|Add0~26_combout\,
	datac => \mod_lcd|fsm|Add0~30_combout\,
	datad => \mod_lcd|fsm|Equal0~3_combout\,
	combout => \mod_lcd|fsm|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y17_N26
\mod_lcd|fsm|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|cont~0_combout\ = (\mod_lcd|fsm|Add0~32_combout\ & !\mod_lcd|fsm|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|Add0~32_combout\,
	datac => \mod_lcd|fsm|Equal0~4_combout\,
	combout => \mod_lcd|fsm|cont~0_combout\);

-- Location: FF_X5_Y17_N27
\mod_lcd|fsm|clock:cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|clock:cont[16]~q\);

-- Location: LCCOMB_X5_Y17_N16
\mod_lcd|fsm|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Add0~32_combout\ = \mod_lcd|fsm|clock:cont[16]~q\ $ (!\mod_lcd|fsm|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|clock:cont[16]~q\,
	cin => \mod_lcd|fsm|Add0~31\,
	combout => \mod_lcd|fsm|Add0~32_combout\);

-- Location: LCCOMB_X5_Y18_N10
\mod_lcd|fsm|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|e~0_combout\ = \mod_lcd|fsm|e~q\ $ (((\mod_lcd|fsm|Add0~32_combout\ & \mod_lcd|fsm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Add0~32_combout\,
	datac => \mod_lcd|fsm|e~q\,
	datad => \mod_lcd|fsm|Equal0~4_combout\,
	combout => \mod_lcd|fsm|e~0_combout\);

-- Location: LCCOMB_X5_Y18_N0
\mod_lcd|fsm|e~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|e~feeder_combout\ = \mod_lcd|fsm|e~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|fsm|e~0_combout\,
	combout => \mod_lcd|fsm|e~feeder_combout\);

-- Location: FF_X5_Y18_N1
\mod_lcd|fsm|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|fsm|e~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|e~q\);

-- Location: CLKCTRL_G4
\mod_lcd|fsm|e~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mod_lcd|fsm|e~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mod_lcd|fsm|e~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y15_N4
\mod_lcd|fsm|current_state.FunctionSet1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.FunctionSet1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mod_lcd|fsm|current_state.FunctionSet1~feeder_combout\);

-- Location: FF_X13_Y15_N5
\mod_lcd|fsm|current_state.FunctionSet1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.FunctionSet1~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.FunctionSet1~q\);

-- Location: LCCOMB_X13_Y15_N6
\mod_lcd|fsm|current_state.FunctionSet2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.FunctionSet2~0_combout\ = !\mod_lcd|fsm|current_state.FunctionSet1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|fsm|current_state.FunctionSet1~q\,
	combout => \mod_lcd|fsm|current_state.FunctionSet2~0_combout\);

-- Location: FF_X13_Y15_N7
\mod_lcd|fsm|current_state.FunctionSet2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.FunctionSet2~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.FunctionSet2~q\);

-- Location: LCCOMB_X13_Y15_N8
\mod_lcd|fsm|current_state.FunctionSet3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.FunctionSet3~feeder_combout\ = \mod_lcd|fsm|current_state.FunctionSet2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.FunctionSet2~q\,
	combout => \mod_lcd|fsm|current_state.FunctionSet3~feeder_combout\);

-- Location: FF_X13_Y15_N9
\mod_lcd|fsm|current_state.FunctionSet3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.FunctionSet3~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.FunctionSet3~q\);

-- Location: FF_X13_Y15_N31
\mod_lcd|fsm|current_state.FunctionSet4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.FunctionSet3~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.FunctionSet4~q\);

-- Location: FF_X12_Y14_N27
\mod_lcd|fsm|current_state.ClearDisplay1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.FunctionSet4~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ClearDisplay1~q\);

-- Location: FF_X12_Y14_N25
\mod_lcd|fsm|current_state.DisplayControl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.ClearDisplay1~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.DisplayControl~q\);

-- Location: FF_X12_Y13_N27
\mod_lcd|fsm|current_state.EntryMode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.DisplayControl~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.EntryMode~q\);

-- Location: LCCOMB_X13_Y14_N24
\mod_lcd|fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector9~0_combout\ = (\mod_lcd|fsm|current_state.ReturnHome4~q\) # ((\sincronizadores:1:sinc|syncin~q\) # (\sincronizadores:0:sinc|syncin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.ReturnHome4~q\,
	datab => \sincronizadores:1:sinc|syncin~q\,
	datad => \sincronizadores:0:sinc|syncin~q\,
	combout => \mod_lcd|fsm|Selector9~0_combout\);

-- Location: LCCOMB_X13_Y14_N2
\mod_lcd|fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector8~0_combout\ = (\mod_lcd|fsm|current_state.ReturnHome4~q\) # ((\mod_lcd|fsm|current_state.SetAddress~q\ & (\sincronizadores:4:sinc|syncin~q\ & \mod_lcd|fsm|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.ReturnHome4~q\,
	datab => \mod_lcd|fsm|current_state.SetAddress~q\,
	datac => \sincronizadores:4:sinc|syncin~q\,
	datad => \mod_lcd|fsm|Mux0~0_combout\,
	combout => \mod_lcd|fsm|Selector8~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\mod_lcd|fsm|nx_proc:flag\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|nx_proc:flag~combout\ = (\mod_lcd|fsm|Selector8~0_combout\ & ((!\mod_lcd|fsm|Selector9~0_combout\))) # (!\mod_lcd|fsm|Selector8~0_combout\ & (\mod_lcd|fsm|nx_proc:flag~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|nx_proc:flag~combout\,
	datac => \mod_lcd|fsm|Selector9~0_combout\,
	datad => \mod_lcd|fsm|Selector8~0_combout\,
	combout => \mod_lcd|fsm|nx_proc:flag~combout\);

-- Location: LCCOMB_X11_Y14_N6
\mod_lcd|cont|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~0_combout\ = \mod_lcd|cont|cont\(0) $ (VCC)
-- \mod_lcd|cont|Add0~1\ = CARRY(\mod_lcd|cont|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(0),
	datad => VCC,
	combout => \mod_lcd|cont|Add0~0_combout\,
	cout => \mod_lcd|cont|Add0~1\);

-- Location: LCCOMB_X11_Y14_N0
\mod_lcd|cont|cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~12_combout\ = (\mod_lcd|cont|Add0~0_combout\ & !\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|Add0~0_combout\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|cont~12_combout\);

-- Location: LCCOMB_X13_Y14_N26
\mod_lcd|fsm|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Mux1~0_combout\ = (!\sincronizadores:2:sinc|syncin~q\ & (!\sincronizadores:1:sinc|syncin~q\ & (\sincronizadores:4:sinc|syncin~q\ $ (\sincronizadores:0:sinc|syncin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:4:sinc|syncin~q\,
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \sincronizadores:0:sinc|syncin~q\,
	datad => \sincronizadores:1:sinc|syncin~q\,
	combout => \mod_lcd|fsm|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y14_N6
\mod_lcd|fsm|next_state.Write1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|next_state.Write1~0_combout\ = (\mod_lcd|fsm|current_state.SetAddress~q\ & (\mod_lcd|fsm|Mux1~0_combout\ & !\sincronizadores:3:sinc|syncin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.SetAddress~q\,
	datac => \mod_lcd|fsm|Mux1~0_combout\,
	datad => \sincronizadores:3:sinc|syncin~q\,
	combout => \mod_lcd|fsm|next_state.Write1~0_combout\);

-- Location: FF_X13_Y14_N7
\mod_lcd|fsm|current_state.Write1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|next_state.Write1~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write1~q\);

-- Location: FF_X11_Y18_N17
\mod_lcd|fsm|current_state.Write2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write1~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write2~q\);

-- Location: LCCOMB_X11_Y18_N20
\mod_lcd|fsm|current_state.Write3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write3~feeder_combout\ = \mod_lcd|fsm|current_state.Write2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write2~q\,
	combout => \mod_lcd|fsm|current_state.Write3~feeder_combout\);

-- Location: FF_X11_Y18_N21
\mod_lcd|fsm|current_state.Write3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write3~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write3~q\);

-- Location: FF_X11_Y18_N13
\mod_lcd|fsm|current_state.Write4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write3~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write4~q\);

-- Location: LCCOMB_X11_Y18_N2
\mod_lcd|fsm|current_state.Write5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write5~feeder_combout\ = \mod_lcd|fsm|current_state.Write4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write4~q\,
	combout => \mod_lcd|fsm|current_state.Write5~feeder_combout\);

-- Location: FF_X11_Y18_N3
\mod_lcd|fsm|current_state.Write5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write5~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write5~q\);

-- Location: LCCOMB_X11_Y18_N18
\mod_lcd|fsm|current_state.Write6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write6~feeder_combout\ = \mod_lcd|fsm|current_state.Write5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write5~q\,
	combout => \mod_lcd|fsm|current_state.Write6~feeder_combout\);

-- Location: FF_X11_Y18_N19
\mod_lcd|fsm|current_state.Write6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write6~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write6~q\);

-- Location: LCCOMB_X11_Y18_N24
\mod_lcd|fsm|current_state.Write7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write7~feeder_combout\ = \mod_lcd|fsm|current_state.Write6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write6~q\,
	combout => \mod_lcd|fsm|current_state.Write7~feeder_combout\);

-- Location: FF_X11_Y18_N25
\mod_lcd|fsm|current_state.Write7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write7~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write7~q\);

-- Location: LCCOMB_X10_Y18_N8
\mod_lcd|fsm|current_state.Write8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write8~feeder_combout\ = \mod_lcd|fsm|current_state.Write7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write7~q\,
	combout => \mod_lcd|fsm|current_state.Write8~feeder_combout\);

-- Location: FF_X10_Y18_N9
\mod_lcd|fsm|current_state.Write8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write8~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write8~q\);

-- Location: LCCOMB_X11_Y18_N4
\mod_lcd|fsm|current_state.Write9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write9~feeder_combout\ = \mod_lcd|fsm|current_state.Write8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write8~q\,
	combout => \mod_lcd|fsm|current_state.Write9~feeder_combout\);

-- Location: FF_X11_Y18_N5
\mod_lcd|fsm|current_state.Write9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write9~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write9~q\);

-- Location: FF_X11_Y18_N15
\mod_lcd|fsm|current_state.Write10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write9~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write10~q\);

-- Location: FF_X11_Y18_N11
\mod_lcd|fsm|current_state.Write11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write10~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write11~q\);

-- Location: FF_X10_Y18_N25
\mod_lcd|fsm|current_state.Write12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write11~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write12~q\);

-- Location: LCCOMB_X10_Y18_N30
\mod_lcd|fsm|current_state.Write13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.Write13~feeder_combout\ = \mod_lcd|fsm|current_state.Write12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.Write12~q\,
	combout => \mod_lcd|fsm|current_state.Write13~feeder_combout\);

-- Location: FF_X10_Y18_N31
\mod_lcd|fsm|current_state.Write13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.Write13~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write13~q\);

-- Location: LCCOMB_X12_Y13_N6
\mod_lcd|fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector1~0_combout\ = (\mod_lcd|fsm|current_state.Write13~q\) # ((!\mod_lcd|cont|bus_out~q\ & \mod_lcd|fsm|current_state.ReturnHome1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|bus_out~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome1~q\,
	datad => \mod_lcd|fsm|current_state.Write13~q\,
	combout => \mod_lcd|fsm|Selector1~0_combout\);

-- Location: FF_X12_Y13_N7
\mod_lcd|fsm|current_state.ReturnHome1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector1~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ReturnHome1~q\);

-- Location: LCCOMB_X12_Y13_N2
\mod_lcd|fsm|next_state.ClearDisplay3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|next_state.ClearDisplay3~0_combout\ = (\mod_lcd|fsm|nx_proc:flag~combout\ & (\mod_lcd|cont|bus_out~q\ & \mod_lcd|fsm|current_state.ReturnHome1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|nx_proc:flag~combout\,
	datab => \mod_lcd|cont|bus_out~q\,
	datad => \mod_lcd|fsm|current_state.ReturnHome1~q\,
	combout => \mod_lcd|fsm|next_state.ClearDisplay3~0_combout\);

-- Location: FF_X12_Y13_N3
\mod_lcd|fsm|current_state.ClearDisplay3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|next_state.ClearDisplay3~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ClearDisplay3~q\);

-- Location: LCCOMB_X13_Y14_N20
\mod_lcd|fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector5~0_combout\ = (!\sincronizadores:4:sinc|syncin~q\ & (\mod_lcd|fsm|current_state.SetAddress~q\ & (!\sincronizadores:0:sinc|syncin~q\ & !\sincronizadores:3:sinc|syncin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:4:sinc|syncin~q\,
	datab => \mod_lcd|fsm|current_state.SetAddress~q\,
	datac => \sincronizadores:0:sinc|syncin~q\,
	datad => \sincronizadores:3:sinc|syncin~q\,
	combout => \mod_lcd|fsm|Selector5~0_combout\);

-- Location: LCCOMB_X13_Y14_N12
\mod_lcd|fsm|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector5~1_combout\ = (\mod_lcd|fsm|current_state.ClearDisplay3~q\) # ((\sincronizadores:1:sinc|syncin~q\ & (!\sincronizadores:2:sinc|syncin~q\ & \mod_lcd|fsm|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:1:sinc|syncin~q\,
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \mod_lcd|fsm|current_state.ClearDisplay3~q\,
	datad => \mod_lcd|fsm|Selector5~0_combout\,
	combout => \mod_lcd|fsm|Selector5~1_combout\);

-- Location: FF_X13_Y14_N13
\mod_lcd|fsm|current_state.Write24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector5~1_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write24~q\);

-- Location: FF_X11_Y18_N9
\mod_lcd|fsm|current_state.Write25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write24~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write25~q\);

-- Location: FF_X11_Y18_N23
\mod_lcd|fsm|current_state.Write26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write25~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write26~q\);

-- Location: FF_X11_Y18_N31
\mod_lcd|fsm|current_state.Write27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write26~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write27~q\);

-- Location: FF_X11_Y18_N29
\mod_lcd|fsm|current_state.Write28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write27~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write28~q\);

-- Location: LCCOMB_X12_Y13_N18
\mod_lcd|fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector2~0_combout\ = (\mod_lcd|fsm|current_state.Write28~q\) # ((!\mod_lcd|cont|bus_out~q\ & \mod_lcd|fsm|current_state.ReturnHome2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|bus_out~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome2~q\,
	datad => \mod_lcd|fsm|current_state.Write28~q\,
	combout => \mod_lcd|fsm|Selector2~0_combout\);

-- Location: FF_X12_Y13_N19
\mod_lcd|fsm|current_state.ReturnHome2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector2~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ReturnHome2~q\);

-- Location: LCCOMB_X12_Y13_N16
\mod_lcd|fsm|next_state.ClearDisplay4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|next_state.ClearDisplay4~0_combout\ = (\mod_lcd|fsm|nx_proc:flag~combout\ & (\mod_lcd|cont|bus_out~q\ & \mod_lcd|fsm|current_state.ReturnHome2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|nx_proc:flag~combout\,
	datab => \mod_lcd|cont|bus_out~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome2~q\,
	combout => \mod_lcd|fsm|next_state.ClearDisplay4~0_combout\);

-- Location: FF_X12_Y13_N17
\mod_lcd|fsm|current_state.ClearDisplay4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|next_state.ClearDisplay4~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ClearDisplay4~q\);

-- Location: LCCOMB_X13_Y14_N16
\mod_lcd|fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector6~0_combout\ = (\mod_lcd|fsm|current_state.ClearDisplay4~q\) # ((!\sincronizadores:1:sinc|syncin~q\ & (\sincronizadores:2:sinc|syncin~q\ & \mod_lcd|fsm|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:1:sinc|syncin~q\,
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \mod_lcd|fsm|current_state.ClearDisplay4~q\,
	datad => \mod_lcd|fsm|Selector5~0_combout\,
	combout => \mod_lcd|fsm|Selector6~0_combout\);

-- Location: FF_X13_Y14_N17
\mod_lcd|fsm|current_state.Write29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector6~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write29~q\);

-- Location: FF_X12_Y14_N11
\mod_lcd|fsm|current_state.Write30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write29~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write30~q\);

-- Location: FF_X11_Y18_N27
\mod_lcd|fsm|current_state.Write31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write30~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write31~q\);

-- Location: FF_X11_Y18_N7
\mod_lcd|fsm|current_state.Write32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write31~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write32~q\);

-- Location: FF_X11_Y18_N1
\mod_lcd|fsm|current_state.Write33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write32~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write33~q\);

-- Location: LCCOMB_X12_Y13_N22
\mod_lcd|fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector3~0_combout\ = (\mod_lcd|fsm|current_state.Write33~q\) # ((!\mod_lcd|cont|bus_out~q\ & \mod_lcd|fsm|current_state.ReturnHome3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|bus_out~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome3~q\,
	datad => \mod_lcd|fsm|current_state.Write33~q\,
	combout => \mod_lcd|fsm|Selector3~0_combout\);

-- Location: FF_X12_Y13_N23
\mod_lcd|fsm|current_state.ReturnHome3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector3~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ReturnHome3~q\);

-- Location: LCCOMB_X12_Y13_N30
\mod_lcd|fsm|WideOr26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr26~0_combout\ = (!\mod_lcd|fsm|current_state.ReturnHome1~q\ & (!\mod_lcd|fsm|current_state.ReturnHome4~q\ & (!\mod_lcd|fsm|current_state.ReturnHome3~q\ & !\mod_lcd|fsm|current_state.ReturnHome2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.ReturnHome1~q\,
	datab => \mod_lcd|fsm|current_state.ReturnHome4~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome3~q\,
	datad => \mod_lcd|fsm|current_state.ReturnHome2~q\,
	combout => \mod_lcd|fsm|WideOr26~0_combout\);

-- Location: FF_X11_Y14_N1
\mod_lcd|cont|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~12_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(0));

-- Location: LCCOMB_X11_Y14_N8
\mod_lcd|cont|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~2_combout\ = (\mod_lcd|cont|cont\(1) & (!\mod_lcd|cont|Add0~1\)) # (!\mod_lcd|cont|cont\(1) & ((\mod_lcd|cont|Add0~1\) # (GND)))
-- \mod_lcd|cont|Add0~3\ = CARRY((!\mod_lcd|cont|Add0~1\) # (!\mod_lcd|cont|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(1),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~1\,
	combout => \mod_lcd|cont|Add0~2_combout\,
	cout => \mod_lcd|cont|Add0~3\);

-- Location: FF_X11_Y14_N9
\mod_lcd|cont|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~2_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(1));

-- Location: LCCOMB_X11_Y14_N10
\mod_lcd|cont|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~4_combout\ = (\mod_lcd|cont|cont\(2) & (\mod_lcd|cont|Add0~3\ $ (GND))) # (!\mod_lcd|cont|cont\(2) & (!\mod_lcd|cont|Add0~3\ & VCC))
-- \mod_lcd|cont|Add0~5\ = CARRY((\mod_lcd|cont|cont\(2) & !\mod_lcd|cont|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(2),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~3\,
	combout => \mod_lcd|cont|Add0~4_combout\,
	cout => \mod_lcd|cont|Add0~5\);

-- Location: FF_X11_Y14_N11
\mod_lcd|cont|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~4_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(2));

-- Location: LCCOMB_X11_Y14_N12
\mod_lcd|cont|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~6_combout\ = (\mod_lcd|cont|cont\(3) & (!\mod_lcd|cont|Add0~5\)) # (!\mod_lcd|cont|cont\(3) & ((\mod_lcd|cont|Add0~5\) # (GND)))
-- \mod_lcd|cont|Add0~7\ = CARRY((!\mod_lcd|cont|Add0~5\) # (!\mod_lcd|cont|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(3),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~5\,
	combout => \mod_lcd|cont|Add0~6_combout\,
	cout => \mod_lcd|cont|Add0~7\);

-- Location: FF_X11_Y14_N13
\mod_lcd|cont|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~6_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(3));

-- Location: LCCOMB_X11_Y14_N14
\mod_lcd|cont|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~8_combout\ = (\mod_lcd|cont|cont\(4) & (\mod_lcd|cont|Add0~7\ $ (GND))) # (!\mod_lcd|cont|cont\(4) & (!\mod_lcd|cont|Add0~7\ & VCC))
-- \mod_lcd|cont|Add0~9\ = CARRY((\mod_lcd|cont|cont\(4) & !\mod_lcd|cont|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(4),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~7\,
	combout => \mod_lcd|cont|Add0~8_combout\,
	cout => \mod_lcd|cont|Add0~9\);

-- Location: FF_X11_Y14_N15
\mod_lcd|cont|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~8_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(4));

-- Location: LCCOMB_X11_Y14_N16
\mod_lcd|cont|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~10_combout\ = (\mod_lcd|cont|cont\(5) & (!\mod_lcd|cont|Add0~9\)) # (!\mod_lcd|cont|cont\(5) & ((\mod_lcd|cont|Add0~9\) # (GND)))
-- \mod_lcd|cont|Add0~11\ = CARRY((!\mod_lcd|cont|Add0~9\) # (!\mod_lcd|cont|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(5),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~9\,
	combout => \mod_lcd|cont|Add0~10_combout\,
	cout => \mod_lcd|cont|Add0~11\);

-- Location: FF_X11_Y14_N17
\mod_lcd|cont|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~10_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(5));

-- Location: LCCOMB_X11_Y14_N18
\mod_lcd|cont|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~12_combout\ = (\mod_lcd|cont|cont\(6) & (\mod_lcd|cont|Add0~11\ $ (GND))) # (!\mod_lcd|cont|cont\(6) & (!\mod_lcd|cont|Add0~11\ & VCC))
-- \mod_lcd|cont|Add0~13\ = CARRY((\mod_lcd|cont|cont\(6) & !\mod_lcd|cont|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(6),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~11\,
	combout => \mod_lcd|cont|Add0~12_combout\,
	cout => \mod_lcd|cont|Add0~13\);

-- Location: FF_X11_Y14_N19
\mod_lcd|cont|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~12_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(6));

-- Location: LCCOMB_X11_Y14_N20
\mod_lcd|cont|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~14_combout\ = (\mod_lcd|cont|cont\(7) & (!\mod_lcd|cont|Add0~13\)) # (!\mod_lcd|cont|cont\(7) & ((\mod_lcd|cont|Add0~13\) # (GND)))
-- \mod_lcd|cont|Add0~15\ = CARRY((!\mod_lcd|cont|Add0~13\) # (!\mod_lcd|cont|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(7),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~13\,
	combout => \mod_lcd|cont|Add0~14_combout\,
	cout => \mod_lcd|cont|Add0~15\);

-- Location: FF_X11_Y14_N21
\mod_lcd|cont|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~14_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(7));

-- Location: LCCOMB_X11_Y14_N22
\mod_lcd|cont|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~16_combout\ = (\mod_lcd|cont|cont\(8) & (\mod_lcd|cont|Add0~15\ $ (GND))) # (!\mod_lcd|cont|cont\(8) & (!\mod_lcd|cont|Add0~15\ & VCC))
-- \mod_lcd|cont|Add0~17\ = CARRY((\mod_lcd|cont|cont\(8) & !\mod_lcd|cont|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(8),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~15\,
	combout => \mod_lcd|cont|Add0~16_combout\,
	cout => \mod_lcd|cont|Add0~17\);

-- Location: LCCOMB_X11_Y14_N4
\mod_lcd|cont|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~11_combout\ = (\mod_lcd|cont|Add0~16_combout\ & !\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|Add0~16_combout\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|cont~11_combout\);

-- Location: FF_X11_Y14_N5
\mod_lcd|cont|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~11_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(8));

-- Location: LCCOMB_X11_Y14_N24
\mod_lcd|cont|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~18_combout\ = (\mod_lcd|cont|cont\(9) & (!\mod_lcd|cont|Add0~17\)) # (!\mod_lcd|cont|cont\(9) & ((\mod_lcd|cont|Add0~17\) # (GND)))
-- \mod_lcd|cont|Add0~19\ = CARRY((!\mod_lcd|cont|Add0~17\) # (!\mod_lcd|cont|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(9),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~17\,
	combout => \mod_lcd|cont|Add0~18_combout\,
	cout => \mod_lcd|cont|Add0~19\);

-- Location: FF_X11_Y14_N25
\mod_lcd|cont|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~18_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(9));

-- Location: LCCOMB_X11_Y14_N26
\mod_lcd|cont|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~20_combout\ = (\mod_lcd|cont|cont\(10) & (\mod_lcd|cont|Add0~19\ $ (GND))) # (!\mod_lcd|cont|cont\(10) & (!\mod_lcd|cont|Add0~19\ & VCC))
-- \mod_lcd|cont|Add0~21\ = CARRY((\mod_lcd|cont|cont\(10) & !\mod_lcd|cont|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(10),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~19\,
	combout => \mod_lcd|cont|Add0~20_combout\,
	cout => \mod_lcd|cont|Add0~21\);

-- Location: FF_X11_Y14_N27
\mod_lcd|cont|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~20_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(10));

-- Location: LCCOMB_X11_Y14_N28
\mod_lcd|cont|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~22_combout\ = (\mod_lcd|cont|cont\(11) & (!\mod_lcd|cont|Add0~21\)) # (!\mod_lcd|cont|cont\(11) & ((\mod_lcd|cont|Add0~21\) # (GND)))
-- \mod_lcd|cont|Add0~23\ = CARRY((!\mod_lcd|cont|Add0~21\) # (!\mod_lcd|cont|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(11),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~21\,
	combout => \mod_lcd|cont|Add0~22_combout\,
	cout => \mod_lcd|cont|Add0~23\);

-- Location: FF_X11_Y14_N29
\mod_lcd|cont|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~22_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(11));

-- Location: LCCOMB_X11_Y14_N30
\mod_lcd|cont|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~24_combout\ = (\mod_lcd|cont|cont\(12) & (\mod_lcd|cont|Add0~23\ $ (GND))) # (!\mod_lcd|cont|cont\(12) & (!\mod_lcd|cont|Add0~23\ & VCC))
-- \mod_lcd|cont|Add0~25\ = CARRY((\mod_lcd|cont|cont\(12) & !\mod_lcd|cont|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(12),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~23\,
	combout => \mod_lcd|cont|Add0~24_combout\,
	cout => \mod_lcd|cont|Add0~25\);

-- Location: FF_X11_Y14_N31
\mod_lcd|cont|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~24_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(12));

-- Location: LCCOMB_X11_Y13_N0
\mod_lcd|cont|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~26_combout\ = (\mod_lcd|cont|cont\(13) & (!\mod_lcd|cont|Add0~25\)) # (!\mod_lcd|cont|cont\(13) & ((\mod_lcd|cont|Add0~25\) # (GND)))
-- \mod_lcd|cont|Add0~27\ = CARRY((!\mod_lcd|cont|Add0~25\) # (!\mod_lcd|cont|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(13),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~25\,
	combout => \mod_lcd|cont|Add0~26_combout\,
	cout => \mod_lcd|cont|Add0~27\);

-- Location: LCCOMB_X10_Y13_N14
\mod_lcd|cont|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~10_combout\ = (\mod_lcd|cont|Add0~26_combout\ & !\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|Add0~26_combout\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|cont~10_combout\);

-- Location: FF_X10_Y13_N15
\mod_lcd|cont|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~10_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(13));

-- Location: LCCOMB_X11_Y13_N2
\mod_lcd|cont|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~28_combout\ = (\mod_lcd|cont|cont\(14) & (\mod_lcd|cont|Add0~27\ $ (GND))) # (!\mod_lcd|cont|cont\(14) & (!\mod_lcd|cont|Add0~27\ & VCC))
-- \mod_lcd|cont|Add0~29\ = CARRY((\mod_lcd|cont|cont\(14) & !\mod_lcd|cont|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(14),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~27\,
	combout => \mod_lcd|cont|Add0~28_combout\,
	cout => \mod_lcd|cont|Add0~29\);

-- Location: LCCOMB_X10_Y13_N16
\mod_lcd|cont|cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~9_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~28_combout\,
	combout => \mod_lcd|cont|cont~9_combout\);

-- Location: FF_X10_Y13_N17
\mod_lcd|cont|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~9_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(14));

-- Location: LCCOMB_X11_Y13_N4
\mod_lcd|cont|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~30_combout\ = (\mod_lcd|cont|cont\(15) & (!\mod_lcd|cont|Add0~29\)) # (!\mod_lcd|cont|cont\(15) & ((\mod_lcd|cont|Add0~29\) # (GND)))
-- \mod_lcd|cont|Add0~31\ = CARRY((!\mod_lcd|cont|Add0~29\) # (!\mod_lcd|cont|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(15),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~29\,
	combout => \mod_lcd|cont|Add0~30_combout\,
	cout => \mod_lcd|cont|Add0~31\);

-- Location: LCCOMB_X10_Y13_N12
\mod_lcd|cont|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~8_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~30_combout\,
	combout => \mod_lcd|cont|cont~8_combout\);

-- Location: FF_X10_Y13_N13
\mod_lcd|cont|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~8_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(15));

-- Location: LCCOMB_X11_Y13_N6
\mod_lcd|cont|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~32_combout\ = (\mod_lcd|cont|cont\(16) & (\mod_lcd|cont|Add0~31\ $ (GND))) # (!\mod_lcd|cont|cont\(16) & (!\mod_lcd|cont|Add0~31\ & VCC))
-- \mod_lcd|cont|Add0~33\ = CARRY((\mod_lcd|cont|cont\(16) & !\mod_lcd|cont|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(16),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~31\,
	combout => \mod_lcd|cont|Add0~32_combout\,
	cout => \mod_lcd|cont|Add0~33\);

-- Location: LCCOMB_X10_Y13_N6
\mod_lcd|cont|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~7_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~32_combout\,
	combout => \mod_lcd|cont|cont~7_combout\);

-- Location: FF_X10_Y13_N7
\mod_lcd|cont|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~7_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(16));

-- Location: LCCOMB_X11_Y13_N8
\mod_lcd|cont|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~34_combout\ = (\mod_lcd|cont|cont\(17) & (!\mod_lcd|cont|Add0~33\)) # (!\mod_lcd|cont|cont\(17) & ((\mod_lcd|cont|Add0~33\) # (GND)))
-- \mod_lcd|cont|Add0~35\ = CARRY((!\mod_lcd|cont|Add0~33\) # (!\mod_lcd|cont|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(17),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~33\,
	combout => \mod_lcd|cont|Add0~34_combout\,
	cout => \mod_lcd|cont|Add0~35\);

-- Location: FF_X11_Y13_N9
\mod_lcd|cont|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~34_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(17));

-- Location: LCCOMB_X11_Y13_N10
\mod_lcd|cont|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~36_combout\ = (\mod_lcd|cont|cont\(18) & (\mod_lcd|cont|Add0~35\ $ (GND))) # (!\mod_lcd|cont|cont\(18) & (!\mod_lcd|cont|Add0~35\ & VCC))
-- \mod_lcd|cont|Add0~37\ = CARRY((\mod_lcd|cont|cont\(18) & !\mod_lcd|cont|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(18),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~35\,
	combout => \mod_lcd|cont|Add0~36_combout\,
	cout => \mod_lcd|cont|Add0~37\);

-- Location: LCCOMB_X10_Y13_N4
\mod_lcd|cont|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~6_combout\ = (\mod_lcd|cont|Add0~36_combout\ & !\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|Add0~36_combout\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|cont~6_combout\);

-- Location: FF_X10_Y13_N5
\mod_lcd|cont|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~6_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(18));

-- Location: LCCOMB_X11_Y13_N12
\mod_lcd|cont|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~38_combout\ = (\mod_lcd|cont|cont\(19) & (!\mod_lcd|cont|Add0~37\)) # (!\mod_lcd|cont|cont\(19) & ((\mod_lcd|cont|Add0~37\) # (GND)))
-- \mod_lcd|cont|Add0~39\ = CARRY((!\mod_lcd|cont|Add0~37\) # (!\mod_lcd|cont|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(19),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~37\,
	combout => \mod_lcd|cont|Add0~38_combout\,
	cout => \mod_lcd|cont|Add0~39\);

-- Location: FF_X11_Y13_N13
\mod_lcd|cont|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~38_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(19));

-- Location: LCCOMB_X11_Y13_N14
\mod_lcd|cont|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~40_combout\ = (\mod_lcd|cont|cont\(20) & (\mod_lcd|cont|Add0~39\ $ (GND))) # (!\mod_lcd|cont|cont\(20) & (!\mod_lcd|cont|Add0~39\ & VCC))
-- \mod_lcd|cont|Add0~41\ = CARRY((\mod_lcd|cont|cont\(20) & !\mod_lcd|cont|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(20),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~39\,
	combout => \mod_lcd|cont|Add0~40_combout\,
	cout => \mod_lcd|cont|Add0~41\);

-- Location: LCCOMB_X11_Y13_N30
\mod_lcd|cont|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~5_combout\ = (\mod_lcd|cont|Add0~40_combout\ & !\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|Add0~40_combout\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|cont~5_combout\);

-- Location: FF_X11_Y13_N31
\mod_lcd|cont|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~5_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(20));

-- Location: LCCOMB_X11_Y13_N16
\mod_lcd|cont|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~42_combout\ = (\mod_lcd|cont|cont\(21) & (!\mod_lcd|cont|Add0~41\)) # (!\mod_lcd|cont|cont\(21) & ((\mod_lcd|cont|Add0~41\) # (GND)))
-- \mod_lcd|cont|Add0~43\ = CARRY((!\mod_lcd|cont|Add0~41\) # (!\mod_lcd|cont|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(21),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~41\,
	combout => \mod_lcd|cont|Add0~42_combout\,
	cout => \mod_lcd|cont|Add0~43\);

-- Location: LCCOMB_X12_Y13_N4
\mod_lcd|cont|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~4_combout\ = (\mod_lcd|cont|Add0~42_combout\ & !\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|Add0~42_combout\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|cont~4_combout\);

-- Location: FF_X12_Y13_N5
\mod_lcd|cont|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~4_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(21));

-- Location: LCCOMB_X11_Y13_N18
\mod_lcd|cont|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~44_combout\ = (\mod_lcd|cont|cont\(22) & (\mod_lcd|cont|Add0~43\ $ (GND))) # (!\mod_lcd|cont|cont\(22) & (!\mod_lcd|cont|Add0~43\ & VCC))
-- \mod_lcd|cont|Add0~45\ = CARRY((\mod_lcd|cont|cont\(22) & !\mod_lcd|cont|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(22),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~43\,
	combout => \mod_lcd|cont|Add0~44_combout\,
	cout => \mod_lcd|cont|Add0~45\);

-- Location: LCCOMB_X12_Y13_N28
\mod_lcd|cont|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~3_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~44_combout\,
	combout => \mod_lcd|cont|cont~3_combout\);

-- Location: FF_X12_Y13_N29
\mod_lcd|cont|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~3_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(22));

-- Location: LCCOMB_X10_Y13_N26
\mod_lcd|cont|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~1_combout\ = (\mod_lcd|cont|cont\(21) & (!\mod_lcd|cont|cont\(19) & (\mod_lcd|cont|cont\(20) & \mod_lcd|cont|cont\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(21),
	datab => \mod_lcd|cont|cont\(19),
	datac => \mod_lcd|cont|cont\(20),
	datad => \mod_lcd|cont|cont\(22),
	combout => \mod_lcd|cont|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y13_N20
\mod_lcd|cont|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~46_combout\ = (\mod_lcd|cont|cont\(23) & (!\mod_lcd|cont|Add0~45\)) # (!\mod_lcd|cont|cont\(23) & ((\mod_lcd|cont|Add0~45\) # (GND)))
-- \mod_lcd|cont|Add0~47\ = CARRY((!\mod_lcd|cont|Add0~45\) # (!\mod_lcd|cont|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(23),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~45\,
	combout => \mod_lcd|cont|Add0~46_combout\,
	cout => \mod_lcd|cont|Add0~47\);

-- Location: LCCOMB_X11_Y13_N28
\mod_lcd|cont|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~2_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~46_combout\,
	combout => \mod_lcd|cont|cont~2_combout\);

-- Location: FF_X11_Y13_N29
\mod_lcd|cont|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~2_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(23));

-- Location: LCCOMB_X11_Y13_N22
\mod_lcd|cont|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~48_combout\ = (\mod_lcd|cont|cont\(24) & (\mod_lcd|cont|Add0~47\ $ (GND))) # (!\mod_lcd|cont|cont\(24) & (!\mod_lcd|cont|Add0~47\ & VCC))
-- \mod_lcd|cont|Add0~49\ = CARRY((\mod_lcd|cont|cont\(24) & !\mod_lcd|cont|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(24),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~47\,
	combout => \mod_lcd|cont|Add0~48_combout\,
	cout => \mod_lcd|cont|Add0~49\);

-- Location: LCCOMB_X10_Y13_N22
\mod_lcd|cont|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~1_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~48_combout\,
	combout => \mod_lcd|cont|cont~1_combout\);

-- Location: FF_X10_Y13_N23
\mod_lcd|cont|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~1_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(24));

-- Location: LCCOMB_X11_Y13_N24
\mod_lcd|cont|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~50_combout\ = (\mod_lcd|cont|cont\(25) & (!\mod_lcd|cont|Add0~49\)) # (!\mod_lcd|cont|cont\(25) & ((\mod_lcd|cont|Add0~49\) # (GND)))
-- \mod_lcd|cont|Add0~51\ = CARRY((!\mod_lcd|cont|Add0~49\) # (!\mod_lcd|cont|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(25),
	datad => VCC,
	cin => \mod_lcd|cont|Add0~49\,
	combout => \mod_lcd|cont|Add0~50_combout\,
	cout => \mod_lcd|cont|Add0~51\);

-- Location: FF_X11_Y13_N25
\mod_lcd|cont|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|Add0~50_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(25));

-- Location: LCCOMB_X11_Y13_N26
\mod_lcd|cont|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Add0~52_combout\ = \mod_lcd|cont|Add0~51\ $ (!\mod_lcd|cont|cont\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|cont|cont\(26),
	cin => \mod_lcd|cont|Add0~51\,
	combout => \mod_lcd|cont|Add0~52_combout\);

-- Location: LCCOMB_X10_Y13_N8
\mod_lcd|cont|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|cont~0_combout\ = (!\mod_lcd|cont|Equal0~8_combout\ & \mod_lcd|cont|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|Equal0~8_combout\,
	datad => \mod_lcd|cont|Add0~52_combout\,
	combout => \mod_lcd|cont|cont~0_combout\);

-- Location: FF_X10_Y13_N9
\mod_lcd|cont|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|cont~0_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|cont\(26));

-- Location: LCCOMB_X10_Y13_N28
\mod_lcd|cont|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~0_combout\ = (!\mod_lcd|cont|cont\(25) & (\mod_lcd|cont|cont\(26) & (\mod_lcd|cont|cont\(24) & \mod_lcd|cont|cont\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(25),
	datab => \mod_lcd|cont|cont\(26),
	datac => \mod_lcd|cont|cont\(24),
	datad => \mod_lcd|cont|cont\(23),
	combout => \mod_lcd|cont|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y13_N30
\mod_lcd|cont|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~2_combout\ = (\mod_lcd|cont|cont\(16) & (\mod_lcd|cont|cont\(18) & (!\mod_lcd|cont|cont\(17) & \mod_lcd|cont|cont\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(16),
	datab => \mod_lcd|cont|cont\(18),
	datac => \mod_lcd|cont|cont\(17),
	datad => \mod_lcd|cont|cont\(15),
	combout => \mod_lcd|cont|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y13_N0
\mod_lcd|cont|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~3_combout\ = (!\mod_lcd|cont|cont\(11) & (\mod_lcd|cont|cont\(13) & (!\mod_lcd|cont|cont\(12) & \mod_lcd|cont|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(11),
	datab => \mod_lcd|cont|cont\(13),
	datac => \mod_lcd|cont|cont\(12),
	datad => \mod_lcd|cont|cont\(14),
	combout => \mod_lcd|cont|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y13_N10
\mod_lcd|cont|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~4_combout\ = (\mod_lcd|cont|Equal0~1_combout\ & (\mod_lcd|cont|Equal0~0_combout\ & (\mod_lcd|cont|Equal0~2_combout\ & \mod_lcd|cont|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|Equal0~1_combout\,
	datab => \mod_lcd|cont|Equal0~0_combout\,
	datac => \mod_lcd|cont|Equal0~2_combout\,
	datad => \mod_lcd|cont|Equal0~3_combout\,
	combout => \mod_lcd|cont|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y14_N2
\mod_lcd|cont|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~5_combout\ = (!\mod_lcd|cont|cont\(10) & (!\mod_lcd|cont|cont\(7) & (\mod_lcd|cont|cont\(8) & !\mod_lcd|cont|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(10),
	datab => \mod_lcd|cont|cont\(7),
	datac => \mod_lcd|cont|cont\(8),
	datad => \mod_lcd|cont|cont\(9),
	combout => \mod_lcd|cont|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y14_N30
\mod_lcd|cont|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~7_combout\ = (!\mod_lcd|cont|cont\(0) & (!\mod_lcd|cont|cont\(1) & !\mod_lcd|cont|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|cont|cont\(0),
	datac => \mod_lcd|cont|cont\(1),
	datad => \mod_lcd|cont|cont\(2),
	combout => \mod_lcd|cont|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y14_N28
\mod_lcd|cont|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~6_combout\ = (!\mod_lcd|cont|cont\(5) & (!\mod_lcd|cont|cont\(3) & (!\mod_lcd|cont|cont\(4) & !\mod_lcd|cont|cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|cont\(5),
	datab => \mod_lcd|cont|cont\(3),
	datac => \mod_lcd|cont|cont\(4),
	datad => \mod_lcd|cont|cont\(6),
	combout => \mod_lcd|cont|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y13_N20
\mod_lcd|cont|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|Equal0~8_combout\ = (\mod_lcd|cont|Equal0~4_combout\ & (\mod_lcd|cont|Equal0~5_combout\ & (\mod_lcd|cont|Equal0~7_combout\ & \mod_lcd|cont|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|cont|Equal0~4_combout\,
	datab => \mod_lcd|cont|Equal0~5_combout\,
	datac => \mod_lcd|cont|Equal0~7_combout\,
	datad => \mod_lcd|cont|Equal0~6_combout\,
	combout => \mod_lcd|cont|Equal0~8_combout\);

-- Location: LCCOMB_X12_Y13_N24
\mod_lcd|cont|bus_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|cont|bus_out~0_combout\ = (\mod_lcd|cont|bus_out~q\) # (\mod_lcd|cont|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|cont|bus_out~q\,
	datad => \mod_lcd|cont|Equal0~8_combout\,
	combout => \mod_lcd|cont|bus_out~0_combout\);

-- Location: FF_X12_Y13_N25
\mod_lcd|cont|bus_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mod_lcd|cont|bus_out~0_combout\,
	clrn => \mod_lcd|fsm|ALT_INV_WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|cont|bus_out~q\);

-- Location: LCCOMB_X12_Y13_N20
\mod_lcd|fsm|next_state.ClearDisplay5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|next_state.ClearDisplay5~0_combout\ = (\mod_lcd|fsm|nx_proc:flag~combout\ & (\mod_lcd|cont|bus_out~q\ & \mod_lcd|fsm|current_state.ReturnHome3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|nx_proc:flag~combout\,
	datab => \mod_lcd|cont|bus_out~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome3~q\,
	combout => \mod_lcd|fsm|next_state.ClearDisplay5~0_combout\);

-- Location: FF_X12_Y13_N21
\mod_lcd|fsm|current_state.ClearDisplay5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|next_state.ClearDisplay5~0_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ClearDisplay5~q\);

-- Location: LCCOMB_X13_Y14_N4
\mod_lcd|fsm|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector7~3_combout\ = (!\sincronizadores:0:sinc|syncin~q\ & (!\sincronizadores:2:sinc|syncin~q\ & (!\sincronizadores:4:sinc|syncin~q\ & \sincronizadores:3:sinc|syncin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sincronizadores:0:sinc|syncin~q\,
	datab => \sincronizadores:2:sinc|syncin~q\,
	datac => \sincronizadores:4:sinc|syncin~q\,
	datad => \sincronizadores:3:sinc|syncin~q\,
	combout => \mod_lcd|fsm|Selector7~3_combout\);

-- Location: LCCOMB_X12_Y14_N14
\mod_lcd|fsm|Selector7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector7~15_combout\ = (\mod_lcd|fsm|current_state.ClearDisplay5~q\) # ((\mod_lcd|fsm|current_state.SetAddress~q\ & (!\sincronizadores:1:sinc|syncin~q\ & \mod_lcd|fsm|Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.SetAddress~q\,
	datab => \mod_lcd|fsm|current_state.ClearDisplay5~q\,
	datac => \sincronizadores:1:sinc|syncin~q\,
	datad => \mod_lcd|fsm|Selector7~3_combout\,
	combout => \mod_lcd|fsm|Selector7~15_combout\);

-- Location: FF_X12_Y14_N15
\mod_lcd|fsm|current_state.Write34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector7~15_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write34~q\);

-- Location: FF_X12_Y14_N5
\mod_lcd|fsm|current_state.Write35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write34~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write35~q\);

-- Location: FF_X12_Y14_N23
\mod_lcd|fsm|current_state.Write36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write35~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write36~q\);

-- Location: FF_X12_Y14_N31
\mod_lcd|fsm|current_state.Write37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.Write36~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.Write37~q\);

-- Location: LCCOMB_X12_Y13_N8
\mod_lcd|fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector4~0_combout\ = (\mod_lcd|fsm|current_state.Write37~q\) # ((\mod_lcd|fsm|current_state.ReturnHome4~q\ & !\mod_lcd|cont|bus_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write37~q\,
	datac => \mod_lcd|fsm|current_state.ReturnHome4~q\,
	datad => \mod_lcd|cont|bus_out~q\,
	combout => \mod_lcd|fsm|Selector4~0_combout\);

-- Location: LCCOMB_X12_Y13_N10
\mod_lcd|fsm|current_state.ReturnHome4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.ReturnHome4~feeder_combout\ = \mod_lcd|fsm|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mod_lcd|fsm|Selector4~0_combout\,
	combout => \mod_lcd|fsm|current_state.ReturnHome4~feeder_combout\);

-- Location: FF_X12_Y13_N11
\mod_lcd|fsm|current_state.ReturnHome4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.ReturnHome4~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ReturnHome4~q\);

-- Location: LCCOMB_X12_Y13_N14
\mod_lcd|fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector0~0_combout\ = (!\mod_lcd|fsm|nx_proc:flag~combout\ & ((\mod_lcd|fsm|current_state.ReturnHome1~q\) # ((\mod_lcd|fsm|current_state.ReturnHome3~q\) # (\mod_lcd|fsm|current_state.ReturnHome2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.ReturnHome1~q\,
	datab => \mod_lcd|fsm|nx_proc:flag~combout\,
	datac => \mod_lcd|fsm|current_state.ReturnHome3~q\,
	datad => \mod_lcd|fsm|current_state.ReturnHome2~q\,
	combout => \mod_lcd|fsm|Selector0~0_combout\);

-- Location: LCCOMB_X12_Y13_N12
\mod_lcd|fsm|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector0~1_combout\ = (\mod_lcd|fsm|current_state.EntryMode~q\) # ((\mod_lcd|cont|bus_out~q\ & ((\mod_lcd|fsm|current_state.ReturnHome4~q\) # (\mod_lcd|fsm|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.EntryMode~q\,
	datab => \mod_lcd|fsm|current_state.ReturnHome4~q\,
	datac => \mod_lcd|fsm|Selector0~0_combout\,
	datad => \mod_lcd|cont|bus_out~q\,
	combout => \mod_lcd|fsm|Selector0~1_combout\);

-- Location: LCCOMB_X13_Y14_N8
\mod_lcd|fsm|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector0~2_combout\ = (\mod_lcd|fsm|Selector0~1_combout\) # ((\mod_lcd|fsm|current_state.SetAddress~q\ & !\mod_lcd|fsm|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Selector0~1_combout\,
	datab => \mod_lcd|fsm|current_state.SetAddress~q\,
	datad => \mod_lcd|fsm|Mux0~2_combout\,
	combout => \mod_lcd|fsm|Selector0~2_combout\);

-- Location: FF_X13_Y14_N9
\mod_lcd|fsm|current_state.ClearDisplay2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|Selector0~2_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.ClearDisplay2~q\);

-- Location: FF_X12_Y14_N19
\mod_lcd|fsm|current_state.rx1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.ClearDisplay2~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.rx1~q\);

-- Location: FF_X10_Y18_N27
\mod_lcd|fsm|current_state.rx2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.rx1~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.rx2~q\);

-- Location: FF_X10_Y18_N11
\mod_lcd|fsm|current_state.rx3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	asdata => \mod_lcd|fsm|current_state.rx2~q\,
	clrn => \reset_low~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.rx3~q\);

-- Location: LCCOMB_X10_Y18_N6
\mod_lcd|fsm|current_state.rx4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.rx4~feeder_combout\ = \mod_lcd|fsm|current_state.rx3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.rx3~q\,
	combout => \mod_lcd|fsm|current_state.rx4~feeder_combout\);

-- Location: FF_X10_Y18_N7
\mod_lcd|fsm|current_state.rx4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~clkctrl_outclk\,
	d => \mod_lcd|fsm|current_state.rx4~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.rx4~q\);

-- Location: LCCOMB_X10_Y18_N18
\mod_lcd|fsm|current_state.SetAddress~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|current_state.SetAddress~feeder_combout\ = \mod_lcd|fsm|current_state.rx4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mod_lcd|fsm|current_state.rx4~q\,
	combout => \mod_lcd|fsm|current_state.SetAddress~feeder_combout\);

-- Location: FF_X10_Y18_N19
\mod_lcd|fsm|current_state.SetAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mod_lcd|fsm|e~q\,
	d => \mod_lcd|fsm|current_state.SetAddress~feeder_combout\,
	clrn => \reset_low~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mod_lcd|fsm|current_state.SetAddress~q\);

-- Location: LCCOMB_X13_Y15_N30
\mod_lcd|fsm|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr12~0_combout\ = (\mod_lcd|fsm|current_state.FunctionSet1~q\ & (!\mod_lcd|fsm|current_state.FunctionSet3~q\ & (!\mod_lcd|fsm|current_state.FunctionSet4~q\ & !\mod_lcd|fsm|current_state.FunctionSet2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.FunctionSet1~q\,
	datab => \mod_lcd|fsm|current_state.FunctionSet3~q\,
	datac => \mod_lcd|fsm|current_state.FunctionSet4~q\,
	datad => \mod_lcd|fsm|current_state.FunctionSet2~q\,
	combout => \mod_lcd|fsm|WideOr12~0_combout\);

-- Location: LCCOMB_X12_Y14_N24
\mod_lcd|fsm|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector17~0_combout\ = (!\mod_lcd|fsm|current_state.ClearDisplay2~q\ & (!\mod_lcd|fsm|current_state.ClearDisplay4~q\ & (!\mod_lcd|fsm|current_state.ClearDisplay1~q\ & !\mod_lcd|fsm|current_state.ClearDisplay3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.ClearDisplay2~q\,
	datab => \mod_lcd|fsm|current_state.ClearDisplay4~q\,
	datac => \mod_lcd|fsm|current_state.ClearDisplay1~q\,
	datad => \mod_lcd|fsm|current_state.ClearDisplay3~q\,
	combout => \mod_lcd|fsm|Selector17~0_combout\);

-- Location: LCCOMB_X12_Y14_N18
\mod_lcd|fsm|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector17~1_combout\ = (!\mod_lcd|fsm|current_state.ClearDisplay5~q\ & \mod_lcd|fsm|Selector17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|current_state.ClearDisplay5~q\,
	datad => \mod_lcd|fsm|Selector17~0_combout\,
	combout => \mod_lcd|fsm|Selector17~1_combout\);

-- Location: LCCOMB_X12_Y13_N26
\mod_lcd|fsm|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr13~0_combout\ = (\mod_lcd|fsm|WideOr26~0_combout\ & (!\mod_lcd|fsm|current_state.DisplayControl~q\ & (!\mod_lcd|fsm|current_state.EntryMode~q\ & \mod_lcd|fsm|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|WideOr26~0_combout\,
	datab => \mod_lcd|fsm|current_state.DisplayControl~q\,
	datac => \mod_lcd|fsm|current_state.EntryMode~q\,
	datad => \mod_lcd|fsm|Selector17~1_combout\,
	combout => \mod_lcd|fsm|WideOr13~0_combout\);

-- Location: LCCOMB_X10_Y18_N14
\mod_lcd|fsm|WideOr25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr25~combout\ = (\mod_lcd|fsm|current_state.SetAddress~q\) # ((!\mod_lcd|fsm|WideOr13~0_combout\) # (!\mod_lcd|fsm|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|current_state.SetAddress~q\,
	datac => \mod_lcd|fsm|WideOr12~0_combout\,
	datad => \mod_lcd|fsm|WideOr13~0_combout\,
	combout => \mod_lcd|fsm|WideOr25~combout\);

-- Location: LCCOMB_X11_Y18_N30
\mod_lcd|fsm|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector14~0_combout\ = (!\mod_lcd|fsm|current_state.Write4~q\ & (!\mod_lcd|fsm|current_state.Write11~q\ & (!\mod_lcd|fsm|current_state.Write27~q\ & !\mod_lcd|fsm|current_state.Write8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write4~q\,
	datab => \mod_lcd|fsm|current_state.Write11~q\,
	datac => \mod_lcd|fsm|current_state.Write27~q\,
	datad => \mod_lcd|fsm|current_state.Write8~q\,
	combout => \mod_lcd|fsm|Selector14~0_combout\);

-- Location: LCCOMB_X11_Y18_N16
\mod_lcd|fsm|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector14~1_combout\ = (!\mod_lcd|fsm|current_state.Write33~q\ & \mod_lcd|fsm|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|current_state.Write33~q\,
	datad => \mod_lcd|fsm|Selector14~0_combout\,
	combout => \mod_lcd|fsm|Selector14~1_combout\);

-- Location: LCCOMB_X12_Y14_N10
\mod_lcd|fsm|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector17~3_combout\ = (\mod_lcd|fsm|current_state.Write24~q\) # ((\mod_lcd|fsm|current_state.Write6~q\) # ((\mod_lcd|fsm|current_state.Write30~q\) # (\mod_lcd|fsm|current_state.Write2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write24~q\,
	datab => \mod_lcd|fsm|current_state.Write6~q\,
	datac => \mod_lcd|fsm|current_state.Write30~q\,
	datad => \mod_lcd|fsm|current_state.Write2~q\,
	combout => \mod_lcd|fsm|Selector17~3_combout\);

-- Location: LCCOMB_X12_Y14_N2
\mod_lcd|fsm|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector17~4_combout\ = (\mod_lcd|fsm|current_state.Write36~q\) # (((\mod_lcd|fsm|current_state.Write37~q\) # (\mod_lcd|fsm|Selector17~3_combout\)) # (!\mod_lcd|fsm|Selector17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write36~q\,
	datab => \mod_lcd|fsm|Selector17~1_combout\,
	datac => \mod_lcd|fsm|current_state.Write37~q\,
	datad => \mod_lcd|fsm|Selector17~3_combout\,
	combout => \mod_lcd|fsm|Selector17~4_combout\);

-- Location: IOIBUF_X28_Y24_N22
\rx_serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_serial,
	o => \rx_serial~input_o\);

-- Location: LCCOMB_X24_Y21_N2
\Receptor|t:0:uart|baud_cont[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[0]~9_combout\ = \Receptor|t:0:uart|baud_cont\(0) $ (VCC)
-- \Receptor|t:0:uart|baud_cont[0]~10\ = CARRY(\Receptor|t:0:uart|baud_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(0),
	datad => VCC,
	combout => \Receptor|t:0:uart|baud_cont[0]~9_combout\,
	cout => \Receptor|t:0:uart|baud_cont[0]~10\);

-- Location: LCCOMB_X24_Y21_N0
\Receptor|t:0:uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|LessThan0~0_combout\ = (!\Receptor|t:0:uart|baud_cont\(2) & (!\Receptor|t:0:uart|baud_cont\(6) & (!\Receptor|t:0:uart|baud_cont\(1) & !\Receptor|t:0:uart|baud_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(2),
	datab => \Receptor|t:0:uart|baud_cont\(6),
	datac => \Receptor|t:0:uart|baud_cont\(1),
	datad => \Receptor|t:0:uart|baud_cont\(3),
	combout => \Receptor|t:0:uart|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\Receptor|t:0:uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|LessThan0~1_combout\ = ((!\Receptor|t:0:uart|baud_cont\(6) & ((!\Receptor|t:0:uart|baud_cont\(5)) # (!\Receptor|t:0:uart|baud_cont\(4))))) # (!\Receptor|t:0:uart|baud_cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(6),
	datab => \Receptor|t:0:uart|baud_cont\(4),
	datac => \Receptor|t:0:uart|baud_cont\(5),
	datad => \Receptor|t:0:uart|baud_cont\(7),
	combout => \Receptor|t:0:uart|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y21_N14
\Receptor|t:0:uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|LessThan0~2_combout\ = (\Receptor|t:0:uart|baud_cont\(8) & (!\Receptor|t:0:uart|LessThan0~0_combout\ & !\Receptor|t:0:uart|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(8),
	datac => \Receptor|t:0:uart|LessThan0~0_combout\,
	datad => \Receptor|t:0:uart|LessThan0~1_combout\,
	combout => \Receptor|t:0:uart|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y21_N18
\Receptor|t:0:uart|state.stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|state.stop~1_combout\ = (\Receptor|t:0:uart|Decoder0~0_combout\ & ((\Receptor|t:0:uart|state.stop~0_combout\) # ((!\Receptor|t:0:uart|LessThan0~2_combout\ & \Receptor|t:0:uart|state.stop~q\)))) # (!\Receptor|t:0:uart|Decoder0~0_combout\ 
-- & (!\Receptor|t:0:uart|LessThan0~2_combout\ & (\Receptor|t:0:uart|state.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|Decoder0~0_combout\,
	datab => \Receptor|t:0:uart|LessThan0~2_combout\,
	datac => \Receptor|t:0:uart|state.stop~q\,
	datad => \Receptor|t:0:uart|state.stop~0_combout\,
	combout => \Receptor|t:0:uart|state.stop~1_combout\);

-- Location: FF_X23_Y21_N19
\Receptor|t:0:uart|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|state.stop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|state.stop~q\);

-- Location: LCCOMB_X23_Y21_N8
\Receptor|t:0:uart|baud_cont[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[8]~27_combout\ = (\Receptor|t:0:uart|state.data_bit~q\) # (\Receptor|t:0:uart|state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:0:uart|state.data_bit~q\,
	datad => \Receptor|t:0:uart|state.stop~q\,
	combout => \Receptor|t:0:uart|baud_cont[8]~27_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Receptor|t:0:uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Equal0~0_combout\ = (\Receptor|t:0:uart|baud_cont\(4) & (!\Receptor|t:0:uart|baud_cont\(1) & (\Receptor|t:0:uart|baud_cont\(3) & !\Receptor|t:0:uart|baud_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(4),
	datab => \Receptor|t:0:uart|baud_cont\(1),
	datac => \Receptor|t:0:uart|baud_cont\(3),
	datad => \Receptor|t:0:uart|baud_cont\(2),
	combout => \Receptor|t:0:uart|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y21_N28
\Receptor|t:0:uart|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Equal0~1_combout\ = (!\Receptor|t:0:uart|baud_cont\(5) & (\Receptor|t:0:uart|baud_cont\(7) & (\Receptor|t:0:uart|baud_cont\(6) & !\Receptor|t:0:uart|baud_cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(5),
	datab => \Receptor|t:0:uart|baud_cont\(7),
	datac => \Receptor|t:0:uart|baud_cont\(6),
	datad => \Receptor|t:0:uart|baud_cont\(8),
	combout => \Receptor|t:0:uart|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y21_N26
\Receptor|t:0:uart|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector13~0_combout\ = (\Receptor|t:0:uart|state.start~q\ & (((!\Receptor|t:0:uart|Equal0~1_combout\) # (!\Receptor|t:0:uart|Equal0~0_combout\)) # (!\Receptor|t:0:uart|baud_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(0),
	datab => \Receptor|t:0:uart|state.start~q\,
	datac => \Receptor|t:0:uart|Equal0~0_combout\,
	datad => \Receptor|t:0:uart|Equal0~1_combout\,
	combout => \Receptor|t:0:uart|Selector13~0_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Receptor|t:0:uart|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector13~1_combout\ = (\Receptor|t:0:uart|Selector13~0_combout\) # ((!\rx_serial~input_o\ & !\Receptor|t:0:uart|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|state.idle~q\,
	datad => \Receptor|t:0:uart|Selector13~0_combout\,
	combout => \Receptor|t:0:uart|Selector13~1_combout\);

-- Location: FF_X24_Y21_N21
\Receptor|t:0:uart|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|state.start~q\);

-- Location: LCCOMB_X24_Y21_N22
\Receptor|t:0:uart|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector14~0_combout\ = (\Receptor|t:0:uart|state.start~q\ & (\Receptor|t:0:uart|baud_cont\(0) & (\Receptor|t:0:uart|Equal0~0_combout\ & \Receptor|t:0:uart|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|state.start~q\,
	datab => \Receptor|t:0:uart|baud_cont\(0),
	datac => \Receptor|t:0:uart|Equal0~0_combout\,
	datad => \Receptor|t:0:uart|Equal0~1_combout\,
	combout => \Receptor|t:0:uart|Selector14~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Receptor|t:0:uart|baud_cont[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[8]~28_combout\ = ((\Receptor|t:0:uart|Selector14~0_combout\) # ((\Receptor|t:0:uart|baud_cont[8]~27_combout\ & \Receptor|t:0:uart|LessThan0~2_combout\))) # (!\Receptor|t:0:uart|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont[8]~27_combout\,
	datab => \Receptor|t:0:uart|state.idle~q\,
	datac => \Receptor|t:0:uart|Selector14~0_combout\,
	datad => \Receptor|t:0:uart|LessThan0~2_combout\,
	combout => \Receptor|t:0:uart|baud_cont[8]~28_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Receptor|t:0:uart|baud_cont[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[8]~29_combout\ = (!\Receptor|t:0:uart|state.espera~q\ & ((!\Receptor|t:0:uart|Selector14~0_combout\) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|Selector14~0_combout\,
	datad => \Receptor|t:0:uart|state.espera~q\,
	combout => \Receptor|t:0:uart|baud_cont[8]~29_combout\);

-- Location: FF_X24_Y21_N3
\Receptor|t:0:uart|baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[0]~9_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(0));

-- Location: LCCOMB_X24_Y21_N4
\Receptor|t:0:uart|baud_cont[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[1]~11_combout\ = (\Receptor|t:0:uart|baud_cont\(1) & (!\Receptor|t:0:uart|baud_cont[0]~10\)) # (!\Receptor|t:0:uart|baud_cont\(1) & ((\Receptor|t:0:uart|baud_cont[0]~10\) # (GND)))
-- \Receptor|t:0:uart|baud_cont[1]~12\ = CARRY((!\Receptor|t:0:uart|baud_cont[0]~10\) # (!\Receptor|t:0:uart|baud_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(1),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[0]~10\,
	combout => \Receptor|t:0:uart|baud_cont[1]~11_combout\,
	cout => \Receptor|t:0:uart|baud_cont[1]~12\);

-- Location: FF_X24_Y21_N5
\Receptor|t:0:uart|baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[1]~11_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(1));

-- Location: LCCOMB_X24_Y21_N6
\Receptor|t:0:uart|baud_cont[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[2]~13_combout\ = (\Receptor|t:0:uart|baud_cont\(2) & (\Receptor|t:0:uart|baud_cont[1]~12\ $ (GND))) # (!\Receptor|t:0:uart|baud_cont\(2) & (!\Receptor|t:0:uart|baud_cont[1]~12\ & VCC))
-- \Receptor|t:0:uart|baud_cont[2]~14\ = CARRY((\Receptor|t:0:uart|baud_cont\(2) & !\Receptor|t:0:uart|baud_cont[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(2),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[1]~12\,
	combout => \Receptor|t:0:uart|baud_cont[2]~13_combout\,
	cout => \Receptor|t:0:uart|baud_cont[2]~14\);

-- Location: FF_X24_Y21_N7
\Receptor|t:0:uart|baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[2]~13_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(2));

-- Location: LCCOMB_X24_Y21_N8
\Receptor|t:0:uart|baud_cont[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[3]~15_combout\ = (\Receptor|t:0:uart|baud_cont\(3) & (!\Receptor|t:0:uart|baud_cont[2]~14\)) # (!\Receptor|t:0:uart|baud_cont\(3) & ((\Receptor|t:0:uart|baud_cont[2]~14\) # (GND)))
-- \Receptor|t:0:uart|baud_cont[3]~16\ = CARRY((!\Receptor|t:0:uart|baud_cont[2]~14\) # (!\Receptor|t:0:uart|baud_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(3),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[2]~14\,
	combout => \Receptor|t:0:uart|baud_cont[3]~15_combout\,
	cout => \Receptor|t:0:uart|baud_cont[3]~16\);

-- Location: FF_X24_Y21_N9
\Receptor|t:0:uart|baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[3]~15_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(3));

-- Location: LCCOMB_X24_Y21_N10
\Receptor|t:0:uart|baud_cont[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[4]~17_combout\ = (\Receptor|t:0:uart|baud_cont\(4) & (\Receptor|t:0:uart|baud_cont[3]~16\ $ (GND))) # (!\Receptor|t:0:uart|baud_cont\(4) & (!\Receptor|t:0:uart|baud_cont[3]~16\ & VCC))
-- \Receptor|t:0:uart|baud_cont[4]~18\ = CARRY((\Receptor|t:0:uart|baud_cont\(4) & !\Receptor|t:0:uart|baud_cont[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(4),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[3]~16\,
	combout => \Receptor|t:0:uart|baud_cont[4]~17_combout\,
	cout => \Receptor|t:0:uart|baud_cont[4]~18\);

-- Location: FF_X24_Y21_N11
\Receptor|t:0:uart|baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[4]~17_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(4));

-- Location: LCCOMB_X24_Y21_N12
\Receptor|t:0:uart|baud_cont[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[5]~19_combout\ = (\Receptor|t:0:uart|baud_cont\(5) & (!\Receptor|t:0:uart|baud_cont[4]~18\)) # (!\Receptor|t:0:uart|baud_cont\(5) & ((\Receptor|t:0:uart|baud_cont[4]~18\) # (GND)))
-- \Receptor|t:0:uart|baud_cont[5]~20\ = CARRY((!\Receptor|t:0:uart|baud_cont[4]~18\) # (!\Receptor|t:0:uart|baud_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(5),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[4]~18\,
	combout => \Receptor|t:0:uart|baud_cont[5]~19_combout\,
	cout => \Receptor|t:0:uart|baud_cont[5]~20\);

-- Location: FF_X24_Y21_N13
\Receptor|t:0:uart|baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[5]~19_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(5));

-- Location: LCCOMB_X24_Y21_N14
\Receptor|t:0:uart|baud_cont[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[6]~21_combout\ = (\Receptor|t:0:uart|baud_cont\(6) & (\Receptor|t:0:uart|baud_cont[5]~20\ $ (GND))) # (!\Receptor|t:0:uart|baud_cont\(6) & (!\Receptor|t:0:uart|baud_cont[5]~20\ & VCC))
-- \Receptor|t:0:uart|baud_cont[6]~22\ = CARRY((\Receptor|t:0:uart|baud_cont\(6) & !\Receptor|t:0:uart|baud_cont[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(6),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[5]~20\,
	combout => \Receptor|t:0:uart|baud_cont[6]~21_combout\,
	cout => \Receptor|t:0:uart|baud_cont[6]~22\);

-- Location: FF_X24_Y21_N15
\Receptor|t:0:uart|baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[6]~21_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(6));

-- Location: LCCOMB_X24_Y21_N16
\Receptor|t:0:uart|baud_cont[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[7]~23_combout\ = (\Receptor|t:0:uart|baud_cont\(7) & (!\Receptor|t:0:uart|baud_cont[6]~22\)) # (!\Receptor|t:0:uart|baud_cont\(7) & ((\Receptor|t:0:uart|baud_cont[6]~22\) # (GND)))
-- \Receptor|t:0:uart|baud_cont[7]~24\ = CARRY((!\Receptor|t:0:uart|baud_cont[6]~22\) # (!\Receptor|t:0:uart|baud_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(7),
	datad => VCC,
	cin => \Receptor|t:0:uart|baud_cont[6]~22\,
	combout => \Receptor|t:0:uart|baud_cont[7]~23_combout\,
	cout => \Receptor|t:0:uart|baud_cont[7]~24\);

-- Location: FF_X24_Y21_N17
\Receptor|t:0:uart|baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[7]~23_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(7));

-- Location: LCCOMB_X24_Y21_N18
\Receptor|t:0:uart|baud_cont[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|baud_cont[8]~25_combout\ = \Receptor|t:0:uart|baud_cont[7]~24\ $ (!\Receptor|t:0:uart|baud_cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Receptor|t:0:uart|baud_cont\(8),
	cin => \Receptor|t:0:uart|baud_cont[7]~24\,
	combout => \Receptor|t:0:uart|baud_cont[8]~25_combout\);

-- Location: FF_X24_Y21_N19
\Receptor|t:0:uart|baud_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|baud_cont[8]~25_combout\,
	sclr => \Receptor|t:0:uart|baud_cont[8]~28_combout\,
	ena => \Receptor|t:0:uart|baud_cont[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|baud_cont\(8));

-- Location: LCCOMB_X23_Y21_N2
\Receptor|t:0:uart|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|state~7_combout\ = (\Receptor|t:0:uart|baud_cont\(8) & (\Receptor|t:0:uart|state.stop~q\ & (!\Receptor|t:0:uart|LessThan0~0_combout\ & !\Receptor|t:0:uart|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|baud_cont\(8),
	datab => \Receptor|t:0:uart|state.stop~q\,
	datac => \Receptor|t:0:uart|LessThan0~0_combout\,
	datad => \Receptor|t:0:uart|LessThan0~1_combout\,
	combout => \Receptor|t:0:uart|state~7_combout\);

-- Location: FF_X23_Y21_N3
\Receptor|t:0:uart|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|state.espera~q\);

-- Location: LCCOMB_X25_Y21_N8
\Receptor|t:0:uart|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector12~0_combout\ = (!\Receptor|t:0:uart|state.espera~q\ & (((\Receptor|t:0:uart|state.idle~q\ & !\Receptor|t:0:uart|Selector14~0_combout\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:0:uart|state.espera~q\,
	datac => \Receptor|t:0:uart|state.idle~q\,
	datad => \Receptor|t:0:uart|Selector14~0_combout\,
	combout => \Receptor|t:0:uart|Selector12~0_combout\);

-- Location: FF_X25_Y21_N9
\Receptor|t:0:uart|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|state.idle~q\);

-- Location: LCCOMB_X23_Y21_N12
\Receptor|t:0:uart|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector11~0_combout\ = (\Receptor|t:0:uart|baud_cont\(8) & (!\Receptor|t:0:uart|LessThan0~0_combout\ & !\Receptor|t:0:uart|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|baud_cont\(8),
	datac => \Receptor|t:0:uart|LessThan0~0_combout\,
	datad => \Receptor|t:0:uart|LessThan0~1_combout\,
	combout => \Receptor|t:0:uart|Selector11~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Receptor|t:0:uart|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector11~1_combout\ = (\Receptor|t:0:uart|state.data_bit~q\ & ((\Receptor|t:0:uart|bit_cont\(0) $ (\Receptor|t:0:uart|Selector11~0_combout\)))) # (!\Receptor|t:0:uart|state.data_bit~q\ & (\Receptor|t:0:uart|state.idle~q\ & 
-- (\Receptor|t:0:uart|bit_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|state.data_bit~q\,
	datab => \Receptor|t:0:uart|state.idle~q\,
	datac => \Receptor|t:0:uart|bit_cont\(0),
	datad => \Receptor|t:0:uart|Selector11~0_combout\,
	combout => \Receptor|t:0:uart|Selector11~1_combout\);

-- Location: FF_X23_Y21_N1
\Receptor|t:0:uart|bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|bit_cont\(0));

-- Location: LCCOMB_X23_Y21_N16
\Receptor|t:0:uart|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector10~0_combout\ = (\Receptor|t:0:uart|bit_cont\(1) & ((\Receptor|t:0:uart|state.data_bit~q\ & (!\Receptor|t:0:uart|LessThan0~2_combout\)) # (!\Receptor|t:0:uart|state.data_bit~q\ & ((\Receptor|t:0:uart|state.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|state.data_bit~q\,
	datab => \Receptor|t:0:uart|LessThan0~2_combout\,
	datac => \Receptor|t:0:uart|state.idle~q\,
	datad => \Receptor|t:0:uart|bit_cont\(1),
	combout => \Receptor|t:0:uart|Selector10~0_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Receptor|t:0:uart|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector10~1_combout\ = (\Receptor|t:0:uart|Selector10~0_combout\) # ((\Receptor|t:0:uart|Decoder0~0_combout\ & (\Receptor|t:0:uart|bit_cont\(0) $ (\Receptor|t:0:uart|bit_cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|Decoder0~0_combout\,
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Selector10~0_combout\,
	combout => \Receptor|t:0:uart|Selector10~1_combout\);

-- Location: FF_X23_Y21_N31
\Receptor|t:0:uart|bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|bit_cont\(1));

-- Location: LCCOMB_X23_Y21_N6
\Receptor|t:0:uart|state.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|state.stop~0_combout\ = (\Receptor|t:0:uart|bit_cont\(1) & (\Receptor|t:0:uart|bit_cont\(2) & \Receptor|t:0:uart|bit_cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|bit_cont\(1),
	datac => \Receptor|t:0:uart|bit_cont\(2),
	datad => \Receptor|t:0:uart|bit_cont\(0),
	combout => \Receptor|t:0:uart|state.stop~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Receptor|t:0:uart|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector14~1_combout\ = (!\rx_serial~input_o\ & \Receptor|t:0:uart|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_serial~input_o\,
	datad => \Receptor|t:0:uart|Selector14~0_combout\,
	combout => \Receptor|t:0:uart|Selector14~1_combout\);

-- Location: LCCOMB_X23_Y21_N22
\Receptor|t:0:uart|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector14~2_combout\ = (\Receptor|t:0:uart|Selector14~1_combout\) # ((\Receptor|t:0:uart|state.data_bit~q\ & ((!\Receptor|t:0:uart|LessThan0~2_combout\) # (!\Receptor|t:0:uart|state.stop~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|state.stop~0_combout\,
	datab => \Receptor|t:0:uart|LessThan0~2_combout\,
	datac => \Receptor|t:0:uart|state.data_bit~q\,
	datad => \Receptor|t:0:uart|Selector14~1_combout\,
	combout => \Receptor|t:0:uart|Selector14~2_combout\);

-- Location: FF_X23_Y21_N23
\Receptor|t:0:uart|state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|state.data_bit~q\);

-- Location: LCCOMB_X23_Y21_N26
\Receptor|t:0:uart|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~0_combout\ = (\Receptor|t:0:uart|state.data_bit~q\ & (\Receptor|t:0:uart|baud_cont\(8) & (!\Receptor|t:0:uart|LessThan0~0_combout\ & !\Receptor|t:0:uart|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|state.data_bit~q\,
	datab => \Receptor|t:0:uart|baud_cont\(8),
	datac => \Receptor|t:0:uart|LessThan0~0_combout\,
	datad => \Receptor|t:0:uart|LessThan0~1_combout\,
	combout => \Receptor|t:0:uart|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\Receptor|t:0:uart|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector9~1_combout\ = (\Receptor|t:0:uart|bit_cont\(0) & (\Receptor|t:0:uart|bit_cont\(1) $ (\Receptor|t:0:uart|bit_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:0:uart|bit_cont\(1),
	datac => \Receptor|t:0:uart|bit_cont\(2),
	datad => \Receptor|t:0:uart|bit_cont\(0),
	combout => \Receptor|t:0:uart|Selector9~1_combout\);

-- Location: LCCOMB_X23_Y21_N10
\Receptor|t:0:uart|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector9~0_combout\ = (\Receptor|t:0:uart|state.data_bit~q\ & (((!\Receptor|t:0:uart|LessThan0~2_combout\)) # (!\Receptor|t:0:uart|bit_cont\(0)))) # (!\Receptor|t:0:uart|state.data_bit~q\ & (((\Receptor|t:0:uart|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(0),
	datab => \Receptor|t:0:uart|state.idle~q\,
	datac => \Receptor|t:0:uart|state.data_bit~q\,
	datad => \Receptor|t:0:uart|LessThan0~2_combout\,
	combout => \Receptor|t:0:uart|Selector9~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\Receptor|t:0:uart|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Selector9~2_combout\ = (\Receptor|t:0:uart|Decoder0~0_combout\ & ((\Receptor|t:0:uart|Selector9~1_combout\) # ((\Receptor|t:0:uart|bit_cont\(2) & \Receptor|t:0:uart|Selector9~0_combout\)))) # (!\Receptor|t:0:uart|Decoder0~0_combout\ & 
-- (((\Receptor|t:0:uart|bit_cont\(2) & \Receptor|t:0:uart|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|Decoder0~0_combout\,
	datab => \Receptor|t:0:uart|Selector9~1_combout\,
	datac => \Receptor|t:0:uart|bit_cont\(2),
	datad => \Receptor|t:0:uart|Selector9~0_combout\,
	combout => \Receptor|t:0:uart|Selector9~2_combout\);

-- Location: FF_X23_Y21_N5
\Receptor|t:0:uart|bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|bit_cont\(2));

-- Location: LCCOMB_X22_Y21_N12
\Receptor|t:0:uart|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~1_combout\ = (!\Receptor|t:0:uart|bit_cont\(2) & (!\Receptor|t:0:uart|bit_cont\(0) & (!\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y21_N20
\Receptor|t:0:uart|rx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[0]~0_combout\ = (\Receptor|t:0:uart|Decoder0~1_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~1_combout\ & ((\Receptor|t:0:uart|rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(0),
	datad => \Receptor|t:0:uart|Decoder0~1_combout\,
	combout => \Receptor|t:0:uart|rx[0]~0_combout\);

-- Location: FF_X22_Y21_N21
\Receptor|t:0:uart|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(0));

-- Location: LCCOMB_X26_Y20_N2
\Receptor|t:1:uart|baud_cont[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[0]~11_combout\ = \Receptor|t:1:uart|baud_cont\(0) $ (VCC)
-- \Receptor|t:1:uart|baud_cont[0]~12\ = CARRY(\Receptor|t:1:uart|baud_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(0),
	datad => VCC,
	combout => \Receptor|t:1:uart|baud_cont[0]~11_combout\,
	cout => \Receptor|t:1:uart|baud_cont[0]~12\);

-- Location: LCCOMB_X26_Y20_N24
\Receptor|t:1:uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Equal0~0_combout\ = (!\Receptor|t:1:uart|baud_cont\(2) & (\Receptor|t:1:uart|baud_cont\(1) & (!\Receptor|t:1:uart|baud_cont\(6) & !\Receptor|t:1:uart|baud_cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(2),
	datab => \Receptor|t:1:uart|baud_cont\(1),
	datac => \Receptor|t:1:uart|baud_cont\(6),
	datad => \Receptor|t:1:uart|baud_cont\(5),
	combout => \Receptor|t:1:uart|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y20_N8
\Receptor|t:1:uart|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Equal0~1_combout\ = (\Receptor|t:1:uart|baud_cont\(7) & (\Receptor|t:1:uart|baud_cont\(3) & (!\Receptor|t:1:uart|baud_cont\(4) & !\Receptor|t:1:uart|baud_cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(7),
	datab => \Receptor|t:1:uart|baud_cont\(3),
	datac => \Receptor|t:1:uart|baud_cont\(4),
	datad => \Receptor|t:1:uart|baud_cont\(8),
	combout => \Receptor|t:1:uart|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y20_N28
\Receptor|t:1:uart|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Equal0~2_combout\ = (\Receptor|t:1:uart|baud_cont\(9) & (!\Receptor|t:1:uart|baud_cont\(10) & \Receptor|t:1:uart|baud_cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(9),
	datac => \Receptor|t:1:uart|baud_cont\(10),
	datad => \Receptor|t:1:uart|baud_cont\(0),
	combout => \Receptor|t:1:uart|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y20_N30
\Receptor|t:1:uart|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector15~0_combout\ = (\Receptor|t:1:uart|state.start~q\ & (((!\Receptor|t:1:uart|Equal0~2_combout\) # (!\Receptor|t:1:uart|Equal0~1_combout\)) # (!\Receptor|t:1:uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|Equal0~0_combout\,
	datab => \Receptor|t:1:uart|state.start~q\,
	datac => \Receptor|t:1:uart|Equal0~1_combout\,
	datad => \Receptor|t:1:uart|Equal0~2_combout\,
	combout => \Receptor|t:1:uart|Selector15~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Receptor|t:1:uart|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector15~1_combout\ = (\Receptor|t:1:uart|Selector15~0_combout\) # ((!\Receptor|t:1:uart|state.idle~q\ & !\rx_serial~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|state.idle~q\,
	datac => \Receptor|t:1:uart|Selector15~0_combout\,
	datad => \rx_serial~input_o\,
	combout => \Receptor|t:1:uart|Selector15~1_combout\);

-- Location: FF_X25_Y20_N15
\Receptor|t:1:uart|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|state.start~q\);

-- Location: LCCOMB_X26_Y20_N26
\Receptor|t:1:uart|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector16~0_combout\ = (\Receptor|t:1:uart|state.start~q\ & (\Receptor|t:1:uart|Equal0~0_combout\ & (\Receptor|t:1:uart|Equal0~2_combout\ & \Receptor|t:1:uart|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|state.start~q\,
	datab => \Receptor|t:1:uart|Equal0~0_combout\,
	datac => \Receptor|t:1:uart|Equal0~2_combout\,
	datad => \Receptor|t:1:uart|Equal0~1_combout\,
	combout => \Receptor|t:1:uart|Selector16~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\Receptor|t:1:uart|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector13~0_combout\ = (\Receptor|t:1:uart|state.data_bit~q\ & (\Receptor|t:1:uart|LessThan0~2_combout\ $ (((\Receptor|t:1:uart|bit_cont\(0)))))) # (!\Receptor|t:1:uart|state.data_bit~q\ & (((\Receptor|t:1:uart|state.idle~q\ & 
-- \Receptor|t:1:uart|bit_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|LessThan0~2_combout\,
	datab => \Receptor|t:1:uart|state.idle~q\,
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|state.data_bit~q\,
	combout => \Receptor|t:1:uart|Selector13~0_combout\);

-- Location: FF_X29_Y20_N31
\Receptor|t:1:uart|bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|bit_cont\(0));

-- Location: LCCOMB_X28_Y20_N10
\Receptor|t:1:uart|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~0_combout\ = (\Receptor|t:1:uart|state.data_bit~q\ & \Receptor|t:1:uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:1:uart|state.data_bit~q\,
	datad => \Receptor|t:1:uart|LessThan0~2_combout\,
	combout => \Receptor|t:1:uart|Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y20_N28
\Receptor|t:1:uart|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector11~1_combout\ = (\Receptor|t:1:uart|bit_cont\(0) & (\Receptor|t:1:uart|bit_cont\(1) $ (\Receptor|t:1:uart|bit_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(0),
	datab => \Receptor|t:1:uart|bit_cont\(1),
	datac => \Receptor|t:1:uart|bit_cont\(2),
	combout => \Receptor|t:1:uart|Selector11~1_combout\);

-- Location: LCCOMB_X25_Y20_N10
\Receptor|t:1:uart|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector11~0_combout\ = (\Receptor|t:1:uart|state.data_bit~q\ & (((!\Receptor|t:1:uart|bit_cont\(0)) # (!\Receptor|t:1:uart|LessThan0~2_combout\)))) # (!\Receptor|t:1:uart|state.data_bit~q\ & (\Receptor|t:1:uart|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|state.idle~q\,
	datab => \Receptor|t:1:uart|state.data_bit~q\,
	datac => \Receptor|t:1:uart|LessThan0~2_combout\,
	datad => \Receptor|t:1:uart|bit_cont\(0),
	combout => \Receptor|t:1:uart|Selector11~0_combout\);

-- Location: LCCOMB_X25_Y20_N26
\Receptor|t:1:uart|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector11~2_combout\ = (\Receptor|t:1:uart|Decoder0~0_combout\ & ((\Receptor|t:1:uart|Selector11~1_combout\) # ((\Receptor|t:1:uart|bit_cont\(2) & \Receptor|t:1:uart|Selector11~0_combout\)))) # (!\Receptor|t:1:uart|Decoder0~0_combout\ 
-- & (((\Receptor|t:1:uart|bit_cont\(2) & \Receptor|t:1:uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|Decoder0~0_combout\,
	datab => \Receptor|t:1:uart|Selector11~1_combout\,
	datac => \Receptor|t:1:uart|bit_cont\(2),
	datad => \Receptor|t:1:uart|Selector11~0_combout\,
	combout => \Receptor|t:1:uart|Selector11~2_combout\);

-- Location: FF_X25_Y20_N27
\Receptor|t:1:uart|bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|bit_cont\(2));

-- Location: LCCOMB_X25_Y20_N22
\Receptor|t:1:uart|state.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|state.stop~0_combout\ = (\Receptor|t:1:uart|bit_cont\(0) & (\Receptor|t:1:uart|bit_cont\(1) & \Receptor|t:1:uart|bit_cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(0),
	datab => \Receptor|t:1:uart|bit_cont\(1),
	datac => \Receptor|t:1:uart|bit_cont\(2),
	combout => \Receptor|t:1:uart|state.stop~0_combout\);

-- Location: LCCOMB_X25_Y20_N12
\Receptor|t:1:uart|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector16~1_combout\ = (\Receptor|t:1:uart|state.data_bit~q\ & ((!\Receptor|t:1:uart|LessThan0~2_combout\) # (!\Receptor|t:1:uart|state.stop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|state.stop~0_combout\,
	datab => \Receptor|t:1:uart|state.data_bit~q\,
	datac => \Receptor|t:1:uart|LessThan0~2_combout\,
	combout => \Receptor|t:1:uart|Selector16~1_combout\);

-- Location: LCCOMB_X25_Y20_N16
\Receptor|t:1:uart|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector16~2_combout\ = (\Receptor|t:1:uart|Selector16~1_combout\) # ((!\rx_serial~input_o\ & \Receptor|t:1:uart|Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:1:uart|Selector16~0_combout\,
	datad => \Receptor|t:1:uart|Selector16~1_combout\,
	combout => \Receptor|t:1:uart|Selector16~2_combout\);

-- Location: FF_X25_Y20_N17
\Receptor|t:1:uart|state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|state.data_bit~q\);

-- Location: LCCOMB_X25_Y20_N18
\Receptor|t:1:uart|state.stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|state.stop~1_combout\ = (\Receptor|t:1:uart|LessThan0~2_combout\ & (\Receptor|t:1:uart|state.data_bit~q\ & ((\Receptor|t:1:uart|state.stop~0_combout\)))) # (!\Receptor|t:1:uart|LessThan0~2_combout\ & 
-- (((\Receptor|t:1:uart|state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|LessThan0~2_combout\,
	datab => \Receptor|t:1:uart|state.data_bit~q\,
	datac => \Receptor|t:1:uart|state.stop~q\,
	datad => \Receptor|t:1:uart|state.stop~0_combout\,
	combout => \Receptor|t:1:uart|state.stop~1_combout\);

-- Location: FF_X25_Y20_N19
\Receptor|t:1:uart|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|state.stop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|state.stop~q\);

-- Location: LCCOMB_X25_Y20_N24
\Receptor|t:1:uart|baud_cont[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[4]~33_combout\ = (\Receptor|t:1:uart|state.stop~q\) # (\Receptor|t:1:uart|state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|state.stop~q\,
	datad => \Receptor|t:1:uart|state.data_bit~q\,
	combout => \Receptor|t:1:uart|baud_cont[4]~33_combout\);

-- Location: LCCOMB_X26_Y20_N0
\Receptor|t:1:uart|baud_cont[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[4]~34_combout\ = (\Receptor|t:1:uart|Selector16~0_combout\) # (((\Receptor|t:1:uart|baud_cont[4]~33_combout\ & \Receptor|t:1:uart|LessThan0~2_combout\)) # (!\Receptor|t:1:uart|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|Selector16~0_combout\,
	datab => \Receptor|t:1:uart|baud_cont[4]~33_combout\,
	datac => \Receptor|t:1:uart|state.idle~q\,
	datad => \Receptor|t:1:uart|LessThan0~2_combout\,
	combout => \Receptor|t:1:uart|baud_cont[4]~34_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Receptor|t:1:uart|baud_cont[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[4]~35_combout\ = (!\Receptor|t:1:uart|state.espera~q\ & ((!\Receptor|t:1:uart|Selector16~0_combout\) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|Selector16~0_combout\,
	datad => \Receptor|t:1:uart|state.espera~q\,
	combout => \Receptor|t:1:uart|baud_cont[4]~35_combout\);

-- Location: FF_X26_Y20_N3
\Receptor|t:1:uart|baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[0]~11_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(0));

-- Location: LCCOMB_X26_Y20_N4
\Receptor|t:1:uart|baud_cont[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[1]~13_combout\ = (\Receptor|t:1:uart|baud_cont\(1) & (!\Receptor|t:1:uart|baud_cont[0]~12\)) # (!\Receptor|t:1:uart|baud_cont\(1) & ((\Receptor|t:1:uart|baud_cont[0]~12\) # (GND)))
-- \Receptor|t:1:uart|baud_cont[1]~14\ = CARRY((!\Receptor|t:1:uart|baud_cont[0]~12\) # (!\Receptor|t:1:uart|baud_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(1),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[0]~12\,
	combout => \Receptor|t:1:uart|baud_cont[1]~13_combout\,
	cout => \Receptor|t:1:uart|baud_cont[1]~14\);

-- Location: FF_X26_Y20_N5
\Receptor|t:1:uart|baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[1]~13_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(1));

-- Location: LCCOMB_X26_Y20_N6
\Receptor|t:1:uart|baud_cont[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[2]~15_combout\ = (\Receptor|t:1:uart|baud_cont\(2) & (\Receptor|t:1:uart|baud_cont[1]~14\ $ (GND))) # (!\Receptor|t:1:uart|baud_cont\(2) & (!\Receptor|t:1:uart|baud_cont[1]~14\ & VCC))
-- \Receptor|t:1:uart|baud_cont[2]~16\ = CARRY((\Receptor|t:1:uart|baud_cont\(2) & !\Receptor|t:1:uart|baud_cont[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(2),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[1]~14\,
	combout => \Receptor|t:1:uart|baud_cont[2]~15_combout\,
	cout => \Receptor|t:1:uart|baud_cont[2]~16\);

-- Location: FF_X26_Y20_N7
\Receptor|t:1:uart|baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[2]~15_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(2));

-- Location: LCCOMB_X26_Y20_N8
\Receptor|t:1:uart|baud_cont[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[3]~17_combout\ = (\Receptor|t:1:uart|baud_cont\(3) & (!\Receptor|t:1:uart|baud_cont[2]~16\)) # (!\Receptor|t:1:uart|baud_cont\(3) & ((\Receptor|t:1:uart|baud_cont[2]~16\) # (GND)))
-- \Receptor|t:1:uart|baud_cont[3]~18\ = CARRY((!\Receptor|t:1:uart|baud_cont[2]~16\) # (!\Receptor|t:1:uart|baud_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(3),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[2]~16\,
	combout => \Receptor|t:1:uart|baud_cont[3]~17_combout\,
	cout => \Receptor|t:1:uart|baud_cont[3]~18\);

-- Location: FF_X26_Y20_N9
\Receptor|t:1:uart|baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[3]~17_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(3));

-- Location: LCCOMB_X26_Y20_N10
\Receptor|t:1:uart|baud_cont[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[4]~19_combout\ = (\Receptor|t:1:uart|baud_cont\(4) & (\Receptor|t:1:uart|baud_cont[3]~18\ $ (GND))) # (!\Receptor|t:1:uart|baud_cont\(4) & (!\Receptor|t:1:uart|baud_cont[3]~18\ & VCC))
-- \Receptor|t:1:uart|baud_cont[4]~20\ = CARRY((\Receptor|t:1:uart|baud_cont\(4) & !\Receptor|t:1:uart|baud_cont[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(4),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[3]~18\,
	combout => \Receptor|t:1:uart|baud_cont[4]~19_combout\,
	cout => \Receptor|t:1:uart|baud_cont[4]~20\);

-- Location: FF_X26_Y20_N11
\Receptor|t:1:uart|baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[4]~19_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(4));

-- Location: LCCOMB_X26_Y20_N12
\Receptor|t:1:uart|baud_cont[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[5]~21_combout\ = (\Receptor|t:1:uart|baud_cont\(5) & (!\Receptor|t:1:uart|baud_cont[4]~20\)) # (!\Receptor|t:1:uart|baud_cont\(5) & ((\Receptor|t:1:uart|baud_cont[4]~20\) # (GND)))
-- \Receptor|t:1:uart|baud_cont[5]~22\ = CARRY((!\Receptor|t:1:uart|baud_cont[4]~20\) # (!\Receptor|t:1:uart|baud_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(5),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[4]~20\,
	combout => \Receptor|t:1:uart|baud_cont[5]~21_combout\,
	cout => \Receptor|t:1:uart|baud_cont[5]~22\);

-- Location: FF_X26_Y20_N13
\Receptor|t:1:uart|baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[5]~21_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(5));

-- Location: LCCOMB_X26_Y20_N14
\Receptor|t:1:uart|baud_cont[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[6]~23_combout\ = (\Receptor|t:1:uart|baud_cont\(6) & (\Receptor|t:1:uart|baud_cont[5]~22\ $ (GND))) # (!\Receptor|t:1:uart|baud_cont\(6) & (!\Receptor|t:1:uart|baud_cont[5]~22\ & VCC))
-- \Receptor|t:1:uart|baud_cont[6]~24\ = CARRY((\Receptor|t:1:uart|baud_cont\(6) & !\Receptor|t:1:uart|baud_cont[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(6),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[5]~22\,
	combout => \Receptor|t:1:uart|baud_cont[6]~23_combout\,
	cout => \Receptor|t:1:uart|baud_cont[6]~24\);

-- Location: FF_X26_Y20_N15
\Receptor|t:1:uart|baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[6]~23_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(6));

-- Location: LCCOMB_X26_Y20_N16
\Receptor|t:1:uart|baud_cont[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[7]~25_combout\ = (\Receptor|t:1:uart|baud_cont\(7) & (!\Receptor|t:1:uart|baud_cont[6]~24\)) # (!\Receptor|t:1:uart|baud_cont\(7) & ((\Receptor|t:1:uart|baud_cont[6]~24\) # (GND)))
-- \Receptor|t:1:uart|baud_cont[7]~26\ = CARRY((!\Receptor|t:1:uart|baud_cont[6]~24\) # (!\Receptor|t:1:uart|baud_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(7),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[6]~24\,
	combout => \Receptor|t:1:uart|baud_cont[7]~25_combout\,
	cout => \Receptor|t:1:uart|baud_cont[7]~26\);

-- Location: FF_X26_Y20_N17
\Receptor|t:1:uart|baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[7]~25_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(7));

-- Location: LCCOMB_X26_Y20_N18
\Receptor|t:1:uart|baud_cont[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[8]~27_combout\ = (\Receptor|t:1:uart|baud_cont\(8) & (\Receptor|t:1:uart|baud_cont[7]~26\ $ (GND))) # (!\Receptor|t:1:uart|baud_cont\(8) & (!\Receptor|t:1:uart|baud_cont[7]~26\ & VCC))
-- \Receptor|t:1:uart|baud_cont[8]~28\ = CARRY((\Receptor|t:1:uart|baud_cont\(8) & !\Receptor|t:1:uart|baud_cont[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(8),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[7]~26\,
	combout => \Receptor|t:1:uart|baud_cont[8]~27_combout\,
	cout => \Receptor|t:1:uart|baud_cont[8]~28\);

-- Location: FF_X26_Y20_N19
\Receptor|t:1:uart|baud_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[8]~27_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(8));

-- Location: LCCOMB_X26_Y20_N20
\Receptor|t:1:uart|baud_cont[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[9]~29_combout\ = (\Receptor|t:1:uart|baud_cont\(9) & (!\Receptor|t:1:uart|baud_cont[8]~28\)) # (!\Receptor|t:1:uart|baud_cont\(9) & ((\Receptor|t:1:uart|baud_cont[8]~28\) # (GND)))
-- \Receptor|t:1:uart|baud_cont[9]~30\ = CARRY((!\Receptor|t:1:uart|baud_cont[8]~28\) # (!\Receptor|t:1:uart|baud_cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:1:uart|baud_cont\(9),
	datad => VCC,
	cin => \Receptor|t:1:uart|baud_cont[8]~28\,
	combout => \Receptor|t:1:uart|baud_cont[9]~29_combout\,
	cout => \Receptor|t:1:uart|baud_cont[9]~30\);

-- Location: FF_X26_Y20_N21
\Receptor|t:1:uart|baud_cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[9]~29_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(9));

-- Location: LCCOMB_X26_Y20_N22
\Receptor|t:1:uart|baud_cont[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|baud_cont[10]~31_combout\ = \Receptor|t:1:uart|baud_cont\(10) $ (!\Receptor|t:1:uart|baud_cont[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(10),
	cin => \Receptor|t:1:uart|baud_cont[9]~30\,
	combout => \Receptor|t:1:uart|baud_cont[10]~31_combout\);

-- Location: FF_X26_Y20_N23
\Receptor|t:1:uart|baud_cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|baud_cont[10]~31_combout\,
	sclr => \Receptor|t:1:uart|baud_cont[4]~34_combout\,
	ena => \Receptor|t:1:uart|baud_cont[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|baud_cont\(10));

-- Location: LCCOMB_X29_Y20_N12
\Receptor|t:1:uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|LessThan0~0_combout\ = ((!\Receptor|t:1:uart|baud_cont\(3) & ((!\Receptor|t:1:uart|baud_cont\(1)) # (!\Receptor|t:1:uart|baud_cont\(2))))) # (!\Receptor|t:1:uart|baud_cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(2),
	datab => \Receptor|t:1:uart|baud_cont\(1),
	datac => \Receptor|t:1:uart|baud_cont\(3),
	datad => \Receptor|t:1:uart|baud_cont\(4),
	combout => \Receptor|t:1:uart|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\Receptor|t:1:uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|LessThan0~1_combout\ = (\Receptor|t:1:uart|baud_cont\(6)) # ((\Receptor|t:1:uart|baud_cont\(7)) # ((\Receptor|t:1:uart|baud_cont\(5)) # (!\Receptor|t:1:uart|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(6),
	datab => \Receptor|t:1:uart|baud_cont\(7),
	datac => \Receptor|t:1:uart|baud_cont\(5),
	datad => \Receptor|t:1:uart|LessThan0~0_combout\,
	combout => \Receptor|t:1:uart|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y20_N26
\Receptor|t:1:uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|LessThan0~2_combout\ = (\Receptor|t:1:uart|baud_cont\(10) & ((\Receptor|t:1:uart|baud_cont\(9)) # ((\Receptor|t:1:uart|baud_cont\(8) & \Receptor|t:1:uart|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|baud_cont\(10),
	datab => \Receptor|t:1:uart|baud_cont\(8),
	datac => \Receptor|t:1:uart|baud_cont\(9),
	datad => \Receptor|t:1:uart|LessThan0~1_combout\,
	combout => \Receptor|t:1:uart|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y20_N18
\Receptor|t:1:uart|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|state~7_combout\ = (\Receptor|t:1:uart|LessThan0~2_combout\ & \Receptor|t:1:uart|state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:1:uart|LessThan0~2_combout\,
	datad => \Receptor|t:1:uart|state.stop~q\,
	combout => \Receptor|t:1:uart|state~7_combout\);

-- Location: FF_X29_Y20_N19
\Receptor|t:1:uart|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|state.espera~q\);

-- Location: LCCOMB_X25_Y20_N6
\Receptor|t:1:uart|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector14~0_combout\ = (!\Receptor|t:1:uart|state.espera~q\ & (((\Receptor|t:1:uart|state.idle~q\ & !\Receptor|t:1:uart|Selector16~0_combout\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:1:uart|state.espera~q\,
	datac => \Receptor|t:1:uart|state.idle~q\,
	datad => \Receptor|t:1:uart|Selector16~0_combout\,
	combout => \Receptor|t:1:uart|Selector14~0_combout\);

-- Location: FF_X25_Y20_N7
\Receptor|t:1:uart|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|state.idle~q\);

-- Location: LCCOMB_X25_Y20_N20
\Receptor|t:1:uart|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector12~0_combout\ = (\Receptor|t:1:uart|state.data_bit~q\ & (\Receptor|t:1:uart|bit_cont\(1) $ (((\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|LessThan0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(0),
	datab => \Receptor|t:1:uart|state.data_bit~q\,
	datac => \Receptor|t:1:uart|LessThan0~2_combout\,
	datad => \Receptor|t:1:uart|bit_cont\(1),
	combout => \Receptor|t:1:uart|Selector12~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Receptor|t:1:uart|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Selector12~1_combout\ = (\Receptor|t:1:uart|Selector12~0_combout\) # ((\Receptor|t:1:uart|state.idle~q\ & (!\Receptor|t:1:uart|state.data_bit~q\ & \Receptor|t:1:uart|bit_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|state.idle~q\,
	datab => \Receptor|t:1:uart|state.data_bit~q\,
	datac => \Receptor|t:1:uart|bit_cont\(1),
	datad => \Receptor|t:1:uart|Selector12~0_combout\,
	combout => \Receptor|t:1:uart|Selector12~1_combout\);

-- Location: FF_X25_Y20_N5
\Receptor|t:1:uart|bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|bit_cont\(1));

-- Location: LCCOMB_X28_Y20_N28
\Receptor|t:1:uart|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~1_combout\ = (!\Receptor|t:1:uart|bit_cont\(1) & (!\Receptor|t:1:uart|bit_cont\(2) & (!\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y20_N16
\Receptor|t:1:uart|rx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[0]~0_combout\ = (\Receptor|t:1:uart|Decoder0~1_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~1_combout\ & ((\Receptor|t:1:uart|rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(0),
	datad => \Receptor|t:1:uart|Decoder0~1_combout\,
	combout => \Receptor|t:1:uart|rx[0]~0_combout\);

-- Location: FF_X28_Y20_N17
\Receptor|t:1:uart|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(0));

-- Location: LCCOMB_X24_Y19_N2
\Receptor|t:3:uart|baud_cont[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[0]~14_combout\ = \Receptor|t:3:uart|baud_cont\(0) $ (VCC)
-- \Receptor|t:3:uart|baud_cont[0]~15\ = CARRY(\Receptor|t:3:uart|baud_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(0),
	datad => VCC,
	combout => \Receptor|t:3:uart|baud_cont[0]~14_combout\,
	cout => \Receptor|t:3:uart|baud_cont[0]~15\);

-- Location: LCCOMB_X24_Y19_N10
\Receptor|t:3:uart|baud_cont[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[4]~22_combout\ = (\Receptor|t:3:uart|baud_cont\(4) & (\Receptor|t:3:uart|baud_cont[3]~21\ $ (GND))) # (!\Receptor|t:3:uart|baud_cont\(4) & (!\Receptor|t:3:uart|baud_cont[3]~21\ & VCC))
-- \Receptor|t:3:uart|baud_cont[4]~23\ = CARRY((\Receptor|t:3:uart|baud_cont\(4) & !\Receptor|t:3:uart|baud_cont[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(4),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[3]~21\,
	combout => \Receptor|t:3:uart|baud_cont[4]~22_combout\,
	cout => \Receptor|t:3:uart|baud_cont[4]~23\);

-- Location: LCCOMB_X24_Y19_N12
\Receptor|t:3:uart|baud_cont[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[5]~24_combout\ = (\Receptor|t:3:uart|baud_cont\(5) & (!\Receptor|t:3:uart|baud_cont[4]~23\)) # (!\Receptor|t:3:uart|baud_cont\(5) & ((\Receptor|t:3:uart|baud_cont[4]~23\) # (GND)))
-- \Receptor|t:3:uart|baud_cont[5]~25\ = CARRY((!\Receptor|t:3:uart|baud_cont[4]~23\) # (!\Receptor|t:3:uart|baud_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(5),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[4]~23\,
	combout => \Receptor|t:3:uart|baud_cont[5]~24_combout\,
	cout => \Receptor|t:3:uart|baud_cont[5]~25\);

-- Location: LCCOMB_X25_Y19_N8
\Receptor|t:3:uart|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|state~7_combout\ = (\Receptor|t:3:uart|state.stop~q\ & \Receptor|t:3:uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:3:uart|state.stop~q\,
	datad => \Receptor|t:3:uart|LessThan0~2_combout\,
	combout => \Receptor|t:3:uart|state~7_combout\);

-- Location: FF_X25_Y19_N9
\Receptor|t:3:uart|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|state.espera~q\);

-- Location: LCCOMB_X25_Y19_N18
\Receptor|t:3:uart|baud_cont[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[9]~44_combout\ = (!\Receptor|t:3:uart|state.espera~q\ & (((!\Receptor|t:3:uart|Equal0~4_combout\) # (!\Receptor|t:3:uart|state.start~q\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:3:uart|state.start~q\,
	datac => \Receptor|t:3:uart|state.espera~q\,
	datad => \Receptor|t:3:uart|Equal0~4_combout\,
	combout => \Receptor|t:3:uart|baud_cont[9]~44_combout\);

-- Location: FF_X24_Y19_N13
\Receptor|t:3:uart|baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[5]~24_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(5));

-- Location: LCCOMB_X24_Y19_N14
\Receptor|t:3:uart|baud_cont[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[6]~26_combout\ = (\Receptor|t:3:uart|baud_cont\(6) & (\Receptor|t:3:uart|baud_cont[5]~25\ $ (GND))) # (!\Receptor|t:3:uart|baud_cont\(6) & (!\Receptor|t:3:uart|baud_cont[5]~25\ & VCC))
-- \Receptor|t:3:uart|baud_cont[6]~27\ = CARRY((\Receptor|t:3:uart|baud_cont\(6) & !\Receptor|t:3:uart|baud_cont[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(6),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[5]~25\,
	combout => \Receptor|t:3:uart|baud_cont[6]~26_combout\,
	cout => \Receptor|t:3:uart|baud_cont[6]~27\);

-- Location: FF_X24_Y19_N15
\Receptor|t:3:uart|baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[6]~26_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(6));

-- Location: LCCOMB_X24_Y19_N16
\Receptor|t:3:uart|baud_cont[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[7]~28_combout\ = (\Receptor|t:3:uart|baud_cont\(7) & (!\Receptor|t:3:uart|baud_cont[6]~27\)) # (!\Receptor|t:3:uart|baud_cont\(7) & ((\Receptor|t:3:uart|baud_cont[6]~27\) # (GND)))
-- \Receptor|t:3:uart|baud_cont[7]~29\ = CARRY((!\Receptor|t:3:uart|baud_cont[6]~27\) # (!\Receptor|t:3:uart|baud_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(7),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[6]~27\,
	combout => \Receptor|t:3:uart|baud_cont[7]~28_combout\,
	cout => \Receptor|t:3:uart|baud_cont[7]~29\);

-- Location: FF_X24_Y19_N17
\Receptor|t:3:uart|baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[7]~28_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(7));

-- Location: LCCOMB_X24_Y19_N18
\Receptor|t:3:uart|baud_cont[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[8]~30_combout\ = (\Receptor|t:3:uart|baud_cont\(8) & (\Receptor|t:3:uart|baud_cont[7]~29\ $ (GND))) # (!\Receptor|t:3:uart|baud_cont\(8) & (!\Receptor|t:3:uart|baud_cont[7]~29\ & VCC))
-- \Receptor|t:3:uart|baud_cont[8]~31\ = CARRY((\Receptor|t:3:uart|baud_cont\(8) & !\Receptor|t:3:uart|baud_cont[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(8),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[7]~29\,
	combout => \Receptor|t:3:uart|baud_cont[8]~30_combout\,
	cout => \Receptor|t:3:uart|baud_cont[8]~31\);

-- Location: FF_X24_Y19_N19
\Receptor|t:3:uart|baud_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[8]~30_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(8));

-- Location: LCCOMB_X24_Y19_N20
\Receptor|t:3:uart|baud_cont[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[9]~32_combout\ = (\Receptor|t:3:uart|baud_cont\(9) & (!\Receptor|t:3:uart|baud_cont[8]~31\)) # (!\Receptor|t:3:uart|baud_cont\(9) & ((\Receptor|t:3:uart|baud_cont[8]~31\) # (GND)))
-- \Receptor|t:3:uart|baud_cont[9]~33\ = CARRY((!\Receptor|t:3:uart|baud_cont[8]~31\) # (!\Receptor|t:3:uart|baud_cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(9),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[8]~31\,
	combout => \Receptor|t:3:uart|baud_cont[9]~32_combout\,
	cout => \Receptor|t:3:uart|baud_cont[9]~33\);

-- Location: FF_X24_Y19_N21
\Receptor|t:3:uart|baud_cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[9]~32_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(9));

-- Location: LCCOMB_X24_Y19_N22
\Receptor|t:3:uart|baud_cont[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[10]~34_combout\ = (\Receptor|t:3:uart|baud_cont\(10) & (\Receptor|t:3:uart|baud_cont[9]~33\ $ (GND))) # (!\Receptor|t:3:uart|baud_cont\(10) & (!\Receptor|t:3:uart|baud_cont[9]~33\ & VCC))
-- \Receptor|t:3:uart|baud_cont[10]~35\ = CARRY((\Receptor|t:3:uart|baud_cont\(10) & !\Receptor|t:3:uart|baud_cont[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(10),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[9]~33\,
	combout => \Receptor|t:3:uart|baud_cont[10]~34_combout\,
	cout => \Receptor|t:3:uart|baud_cont[10]~35\);

-- Location: FF_X24_Y19_N23
\Receptor|t:3:uart|baud_cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[10]~34_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(10));

-- Location: LCCOMB_X24_Y19_N24
\Receptor|t:3:uart|baud_cont[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[11]~36_combout\ = (\Receptor|t:3:uart|baud_cont\(11) & (!\Receptor|t:3:uart|baud_cont[10]~35\)) # (!\Receptor|t:3:uart|baud_cont\(11) & ((\Receptor|t:3:uart|baud_cont[10]~35\) # (GND)))
-- \Receptor|t:3:uart|baud_cont[11]~37\ = CARRY((!\Receptor|t:3:uart|baud_cont[10]~35\) # (!\Receptor|t:3:uart|baud_cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(11),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[10]~35\,
	combout => \Receptor|t:3:uart|baud_cont[11]~36_combout\,
	cout => \Receptor|t:3:uart|baud_cont[11]~37\);

-- Location: FF_X24_Y19_N25
\Receptor|t:3:uart|baud_cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[11]~36_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(11));

-- Location: LCCOMB_X24_Y19_N26
\Receptor|t:3:uart|baud_cont[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[12]~38_combout\ = (\Receptor|t:3:uart|baud_cont\(12) & (\Receptor|t:3:uart|baud_cont[11]~37\ $ (GND))) # (!\Receptor|t:3:uart|baud_cont\(12) & (!\Receptor|t:3:uart|baud_cont[11]~37\ & VCC))
-- \Receptor|t:3:uart|baud_cont[12]~39\ = CARRY((\Receptor|t:3:uart|baud_cont\(12) & !\Receptor|t:3:uart|baud_cont[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(12),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[11]~37\,
	combout => \Receptor|t:3:uart|baud_cont[12]~38_combout\,
	cout => \Receptor|t:3:uart|baud_cont[12]~39\);

-- Location: FF_X24_Y19_N27
\Receptor|t:3:uart|baud_cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[12]~38_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(12));

-- Location: LCCOMB_X24_Y19_N28
\Receptor|t:3:uart|baud_cont[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[13]~40_combout\ = \Receptor|t:3:uart|baud_cont[12]~39\ $ (\Receptor|t:3:uart|baud_cont\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Receptor|t:3:uart|baud_cont\(13),
	cin => \Receptor|t:3:uart|baud_cont[12]~39\,
	combout => \Receptor|t:3:uart|baud_cont[13]~40_combout\);

-- Location: FF_X24_Y19_N29
\Receptor|t:3:uart|baud_cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[13]~40_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(13));

-- Location: LCCOMB_X23_Y19_N18
\Receptor|t:3:uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|LessThan0~0_combout\ = ((!\Receptor|t:3:uart|baud_cont\(6) & ((!\Receptor|t:3:uart|baud_cont\(5)) # (!\Receptor|t:3:uart|baud_cont\(4))))) # (!\Receptor|t:3:uart|baud_cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(6),
	datab => \Receptor|t:3:uart|baud_cont\(4),
	datac => \Receptor|t:3:uart|baud_cont\(5),
	datad => \Receptor|t:3:uart|baud_cont\(7),
	combout => \Receptor|t:3:uart|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\Receptor|t:3:uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|LessThan0~1_combout\ = (\Receptor|t:3:uart|baud_cont\(9)) # ((\Receptor|t:3:uart|baud_cont\(10)) # ((\Receptor|t:3:uart|baud_cont\(8)) # (!\Receptor|t:3:uart|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(9),
	datab => \Receptor|t:3:uart|baud_cont\(10),
	datac => \Receptor|t:3:uart|baud_cont\(8),
	datad => \Receptor|t:3:uart|LessThan0~0_combout\,
	combout => \Receptor|t:3:uart|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Receptor|t:3:uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|LessThan0~2_combout\ = (\Receptor|t:3:uart|baud_cont\(13) & ((\Receptor|t:3:uart|baud_cont\(12)) # ((\Receptor|t:3:uart|baud_cont\(11) & \Receptor|t:3:uart|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(12),
	datab => \Receptor|t:3:uart|baud_cont\(13),
	datac => \Receptor|t:3:uart|baud_cont\(11),
	datad => \Receptor|t:3:uart|LessThan0~1_combout\,
	combout => \Receptor|t:3:uart|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Receptor|t:3:uart|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector14~0_combout\ = (\Receptor|t:3:uart|state.data_bit~q\ & (((!\Receptor|t:3:uart|LessThan0~2_combout\)) # (!\Receptor|t:3:uart|bit_cont\(0)))) # (!\Receptor|t:3:uart|state.data_bit~q\ & (((\Receptor|t:3:uart|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|state.data_bit~q\,
	datac => \Receptor|t:3:uart|state.idle~q\,
	datad => \Receptor|t:3:uart|LessThan0~2_combout\,
	combout => \Receptor|t:3:uart|Selector14~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\Receptor|t:3:uart|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector15~0_combout\ = (\Receptor|t:3:uart|state.data_bit~q\ & (\Receptor|t:3:uart|bit_cont\(1) $ (((\Receptor|t:3:uart|bit_cont\(0) & \Receptor|t:3:uart|LessThan0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|LessThan0~2_combout\,
	datad => \Receptor|t:3:uart|state.data_bit~q\,
	combout => \Receptor|t:3:uart|Selector15~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Receptor|t:3:uart|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector15~1_combout\ = (\Receptor|t:3:uart|Selector15~0_combout\) # ((\Receptor|t:3:uart|state.idle~q\ & (!\Receptor|t:3:uart|state.data_bit~q\ & \Receptor|t:3:uart|bit_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|state.idle~q\,
	datab => \Receptor|t:3:uart|state.data_bit~q\,
	datac => \Receptor|t:3:uart|bit_cont\(1),
	datad => \Receptor|t:3:uart|Selector15~0_combout\,
	combout => \Receptor|t:3:uart|Selector15~1_combout\);

-- Location: FF_X23_Y19_N15
\Receptor|t:3:uart|bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|bit_cont\(1));

-- Location: LCCOMB_X23_Y19_N8
\Receptor|t:3:uart|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector14~1_combout\ = (\Receptor|t:3:uart|bit_cont\(0) & (\Receptor|t:3:uart|bit_cont\(1) $ (\Receptor|t:3:uart|bit_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|bit_cont\(0),
	combout => \Receptor|t:3:uart|Selector14~1_combout\);

-- Location: LCCOMB_X23_Y19_N16
\Receptor|t:3:uart|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~0_combout\ = (\Receptor|t:3:uart|state.data_bit~q\ & \Receptor|t:3:uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|state.data_bit~q\,
	datad => \Receptor|t:3:uart|LessThan0~2_combout\,
	combout => \Receptor|t:3:uart|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Receptor|t:3:uart|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector14~2_combout\ = (\Receptor|t:3:uart|Selector14~0_combout\ & ((\Receptor|t:3:uart|bit_cont\(2)) # ((\Receptor|t:3:uart|Selector14~1_combout\ & \Receptor|t:3:uart|Decoder0~0_combout\)))) # 
-- (!\Receptor|t:3:uart|Selector14~0_combout\ & (\Receptor|t:3:uart|Selector14~1_combout\ & ((\Receptor|t:3:uart|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|Selector14~0_combout\,
	datab => \Receptor|t:3:uart|Selector14~1_combout\,
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Selector14~2_combout\);

-- Location: FF_X23_Y19_N5
\Receptor|t:3:uart|bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|bit_cont\(2));

-- Location: LCCOMB_X23_Y19_N22
\Receptor|t:3:uart|state.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|state.stop~0_combout\ = (\Receptor|t:3:uart|bit_cont\(2) & (\Receptor|t:3:uart|bit_cont\(1) & \Receptor|t:3:uart|bit_cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|bit_cont\(2),
	datac => \Receptor|t:3:uart|bit_cont\(1),
	datad => \Receptor|t:3:uart|bit_cont\(0),
	combout => \Receptor|t:3:uart|state.stop~0_combout\);

-- Location: LCCOMB_X25_Y19_N4
\Receptor|t:3:uart|state.stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|state.stop~1_combout\ = (\Receptor|t:3:uart|LessThan0~2_combout\ & (\Receptor|t:3:uart|state.stop~0_combout\ & (\Receptor|t:3:uart|state.data_bit~q\))) # (!\Receptor|t:3:uart|LessThan0~2_combout\ & 
-- (((\Receptor|t:3:uart|state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|state.stop~0_combout\,
	datab => \Receptor|t:3:uart|state.data_bit~q\,
	datac => \Receptor|t:3:uart|state.stop~q\,
	datad => \Receptor|t:3:uart|LessThan0~2_combout\,
	combout => \Receptor|t:3:uart|state.stop~1_combout\);

-- Location: FF_X25_Y19_N5
\Receptor|t:3:uart|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|state.stop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|state.stop~q\);

-- Location: LCCOMB_X25_Y19_N6
\Receptor|t:3:uart|baud_cont[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[9]~42_combout\ = (\Receptor|t:3:uart|state.stop~q\) # (\Receptor|t:3:uart|state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:3:uart|state.stop~q\,
	datad => \Receptor|t:3:uart|state.data_bit~q\,
	combout => \Receptor|t:3:uart|baud_cont[9]~42_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Receptor|t:3:uart|baud_cont[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[9]~43_combout\ = ((\Receptor|t:3:uart|Selector19~2_combout\) # ((\Receptor|t:3:uart|baud_cont[9]~42_combout\ & \Receptor|t:3:uart|LessThan0~2_combout\))) # (!\Receptor|t:3:uart|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont[9]~42_combout\,
	datab => \Receptor|t:3:uart|state.idle~q\,
	datac => \Receptor|t:3:uart|LessThan0~2_combout\,
	datad => \Receptor|t:3:uart|Selector19~2_combout\,
	combout => \Receptor|t:3:uart|baud_cont[9]~43_combout\);

-- Location: FF_X24_Y19_N3
\Receptor|t:3:uart|baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[0]~14_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(0));

-- Location: LCCOMB_X24_Y19_N4
\Receptor|t:3:uart|baud_cont[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[1]~16_combout\ = (\Receptor|t:3:uart|baud_cont\(1) & (!\Receptor|t:3:uart|baud_cont[0]~15\)) # (!\Receptor|t:3:uart|baud_cont\(1) & ((\Receptor|t:3:uart|baud_cont[0]~15\) # (GND)))
-- \Receptor|t:3:uart|baud_cont[1]~17\ = CARRY((!\Receptor|t:3:uart|baud_cont[0]~15\) # (!\Receptor|t:3:uart|baud_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(1),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[0]~15\,
	combout => \Receptor|t:3:uart|baud_cont[1]~16_combout\,
	cout => \Receptor|t:3:uart|baud_cont[1]~17\);

-- Location: FF_X24_Y19_N5
\Receptor|t:3:uart|baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[1]~16_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(1));

-- Location: LCCOMB_X24_Y19_N6
\Receptor|t:3:uart|baud_cont[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[2]~18_combout\ = (\Receptor|t:3:uart|baud_cont\(2) & (\Receptor|t:3:uart|baud_cont[1]~17\ $ (GND))) # (!\Receptor|t:3:uart|baud_cont\(2) & (!\Receptor|t:3:uart|baud_cont[1]~17\ & VCC))
-- \Receptor|t:3:uart|baud_cont[2]~19\ = CARRY((\Receptor|t:3:uart|baud_cont\(2) & !\Receptor|t:3:uart|baud_cont[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(2),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[1]~17\,
	combout => \Receptor|t:3:uart|baud_cont[2]~18_combout\,
	cout => \Receptor|t:3:uart|baud_cont[2]~19\);

-- Location: FF_X24_Y19_N7
\Receptor|t:3:uart|baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[2]~18_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(2));

-- Location: LCCOMB_X24_Y19_N8
\Receptor|t:3:uart|baud_cont[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|baud_cont[3]~20_combout\ = (\Receptor|t:3:uart|baud_cont\(3) & (!\Receptor|t:3:uart|baud_cont[2]~19\)) # (!\Receptor|t:3:uart|baud_cont\(3) & ((\Receptor|t:3:uart|baud_cont[2]~19\) # (GND)))
-- \Receptor|t:3:uart|baud_cont[3]~21\ = CARRY((!\Receptor|t:3:uart|baud_cont[2]~19\) # (!\Receptor|t:3:uart|baud_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|baud_cont\(3),
	datad => VCC,
	cin => \Receptor|t:3:uart|baud_cont[2]~19\,
	combout => \Receptor|t:3:uart|baud_cont[3]~20_combout\,
	cout => \Receptor|t:3:uart|baud_cont[3]~21\);

-- Location: FF_X24_Y19_N9
\Receptor|t:3:uart|baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[3]~20_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(3));

-- Location: FF_X24_Y19_N11
\Receptor|t:3:uart|baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|baud_cont[4]~22_combout\,
	sclr => \Receptor|t:3:uart|baud_cont[9]~43_combout\,
	ena => \Receptor|t:3:uart|baud_cont[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|baud_cont\(4));

-- Location: LCCOMB_X25_Y19_N10
\Receptor|t:3:uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Equal0~0_combout\ = (\Receptor|t:3:uart|baud_cont\(4) & (!\Receptor|t:3:uart|baud_cont\(8) & (!\Receptor|t:3:uart|baud_cont\(9) & !\Receptor|t:3:uart|baud_cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(4),
	datab => \Receptor|t:3:uart|baud_cont\(8),
	datac => \Receptor|t:3:uart|baud_cont\(9),
	datad => \Receptor|t:3:uart|baud_cont\(5),
	combout => \Receptor|t:3:uart|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\Receptor|t:3:uart|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Equal0~3_combout\ = (!\Receptor|t:3:uart|baud_cont\(2) & \Receptor|t:3:uart|baud_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:3:uart|baud_cont\(2),
	datad => \Receptor|t:3:uart|baud_cont\(3),
	combout => \Receptor|t:3:uart|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Receptor|t:3:uart|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Equal0~2_combout\ = (\Receptor|t:3:uart|baud_cont\(12) & (!\Receptor|t:3:uart|baud_cont\(13) & (!\Receptor|t:3:uart|baud_cont\(1) & !\Receptor|t:3:uart|baud_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(12),
	datab => \Receptor|t:3:uart|baud_cont\(13),
	datac => \Receptor|t:3:uart|baud_cont\(1),
	datad => \Receptor|t:3:uart|baud_cont\(0),
	combout => \Receptor|t:3:uart|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y19_N12
\Receptor|t:3:uart|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Equal0~1_combout\ = (\Receptor|t:3:uart|baud_cont\(6) & (\Receptor|t:3:uart|baud_cont\(10) & (!\Receptor|t:3:uart|baud_cont\(7) & !\Receptor|t:3:uart|baud_cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|baud_cont\(6),
	datab => \Receptor|t:3:uart|baud_cont\(10),
	datac => \Receptor|t:3:uart|baud_cont\(7),
	datad => \Receptor|t:3:uart|baud_cont\(11),
	combout => \Receptor|t:3:uart|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y19_N20
\Receptor|t:3:uart|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Equal0~4_combout\ = (\Receptor|t:3:uart|Equal0~0_combout\ & (\Receptor|t:3:uart|Equal0~3_combout\ & (\Receptor|t:3:uart|Equal0~2_combout\ & \Receptor|t:3:uart|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|Equal0~0_combout\,
	datab => \Receptor|t:3:uart|Equal0~3_combout\,
	datac => \Receptor|t:3:uart|Equal0~2_combout\,
	datad => \Receptor|t:3:uart|Equal0~1_combout\,
	combout => \Receptor|t:3:uart|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y19_N22
\Receptor|t:3:uart|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector19~2_combout\ = (\Receptor|t:3:uart|state.start~q\ & \Receptor|t:3:uart|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|state.start~q\,
	datad => \Receptor|t:3:uart|Equal0~4_combout\,
	combout => \Receptor|t:3:uart|Selector19~2_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Receptor|t:3:uart|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector17~0_combout\ = (!\Receptor|t:3:uart|state.espera~q\ & (((!\Receptor|t:3:uart|Selector19~2_combout\ & \Receptor|t:3:uart|state.idle~q\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|Selector19~2_combout\,
	datab => \Receptor|t:3:uart|state.espera~q\,
	datac => \Receptor|t:3:uart|state.idle~q\,
	datad => \rx_serial~input_o\,
	combout => \Receptor|t:3:uart|Selector17~0_combout\);

-- Location: FF_X25_Y19_N31
\Receptor|t:3:uart|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|state.idle~q\);

-- Location: LCCOMB_X25_Y19_N28
\Receptor|t:3:uart|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector18~0_combout\ = (\Receptor|t:3:uart|state.idle~q\ & (!\Receptor|t:3:uart|Equal0~4_combout\ & (\Receptor|t:3:uart|state.start~q\))) # (!\Receptor|t:3:uart|state.idle~q\ & (((!\Receptor|t:3:uart|Equal0~4_combout\ & 
-- \Receptor|t:3:uart|state.start~q\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|state.idle~q\,
	datab => \Receptor|t:3:uart|Equal0~4_combout\,
	datac => \Receptor|t:3:uart|state.start~q\,
	datad => \rx_serial~input_o\,
	combout => \Receptor|t:3:uart|Selector18~0_combout\);

-- Location: FF_X25_Y19_N29
\Receptor|t:3:uart|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|state.start~q\);

-- Location: LCCOMB_X25_Y19_N16
\Receptor|t:3:uart|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector19~3_combout\ = (\Receptor|t:3:uart|state.data_bit~q\ & ((!\Receptor|t:3:uart|LessThan0~2_combout\) # (!\Receptor|t:3:uart|state.stop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:3:uart|state.data_bit~q\,
	datac => \Receptor|t:3:uart|state.stop~0_combout\,
	datad => \Receptor|t:3:uart|LessThan0~2_combout\,
	combout => \Receptor|t:3:uart|Selector19~3_combout\);

-- Location: LCCOMB_X25_Y19_N24
\Receptor|t:3:uart|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector19~4_combout\ = (\Receptor|t:3:uart|Selector19~3_combout\) # ((!\rx_serial~input_o\ & (\Receptor|t:3:uart|state.start~q\ & \Receptor|t:3:uart|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:3:uart|state.start~q\,
	datac => \Receptor|t:3:uart|Equal0~4_combout\,
	datad => \Receptor|t:3:uart|Selector19~3_combout\,
	combout => \Receptor|t:3:uart|Selector19~4_combout\);

-- Location: FF_X25_Y19_N25
\Receptor|t:3:uart|state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|Selector19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|state.data_bit~q\);

-- Location: LCCOMB_X22_Y19_N14
\Receptor|t:3:uart|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Selector16~0_combout\ = (\Receptor|t:3:uart|state.data_bit~q\ & ((\Receptor|t:3:uart|bit_cont\(0) $ (\Receptor|t:3:uart|LessThan0~2_combout\)))) # (!\Receptor|t:3:uart|state.data_bit~q\ & (\Receptor|t:3:uart|state.idle~q\ & 
-- (\Receptor|t:3:uart|bit_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|state.data_bit~q\,
	datab => \Receptor|t:3:uart|state.idle~q\,
	datac => \Receptor|t:3:uart|bit_cont\(0),
	datad => \Receptor|t:3:uart|LessThan0~2_combout\,
	combout => \Receptor|t:3:uart|Selector16~0_combout\);

-- Location: FF_X22_Y19_N15
\Receptor|t:3:uart|bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|bit_cont\(0));

-- Location: LCCOMB_X23_Y22_N2
\Receptor|t:3:uart|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~1_combout\ = (!\Receptor|t:3:uart|bit_cont\(0) & (!\Receptor|t:3:uart|bit_cont\(1) & (!\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y22_N16
\Receptor|t:3:uart|rx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[0]~0_combout\ = (\Receptor|t:3:uart|Decoder0~1_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~1_combout\ & ((\Receptor|t:3:uart|rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(0),
	datad => \Receptor|t:3:uart|Decoder0~1_combout\,
	combout => \Receptor|t:3:uart|rx[0]~0_combout\);

-- Location: FF_X23_Y22_N17
\Receptor|t:3:uart|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(0));

-- Location: LCCOMB_X31_Y22_N4
\Receptor|t:2:uart|baud_cont[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[0]~13_combout\ = \Receptor|t:2:uart|baud_cont\(0) $ (VCC)
-- \Receptor|t:2:uart|baud_cont[0]~14\ = CARRY(\Receptor|t:2:uart|baud_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(0),
	datad => VCC,
	combout => \Receptor|t:2:uart|baud_cont[0]~13_combout\,
	cout => \Receptor|t:2:uart|baud_cont[0]~14\);

-- Location: LCCOMB_X32_Y22_N26
\Receptor|t:2:uart|baud_cont[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[2]~39_combout\ = (\Receptor|t:2:uart|state.stop~q\) # (\Receptor|t:2:uart|state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:2:uart|state.stop~q\,
	datad => \Receptor|t:2:uart|state.data_bit~q\,
	combout => \Receptor|t:2:uart|baud_cont[2]~39_combout\);

-- Location: LCCOMB_X32_Y22_N8
\Receptor|t:2:uart|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Equal0~1_combout\ = (\Receptor|t:2:uart|baud_cont\(5) & (\Receptor|t:2:uart|baud_cont\(9) & (!\Receptor|t:2:uart|baud_cont\(6) & !\Receptor|t:2:uart|baud_cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(5),
	datab => \Receptor|t:2:uart|baud_cont\(9),
	datac => \Receptor|t:2:uart|baud_cont\(6),
	datad => \Receptor|t:2:uart|baud_cont\(10),
	combout => \Receptor|t:2:uart|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y22_N30
\Receptor|t:2:uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Equal0~0_combout\ = (!\Receptor|t:2:uart|baud_cont\(4) & (!\Receptor|t:2:uart|baud_cont\(7) & (\Receptor|t:2:uart|baud_cont\(3) & !\Receptor|t:2:uart|baud_cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(4),
	datab => \Receptor|t:2:uart|baud_cont\(7),
	datac => \Receptor|t:2:uart|baud_cont\(3),
	datad => \Receptor|t:2:uart|baud_cont\(8),
	combout => \Receptor|t:2:uart|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y22_N26
\Receptor|t:2:uart|baud_cont[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[11]~35_combout\ = (\Receptor|t:2:uart|baud_cont\(11) & (!\Receptor|t:2:uart|baud_cont[10]~34\)) # (!\Receptor|t:2:uart|baud_cont\(11) & ((\Receptor|t:2:uart|baud_cont[10]~34\) # (GND)))
-- \Receptor|t:2:uart|baud_cont[11]~36\ = CARRY((!\Receptor|t:2:uart|baud_cont[10]~34\) # (!\Receptor|t:2:uart|baud_cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(11),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[10]~34\,
	combout => \Receptor|t:2:uart|baud_cont[11]~35_combout\,
	cout => \Receptor|t:2:uart|baud_cont[11]~36\);

-- Location: LCCOMB_X31_Y22_N28
\Receptor|t:2:uart|baud_cont[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[12]~37_combout\ = \Receptor|t:2:uart|baud_cont[11]~36\ $ (!\Receptor|t:2:uart|baud_cont\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Receptor|t:2:uart|baud_cont\(12),
	cin => \Receptor|t:2:uart|baud_cont[11]~36\,
	combout => \Receptor|t:2:uart|baud_cont[12]~37_combout\);

-- Location: LCCOMB_X32_Y22_N0
\Receptor|t:2:uart|baud_cont[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[2]~41_combout\ = (!\Receptor|t:2:uart|state.espera~q\ & (((!\Receptor|t:2:uart|Equal0~3_combout\) # (!\Receptor|t:2:uart|state.start~q\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:2:uart|state.start~q\,
	datac => \Receptor|t:2:uart|state.espera~q\,
	datad => \Receptor|t:2:uart|Equal0~3_combout\,
	combout => \Receptor|t:2:uart|baud_cont[2]~41_combout\);

-- Location: FF_X31_Y22_N29
\Receptor|t:2:uart|baud_cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[12]~37_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(12));

-- Location: LCCOMB_X32_Y22_N2
\Receptor|t:2:uart|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Equal0~2_combout\ = (\Receptor|t:2:uart|baud_cont\(11) & (!\Receptor|t:2:uart|baud_cont\(1) & (!\Receptor|t:2:uart|baud_cont\(0) & !\Receptor|t:2:uart|baud_cont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(11),
	datab => \Receptor|t:2:uart|baud_cont\(1),
	datac => \Receptor|t:2:uart|baud_cont\(0),
	datad => \Receptor|t:2:uart|baud_cont\(12),
	combout => \Receptor|t:2:uart|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y22_N12
\Receptor|t:2:uart|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Equal0~3_combout\ = (\Receptor|t:2:uart|baud_cont\(2) & (\Receptor|t:2:uart|Equal0~1_combout\ & (\Receptor|t:2:uart|Equal0~0_combout\ & \Receptor|t:2:uart|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(2),
	datab => \Receptor|t:2:uart|Equal0~1_combout\,
	datac => \Receptor|t:2:uart|Equal0~0_combout\,
	datad => \Receptor|t:2:uart|Equal0~2_combout\,
	combout => \Receptor|t:2:uart|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y22_N18
\Receptor|t:2:uart|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector18~0_combout\ = (\Receptor|t:2:uart|state.start~q\ & \Receptor|t:2:uart|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|state.start~q\,
	datad => \Receptor|t:2:uart|Equal0~3_combout\,
	combout => \Receptor|t:2:uart|Selector18~0_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Receptor|t:2:uart|baud_cont[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[2]~40_combout\ = ((\Receptor|t:2:uart|Selector18~0_combout\) # ((\Receptor|t:2:uart|baud_cont[2]~39_combout\ & \Receptor|t:2:uart|LessThan0~2_combout\))) # (!\Receptor|t:2:uart|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont[2]~39_combout\,
	datab => \Receptor|t:2:uart|state.idle~q\,
	datac => \Receptor|t:2:uart|LessThan0~2_combout\,
	datad => \Receptor|t:2:uart|Selector18~0_combout\,
	combout => \Receptor|t:2:uart|baud_cont[2]~40_combout\);

-- Location: FF_X31_Y22_N5
\Receptor|t:2:uart|baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[0]~13_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(0));

-- Location: LCCOMB_X31_Y22_N6
\Receptor|t:2:uart|baud_cont[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[1]~15_combout\ = (\Receptor|t:2:uart|baud_cont\(1) & (!\Receptor|t:2:uart|baud_cont[0]~14\)) # (!\Receptor|t:2:uart|baud_cont\(1) & ((\Receptor|t:2:uart|baud_cont[0]~14\) # (GND)))
-- \Receptor|t:2:uart|baud_cont[1]~16\ = CARRY((!\Receptor|t:2:uart|baud_cont[0]~14\) # (!\Receptor|t:2:uart|baud_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(1),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[0]~14\,
	combout => \Receptor|t:2:uart|baud_cont[1]~15_combout\,
	cout => \Receptor|t:2:uart|baud_cont[1]~16\);

-- Location: FF_X31_Y22_N7
\Receptor|t:2:uart|baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[1]~15_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(1));

-- Location: LCCOMB_X31_Y22_N8
\Receptor|t:2:uart|baud_cont[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[2]~17_combout\ = (\Receptor|t:2:uart|baud_cont\(2) & (\Receptor|t:2:uart|baud_cont[1]~16\ $ (GND))) # (!\Receptor|t:2:uart|baud_cont\(2) & (!\Receptor|t:2:uart|baud_cont[1]~16\ & VCC))
-- \Receptor|t:2:uart|baud_cont[2]~18\ = CARRY((\Receptor|t:2:uart|baud_cont\(2) & !\Receptor|t:2:uart|baud_cont[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(2),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[1]~16\,
	combout => \Receptor|t:2:uart|baud_cont[2]~17_combout\,
	cout => \Receptor|t:2:uart|baud_cont[2]~18\);

-- Location: FF_X31_Y22_N9
\Receptor|t:2:uart|baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[2]~17_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(2));

-- Location: LCCOMB_X31_Y22_N10
\Receptor|t:2:uart|baud_cont[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[3]~19_combout\ = (\Receptor|t:2:uart|baud_cont\(3) & (!\Receptor|t:2:uart|baud_cont[2]~18\)) # (!\Receptor|t:2:uart|baud_cont\(3) & ((\Receptor|t:2:uart|baud_cont[2]~18\) # (GND)))
-- \Receptor|t:2:uart|baud_cont[3]~20\ = CARRY((!\Receptor|t:2:uart|baud_cont[2]~18\) # (!\Receptor|t:2:uart|baud_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(3),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[2]~18\,
	combout => \Receptor|t:2:uart|baud_cont[3]~19_combout\,
	cout => \Receptor|t:2:uart|baud_cont[3]~20\);

-- Location: FF_X31_Y22_N11
\Receptor|t:2:uart|baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[3]~19_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(3));

-- Location: LCCOMB_X31_Y22_N12
\Receptor|t:2:uart|baud_cont[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[4]~21_combout\ = (\Receptor|t:2:uart|baud_cont\(4) & (\Receptor|t:2:uart|baud_cont[3]~20\ $ (GND))) # (!\Receptor|t:2:uart|baud_cont\(4) & (!\Receptor|t:2:uart|baud_cont[3]~20\ & VCC))
-- \Receptor|t:2:uart|baud_cont[4]~22\ = CARRY((\Receptor|t:2:uart|baud_cont\(4) & !\Receptor|t:2:uart|baud_cont[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(4),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[3]~20\,
	combout => \Receptor|t:2:uart|baud_cont[4]~21_combout\,
	cout => \Receptor|t:2:uart|baud_cont[4]~22\);

-- Location: FF_X31_Y22_N13
\Receptor|t:2:uart|baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[4]~21_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(4));

-- Location: LCCOMB_X31_Y22_N14
\Receptor|t:2:uart|baud_cont[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[5]~23_combout\ = (\Receptor|t:2:uart|baud_cont\(5) & (!\Receptor|t:2:uart|baud_cont[4]~22\)) # (!\Receptor|t:2:uart|baud_cont\(5) & ((\Receptor|t:2:uart|baud_cont[4]~22\) # (GND)))
-- \Receptor|t:2:uart|baud_cont[5]~24\ = CARRY((!\Receptor|t:2:uart|baud_cont[4]~22\) # (!\Receptor|t:2:uart|baud_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(5),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[4]~22\,
	combout => \Receptor|t:2:uart|baud_cont[5]~23_combout\,
	cout => \Receptor|t:2:uart|baud_cont[5]~24\);

-- Location: FF_X31_Y22_N15
\Receptor|t:2:uart|baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[5]~23_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(5));

-- Location: LCCOMB_X31_Y22_N16
\Receptor|t:2:uart|baud_cont[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[6]~25_combout\ = (\Receptor|t:2:uart|baud_cont\(6) & (\Receptor|t:2:uart|baud_cont[5]~24\ $ (GND))) # (!\Receptor|t:2:uart|baud_cont\(6) & (!\Receptor|t:2:uart|baud_cont[5]~24\ & VCC))
-- \Receptor|t:2:uart|baud_cont[6]~26\ = CARRY((\Receptor|t:2:uart|baud_cont\(6) & !\Receptor|t:2:uart|baud_cont[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(6),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[5]~24\,
	combout => \Receptor|t:2:uart|baud_cont[6]~25_combout\,
	cout => \Receptor|t:2:uart|baud_cont[6]~26\);

-- Location: FF_X31_Y22_N17
\Receptor|t:2:uart|baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[6]~25_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(6));

-- Location: LCCOMB_X31_Y22_N18
\Receptor|t:2:uart|baud_cont[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[7]~27_combout\ = (\Receptor|t:2:uart|baud_cont\(7) & (!\Receptor|t:2:uart|baud_cont[6]~26\)) # (!\Receptor|t:2:uart|baud_cont\(7) & ((\Receptor|t:2:uart|baud_cont[6]~26\) # (GND)))
-- \Receptor|t:2:uart|baud_cont[7]~28\ = CARRY((!\Receptor|t:2:uart|baud_cont[6]~26\) # (!\Receptor|t:2:uart|baud_cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(7),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[6]~26\,
	combout => \Receptor|t:2:uart|baud_cont[7]~27_combout\,
	cout => \Receptor|t:2:uart|baud_cont[7]~28\);

-- Location: FF_X31_Y22_N19
\Receptor|t:2:uart|baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[7]~27_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(7));

-- Location: LCCOMB_X31_Y22_N20
\Receptor|t:2:uart|baud_cont[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[8]~29_combout\ = (\Receptor|t:2:uart|baud_cont\(8) & (\Receptor|t:2:uart|baud_cont[7]~28\ $ (GND))) # (!\Receptor|t:2:uart|baud_cont\(8) & (!\Receptor|t:2:uart|baud_cont[7]~28\ & VCC))
-- \Receptor|t:2:uart|baud_cont[8]~30\ = CARRY((\Receptor|t:2:uart|baud_cont\(8) & !\Receptor|t:2:uart|baud_cont[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(8),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[7]~28\,
	combout => \Receptor|t:2:uart|baud_cont[8]~29_combout\,
	cout => \Receptor|t:2:uart|baud_cont[8]~30\);

-- Location: FF_X31_Y22_N21
\Receptor|t:2:uart|baud_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[8]~29_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(8));

-- Location: LCCOMB_X31_Y22_N22
\Receptor|t:2:uart|baud_cont[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[9]~31_combout\ = (\Receptor|t:2:uart|baud_cont\(9) & (!\Receptor|t:2:uart|baud_cont[8]~30\)) # (!\Receptor|t:2:uart|baud_cont\(9) & ((\Receptor|t:2:uart|baud_cont[8]~30\) # (GND)))
-- \Receptor|t:2:uart|baud_cont[9]~32\ = CARRY((!\Receptor|t:2:uart|baud_cont[8]~30\) # (!\Receptor|t:2:uart|baud_cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(9),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[8]~30\,
	combout => \Receptor|t:2:uart|baud_cont[9]~31_combout\,
	cout => \Receptor|t:2:uart|baud_cont[9]~32\);

-- Location: FF_X31_Y22_N23
\Receptor|t:2:uart|baud_cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[9]~31_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(9));

-- Location: LCCOMB_X31_Y22_N24
\Receptor|t:2:uart|baud_cont[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|baud_cont[10]~33_combout\ = (\Receptor|t:2:uart|baud_cont\(10) & (\Receptor|t:2:uart|baud_cont[9]~32\ $ (GND))) # (!\Receptor|t:2:uart|baud_cont\(10) & (!\Receptor|t:2:uart|baud_cont[9]~32\ & VCC))
-- \Receptor|t:2:uart|baud_cont[10]~34\ = CARRY((\Receptor|t:2:uart|baud_cont\(10) & !\Receptor|t:2:uart|baud_cont[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|baud_cont\(10),
	datad => VCC,
	cin => \Receptor|t:2:uart|baud_cont[9]~32\,
	combout => \Receptor|t:2:uart|baud_cont[10]~33_combout\,
	cout => \Receptor|t:2:uart|baud_cont[10]~34\);

-- Location: FF_X31_Y22_N25
\Receptor|t:2:uart|baud_cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[10]~33_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(10));

-- Location: FF_X31_Y22_N27
\Receptor|t:2:uart|baud_cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|baud_cont[11]~35_combout\,
	sclr => \Receptor|t:2:uart|baud_cont[2]~40_combout\,
	ena => \Receptor|t:2:uart|baud_cont[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|baud_cont\(11));

-- Location: LCCOMB_X31_Y22_N0
\Receptor|t:2:uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|LessThan0~0_combout\ = ((!\Receptor|t:2:uart|baud_cont\(5) & ((!\Receptor|t:2:uart|baud_cont\(3)) # (!\Receptor|t:2:uart|baud_cont\(4))))) # (!\Receptor|t:2:uart|baud_cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(4),
	datab => \Receptor|t:2:uart|baud_cont\(6),
	datac => \Receptor|t:2:uart|baud_cont\(5),
	datad => \Receptor|t:2:uart|baud_cont\(3),
	combout => \Receptor|t:2:uart|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Receptor|t:2:uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|LessThan0~1_combout\ = (\Receptor|t:2:uart|baud_cont\(9)) # ((\Receptor|t:2:uart|baud_cont\(8)) # ((\Receptor|t:2:uart|baud_cont\(7)) # (!\Receptor|t:2:uart|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(9),
	datab => \Receptor|t:2:uart|baud_cont\(8),
	datac => \Receptor|t:2:uart|baud_cont\(7),
	datad => \Receptor|t:2:uart|LessThan0~0_combout\,
	combout => \Receptor|t:2:uart|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y22_N30
\Receptor|t:2:uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|LessThan0~2_combout\ = (\Receptor|t:2:uart|baud_cont\(12) & ((\Receptor|t:2:uart|baud_cont\(11)) # ((\Receptor|t:2:uart|baud_cont\(10) & \Receptor|t:2:uart|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|baud_cont\(11),
	datab => \Receptor|t:2:uart|baud_cont\(10),
	datac => \Receptor|t:2:uart|baud_cont\(12),
	datad => \Receptor|t:2:uart|LessThan0~1_combout\,
	combout => \Receptor|t:2:uart|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y22_N14
\Receptor|t:2:uart|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector15~0_combout\ = (\Receptor|t:2:uart|state.data_bit~q\ & ((\Receptor|t:2:uart|bit_cont\(0) $ (\Receptor|t:2:uart|LessThan0~2_combout\)))) # (!\Receptor|t:2:uart|state.data_bit~q\ & (\Receptor|t:2:uart|state.idle~q\ & 
-- (\Receptor|t:2:uart|bit_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|state.data_bit~q\,
	datab => \Receptor|t:2:uart|state.idle~q\,
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|LessThan0~2_combout\,
	combout => \Receptor|t:2:uart|Selector15~0_combout\);

-- Location: FF_X29_Y22_N15
\Receptor|t:2:uart|bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|bit_cont\(0));

-- Location: LCCOMB_X29_Y22_N12
\Receptor|t:2:uart|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector13~1_combout\ = (\Receptor|t:2:uart|bit_cont\(0) & (\Receptor|t:2:uart|bit_cont\(2) $ (\Receptor|t:2:uart|bit_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|bit_cont\(1),
	combout => \Receptor|t:2:uart|Selector13~1_combout\);

-- Location: LCCOMB_X29_Y22_N18
\Receptor|t:2:uart|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector13~0_combout\ = (\Receptor|t:2:uart|state.data_bit~q\ & (((!\Receptor|t:2:uart|LessThan0~2_combout\)) # (!\Receptor|t:2:uart|bit_cont\(0)))) # (!\Receptor|t:2:uart|state.data_bit~q\ & (((\Receptor|t:2:uart|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|state.data_bit~q\,
	datab => \Receptor|t:2:uart|bit_cont\(0),
	datac => \Receptor|t:2:uart|state.idle~q\,
	datad => \Receptor|t:2:uart|LessThan0~2_combout\,
	combout => \Receptor|t:2:uart|Selector13~0_combout\);

-- Location: LCCOMB_X30_Y22_N18
\Receptor|t:2:uart|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~0_combout\ = (\Receptor|t:2:uart|LessThan0~2_combout\ & \Receptor|t:2:uart|state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:2:uart|LessThan0~2_combout\,
	datad => \Receptor|t:2:uart|state.data_bit~q\,
	combout => \Receptor|t:2:uart|Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y22_N24
\Receptor|t:2:uart|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector13~2_combout\ = (\Receptor|t:2:uart|Selector13~1_combout\ & ((\Receptor|t:2:uart|Decoder0~0_combout\) # ((\Receptor|t:2:uart|Selector13~0_combout\ & \Receptor|t:2:uart|bit_cont\(2))))) # 
-- (!\Receptor|t:2:uart|Selector13~1_combout\ & (\Receptor|t:2:uart|Selector13~0_combout\ & (\Receptor|t:2:uart|bit_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|Selector13~1_combout\,
	datab => \Receptor|t:2:uart|Selector13~0_combout\,
	datac => \Receptor|t:2:uart|bit_cont\(2),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Selector13~2_combout\);

-- Location: FF_X29_Y22_N25
\Receptor|t:2:uart|bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|bit_cont\(2));

-- Location: LCCOMB_X29_Y22_N10
\Receptor|t:2:uart|state.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|state.stop~0_combout\ = (\Receptor|t:2:uart|bit_cont\(2) & (\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|bit_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|bit_cont\(1),
	combout => \Receptor|t:2:uart|state.stop~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\Receptor|t:2:uart|state.stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|state.stop~1_combout\ = (\Receptor|t:2:uart|LessThan0~2_combout\ & (\Receptor|t:2:uart|state.data_bit~q\ & ((\Receptor|t:2:uart|state.stop~0_combout\)))) # (!\Receptor|t:2:uart|LessThan0~2_combout\ & 
-- (((\Receptor|t:2:uart|state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|state.data_bit~q\,
	datab => \Receptor|t:2:uart|LessThan0~2_combout\,
	datac => \Receptor|t:2:uart|state.stop~q\,
	datad => \Receptor|t:2:uart|state.stop~0_combout\,
	combout => \Receptor|t:2:uart|state.stop~1_combout\);

-- Location: FF_X32_Y22_N5
\Receptor|t:2:uart|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|state.stop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|state.stop~q\);

-- Location: LCCOMB_X32_Y22_N14
\Receptor|t:2:uart|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|state~7_combout\ = (\Receptor|t:2:uart|state.stop~q\ & \Receptor|t:2:uart|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Receptor|t:2:uart|state.stop~q\,
	datad => \Receptor|t:2:uart|LessThan0~2_combout\,
	combout => \Receptor|t:2:uart|state~7_combout\);

-- Location: FF_X32_Y22_N15
\Receptor|t:2:uart|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|state.espera~q\);

-- Location: LCCOMB_X32_Y22_N20
\Receptor|t:2:uart|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector16~0_combout\ = (!\Receptor|t:2:uart|state.espera~q\ & (((\Receptor|t:2:uart|state.idle~q\ & !\Receptor|t:2:uart|Selector18~0_combout\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:2:uart|state.espera~q\,
	datac => \Receptor|t:2:uart|state.idle~q\,
	datad => \Receptor|t:2:uart|Selector18~0_combout\,
	combout => \Receptor|t:2:uart|Selector16~0_combout\);

-- Location: FF_X32_Y22_N21
\Receptor|t:2:uart|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|state.idle~q\);

-- Location: LCCOMB_X32_Y22_N28
\Receptor|t:2:uart|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector17~0_combout\ = (\rx_serial~input_o\ & (((\Receptor|t:2:uart|state.start~q\ & !\Receptor|t:2:uart|Equal0~3_combout\)))) # (!\rx_serial~input_o\ & (((\Receptor|t:2:uart|state.start~q\ & !\Receptor|t:2:uart|Equal0~3_combout\)) # 
-- (!\Receptor|t:2:uart|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \Receptor|t:2:uart|state.idle~q\,
	datac => \Receptor|t:2:uart|state.start~q\,
	datad => \Receptor|t:2:uart|Equal0~3_combout\,
	combout => \Receptor|t:2:uart|Selector17~0_combout\);

-- Location: FF_X32_Y22_N29
\Receptor|t:2:uart|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|state.start~q\);

-- Location: LCCOMB_X32_Y22_N22
\Receptor|t:2:uart|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector18~1_combout\ = (\Receptor|t:2:uart|state.start~q\ & (!\rx_serial~input_o\ & \Receptor|t:2:uart|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Receptor|t:2:uart|state.start~q\,
	datac => \rx_serial~input_o\,
	datad => \Receptor|t:2:uart|Equal0~3_combout\,
	combout => \Receptor|t:2:uart|Selector18~1_combout\);

-- Location: LCCOMB_X32_Y22_N6
\Receptor|t:2:uart|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector18~2_combout\ = (\Receptor|t:2:uart|Selector18~1_combout\) # ((\Receptor|t:2:uart|state.data_bit~q\ & ((!\Receptor|t:2:uart|state.stop~0_combout\) # (!\Receptor|t:2:uart|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|Selector18~1_combout\,
	datab => \Receptor|t:2:uart|LessThan0~2_combout\,
	datac => \Receptor|t:2:uart|state.data_bit~q\,
	datad => \Receptor|t:2:uart|state.stop~0_combout\,
	combout => \Receptor|t:2:uart|Selector18~2_combout\);

-- Location: FF_X32_Y22_N7
\Receptor|t:2:uart|state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|Selector18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|state.data_bit~q\);

-- Location: LCCOMB_X32_Y22_N10
\Receptor|t:2:uart|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector14~0_combout\ = (\Receptor|t:2:uart|state.data_bit~q\ & (\Receptor|t:2:uart|bit_cont\(1) $ (((\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|LessThan0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|state.data_bit~q\,
	datab => \Receptor|t:2:uart|bit_cont\(1),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|LessThan0~2_combout\,
	combout => \Receptor|t:2:uart|Selector14~0_combout\);

-- Location: LCCOMB_X32_Y22_N16
\Receptor|t:2:uart|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Selector14~1_combout\ = (\Receptor|t:2:uart|Selector14~0_combout\) # ((!\Receptor|t:2:uart|state.data_bit~q\ & (\Receptor|t:2:uart|state.idle~q\ & \Receptor|t:2:uart|bit_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|state.data_bit~q\,
	datab => \Receptor|t:2:uart|state.idle~q\,
	datac => \Receptor|t:2:uart|bit_cont\(1),
	datad => \Receptor|t:2:uart|Selector14~0_combout\,
	combout => \Receptor|t:2:uart|Selector14~1_combout\);

-- Location: FF_X32_Y22_N17
\Receptor|t:2:uart|bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|bit_cont\(1));

-- Location: LCCOMB_X30_Y22_N4
\Receptor|t:2:uart|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~1_combout\ = (!\Receptor|t:2:uart|bit_cont\(1) & (!\Receptor|t:2:uart|bit_cont\(2) & (!\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~1_combout\);

-- Location: LCCOMB_X29_Y22_N28
\Receptor|t:2:uart|rx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[0]~0_combout\ = (\Receptor|t:2:uart|Decoder0~1_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~1_combout\ & ((\Receptor|t:2:uart|rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(0),
	datad => \Receptor|t:2:uart|Decoder0~1_combout\,
	combout => \Receptor|t:2:uart|rx[0]~0_combout\);

-- Location: FF_X29_Y22_N29
\Receptor|t:2:uart|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(0));

-- Location: LCCOMB_X22_Y19_N28
\Receptor|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux7~0_combout\ = (\clk_select[1]~input_o\ & (((\clk_select[0]~input_o\)))) # (!\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\ & ((\Receptor|t:2:uart|rx\(0)))) # (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:3:uart|rx\(0),
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:2:uart|rx\(0),
	combout => \Receptor|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\Receptor|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux7~1_combout\ = (\clk_select[1]~input_o\ & ((\Receptor|Mux7~0_combout\ & (\Receptor|t:0:uart|rx\(0))) # (!\Receptor|Mux7~0_combout\ & ((\Receptor|t:1:uart|rx\(0)))))) # (!\clk_select[1]~input_o\ & (((\Receptor|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:0:uart|rx\(0),
	datac => \Receptor|t:1:uart|rx\(0),
	datad => \Receptor|Mux7~0_combout\,
	combout => \Receptor|Mux7~1_combout\);

-- Location: LCCOMB_X11_Y18_N14
\mod_lcd|fsm|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector17~2_combout\ = (\mod_lcd|fsm|current_state.Write25~q\) # ((\mod_lcd|fsm|current_state.Write10~q\) # ((\mod_lcd|fsm|current_state.rx4~q\ & \Receptor|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.rx4~q\,
	datab => \mod_lcd|fsm|current_state.Write25~q\,
	datac => \mod_lcd|fsm|current_state.Write10~q\,
	datad => \Receptor|Mux7~1_combout\,
	combout => \mod_lcd|fsm|Selector17~2_combout\);

-- Location: LCCOMB_X11_Y18_N22
\mod_lcd|fsm|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector17~5_combout\ = ((\mod_lcd|fsm|Selector17~4_combout\) # ((\mod_lcd|fsm|current_state.Write26~q\) # (\mod_lcd|fsm|Selector17~2_combout\))) # (!\mod_lcd|fsm|Selector14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Selector14~1_combout\,
	datab => \mod_lcd|fsm|Selector17~4_combout\,
	datac => \mod_lcd|fsm|current_state.Write26~q\,
	datad => \mod_lcd|fsm|Selector17~2_combout\,
	combout => \mod_lcd|fsm|Selector17~5_combout\);

-- Location: LCCOMB_X22_Y21_N6
\Receptor|t:0:uart|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~2_combout\ = (!\Receptor|t:0:uart|bit_cont\(2) & (\Receptor|t:0:uart|bit_cont\(0) & (!\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Receptor|t:0:uart|rx[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[1]~1_combout\ = (\Receptor|t:0:uart|Decoder0~2_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~2_combout\ & ((\Receptor|t:0:uart|rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(1),
	datad => \Receptor|t:0:uart|Decoder0~2_combout\,
	combout => \Receptor|t:0:uart|rx[1]~1_combout\);

-- Location: FF_X22_Y21_N15
\Receptor|t:0:uart|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(1));

-- Location: LCCOMB_X23_Y22_N24
\Receptor|t:3:uart|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~2_combout\ = (\Receptor|t:3:uart|bit_cont\(0) & (!\Receptor|t:3:uart|bit_cont\(1) & (!\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y22_N14
\Receptor|t:3:uart|rx[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[1]~1_combout\ = (\Receptor|t:3:uart|Decoder0~2_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~2_combout\ & ((\Receptor|t:3:uart|rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(1),
	datad => \Receptor|t:3:uart|Decoder0~2_combout\,
	combout => \Receptor|t:3:uart|rx[1]~1_combout\);

-- Location: FF_X23_Y22_N15
\Receptor|t:3:uart|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(1));

-- Location: LCCOMB_X30_Y22_N22
\Receptor|t:2:uart|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~2_combout\ = (!\Receptor|t:2:uart|bit_cont\(1) & (!\Receptor|t:2:uart|bit_cont\(2) & (\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~2_combout\);

-- Location: LCCOMB_X30_Y22_N24
\Receptor|t:2:uart|rx[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[1]~1_combout\ = (\Receptor|t:2:uart|Decoder0~2_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~2_combout\ & ((\Receptor|t:2:uart|rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(1),
	datad => \Receptor|t:2:uart|Decoder0~2_combout\,
	combout => \Receptor|t:2:uart|rx[1]~1_combout\);

-- Location: FF_X30_Y22_N25
\Receptor|t:2:uart|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(1));

-- Location: LCCOMB_X22_Y19_N4
\Receptor|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux6~0_combout\ = (\clk_select[1]~input_o\ & (((\clk_select[0]~input_o\)))) # (!\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\ & ((\Receptor|t:2:uart|rx\(1)))) # (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:3:uart|rx\(1),
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:2:uart|rx\(1),
	combout => \Receptor|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Receptor|t:1:uart|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~2_combout\ = (!\Receptor|t:1:uart|bit_cont\(1) & (!\Receptor|t:1:uart|bit_cont\(2) & (\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~2_combout\);

-- Location: LCCOMB_X29_Y20_N24
\Receptor|t:1:uart|rx[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[1]~1_combout\ = (\Receptor|t:1:uart|Decoder0~2_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~2_combout\ & ((\Receptor|t:1:uart|rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(1),
	datad => \Receptor|t:1:uart|Decoder0~2_combout\,
	combout => \Receptor|t:1:uart|rx[1]~1_combout\);

-- Location: FF_X29_Y20_N25
\Receptor|t:1:uart|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(1));

-- Location: LCCOMB_X22_Y19_N18
\Receptor|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux6~1_combout\ = (\clk_select[1]~input_o\ & ((\Receptor|Mux6~0_combout\ & (\Receptor|t:0:uart|rx\(1))) # (!\Receptor|Mux6~0_combout\ & ((\Receptor|t:1:uart|rx\(1)))))) # (!\clk_select[1]~input_o\ & (((\Receptor|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:0:uart|rx\(1),
	datac => \Receptor|Mux6~0_combout\,
	datad => \Receptor|t:1:uart|rx\(1),
	combout => \Receptor|Mux6~1_combout\);

-- Location: LCCOMB_X11_Y15_N4
\mod_lcd|fsm|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector16~0_combout\ = (\mod_lcd|fsm|current_state.rx1~q\) # ((\mod_lcd|fsm|current_state.Write24~q\) # ((\Receptor|Mux6~1_combout\ & \mod_lcd|fsm|current_state.rx4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.rx1~q\,
	datab => \mod_lcd|fsm|current_state.Write24~q\,
	datac => \Receptor|Mux6~1_combout\,
	datad => \mod_lcd|fsm|current_state.rx4~q\,
	combout => \mod_lcd|fsm|Selector16~0_combout\);

-- Location: LCCOMB_X12_Y14_N30
\mod_lcd|fsm|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector15~0_combout\ = (!\mod_lcd|fsm|current_state.Write34~q\ & (!\mod_lcd|fsm|current_state.Write36~q\ & !\mod_lcd|fsm|current_state.EntryMode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|current_state.Write34~q\,
	datac => \mod_lcd|fsm|current_state.Write36~q\,
	datad => \mod_lcd|fsm|current_state.EntryMode~q\,
	combout => \mod_lcd|fsm|Selector15~0_combout\);

-- Location: LCCOMB_X10_Y18_N12
\mod_lcd|fsm|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector16~1_combout\ = (\mod_lcd|fsm|Selector16~0_combout\) # (((\mod_lcd|fsm|current_state.rx3~q\) # (!\mod_lcd|fsm|Selector15~0_combout\)) # (!\mod_lcd|fsm|Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Selector16~0_combout\,
	datab => \mod_lcd|fsm|Selector14~1_combout\,
	datac => \mod_lcd|fsm|Selector15~0_combout\,
	datad => \mod_lcd|fsm|current_state.rx3~q\,
	combout => \mod_lcd|fsm|Selector16~1_combout\);

-- Location: LCCOMB_X11_Y18_N28
\mod_lcd|fsm|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector16~2_combout\ = (\mod_lcd|fsm|current_state.Write3~q\) # ((\mod_lcd|fsm|current_state.Write9~q\) # ((\mod_lcd|fsm|current_state.Write28~q\) # (\mod_lcd|fsm|current_state.Write5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write3~q\,
	datab => \mod_lcd|fsm|current_state.Write9~q\,
	datac => \mod_lcd|fsm|current_state.Write28~q\,
	datad => \mod_lcd|fsm|current_state.Write5~q\,
	combout => \mod_lcd|fsm|Selector16~2_combout\);

-- Location: LCCOMB_X11_Y18_N26
\mod_lcd|fsm|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector16~3_combout\ = (\mod_lcd|fsm|Selector16~1_combout\) # ((\mod_lcd|fsm|current_state.Write31~q\) # (\mod_lcd|fsm|Selector16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Selector16~1_combout\,
	datac => \mod_lcd|fsm|current_state.Write31~q\,
	datad => \mod_lcd|fsm|Selector16~2_combout\,
	combout => \mod_lcd|fsm|Selector16~3_combout\);

-- Location: LCCOMB_X11_Y18_N6
\mod_lcd|fsm|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector14~2_combout\ = (!\mod_lcd|fsm|current_state.Write28~q\ & (!\mod_lcd|fsm|current_state.Write1~q\ & (!\mod_lcd|fsm|current_state.Write32~q\ & !\mod_lcd|fsm|current_state.DisplayControl~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write28~q\,
	datab => \mod_lcd|fsm|current_state.Write1~q\,
	datac => \mod_lcd|fsm|current_state.Write32~q\,
	datad => \mod_lcd|fsm|current_state.DisplayControl~q\,
	combout => \mod_lcd|fsm|Selector14~2_combout\);

-- Location: LCCOMB_X11_Y18_N0
\mod_lcd|fsm|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector14~3_combout\ = (!\mod_lcd|fsm|current_state.Write26~q\ & (\mod_lcd|fsm|Selector14~0_combout\ & (!\mod_lcd|fsm|current_state.Write33~q\ & \mod_lcd|fsm|Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write26~q\,
	datab => \mod_lcd|fsm|Selector14~0_combout\,
	datac => \mod_lcd|fsm|current_state.Write33~q\,
	datad => \mod_lcd|fsm|Selector14~2_combout\,
	combout => \mod_lcd|fsm|Selector14~3_combout\);

-- Location: LCCOMB_X30_Y22_N16
\Receptor|t:2:uart|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~3_combout\ = (\Receptor|t:2:uart|bit_cont\(1) & (!\Receptor|t:2:uart|bit_cont\(2) & (!\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~3_combout\);

-- Location: LCCOMB_X30_Y22_N30
\Receptor|t:2:uart|rx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[2]~2_combout\ = (\Receptor|t:2:uart|Decoder0~3_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~3_combout\ & ((\Receptor|t:2:uart|rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(2),
	datad => \Receptor|t:2:uart|Decoder0~3_combout\,
	combout => \Receptor|t:2:uart|rx[2]~2_combout\);

-- Location: FF_X30_Y22_N31
\Receptor|t:2:uart|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(2));

-- Location: LCCOMB_X23_Y22_N10
\Receptor|t:3:uart|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~3_combout\ = (!\Receptor|t:3:uart|bit_cont\(0) & (\Receptor|t:3:uart|bit_cont\(1) & (!\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y22_N8
\Receptor|t:3:uart|rx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[2]~2_combout\ = (\Receptor|t:3:uart|Decoder0~3_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~3_combout\ & ((\Receptor|t:3:uart|rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(2),
	datad => \Receptor|t:3:uart|Decoder0~3_combout\,
	combout => \Receptor|t:3:uart|rx[2]~2_combout\);

-- Location: FF_X23_Y22_N9
\Receptor|t:3:uart|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(2));

-- Location: LCCOMB_X28_Y20_N20
\Receptor|t:1:uart|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~3_combout\ = (\Receptor|t:1:uart|bit_cont\(1) & (!\Receptor|t:1:uart|bit_cont\(2) & (!\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~3_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Receptor|t:1:uart|rx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[2]~2_combout\ = (\Receptor|t:1:uart|Decoder0~3_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~3_combout\ & ((\Receptor|t:1:uart|rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(2),
	datad => \Receptor|t:1:uart|Decoder0~3_combout\,
	combout => \Receptor|t:1:uart|rx[2]~2_combout\);

-- Location: FF_X28_Y20_N23
\Receptor|t:1:uart|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(2));

-- Location: LCCOMB_X22_Y19_N16
\Receptor|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux5~0_combout\ = (\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\) # ((\Receptor|t:1:uart|rx\(2))))) # (!\clk_select[1]~input_o\ & (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \clk_select[0]~input_o\,
	datac => \Receptor|t:3:uart|rx\(2),
	datad => \Receptor|t:1:uart|rx\(2),
	combout => \Receptor|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\Receptor|t:0:uart|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~3_combout\ = (!\Receptor|t:0:uart|bit_cont\(2) & (!\Receptor|t:0:uart|bit_cont\(0) & (\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y21_N8
\Receptor|t:0:uart|rx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[2]~2_combout\ = (\Receptor|t:0:uart|Decoder0~3_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~3_combout\ & ((\Receptor|t:0:uart|rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(2),
	datad => \Receptor|t:0:uart|Decoder0~3_combout\,
	combout => \Receptor|t:0:uart|rx[2]~2_combout\);

-- Location: FF_X22_Y21_N9
\Receptor|t:0:uart|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(2));

-- Location: LCCOMB_X22_Y19_N10
\Receptor|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux5~1_combout\ = (\Receptor|Mux5~0_combout\ & (((\Receptor|t:0:uart|rx\(2)) # (!\clk_select[0]~input_o\)))) # (!\Receptor|Mux5~0_combout\ & (\Receptor|t:2:uart|rx\(2) & (\clk_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|rx\(2),
	datab => \Receptor|Mux5~0_combout\,
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:0:uart|rx\(2),
	combout => \Receptor|Mux5~1_combout\);

-- Location: LCCOMB_X10_Y18_N16
\mod_lcd|fsm|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector15~1_combout\ = (\mod_lcd|fsm|current_state.Write13~q\) # ((\mod_lcd|fsm|current_state.Write7~q\) # ((\Receptor|Mux5~1_combout\ & \mod_lcd|fsm|current_state.rx4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write13~q\,
	datab => \Receptor|Mux5~1_combout\,
	datac => \mod_lcd|fsm|current_state.rx4~q\,
	datad => \mod_lcd|fsm|current_state.Write7~q\,
	combout => \mod_lcd|fsm|Selector15~1_combout\);

-- Location: LCCOMB_X10_Y18_N22
\mod_lcd|fsm|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector15~2_combout\ = ((\mod_lcd|fsm|Selector15~1_combout\) # (!\mod_lcd|fsm|Selector14~3_combout\)) # (!\mod_lcd|fsm|Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Selector15~0_combout\,
	datac => \mod_lcd|fsm|Selector14~3_combout\,
	datad => \mod_lcd|fsm|Selector15~1_combout\,
	combout => \mod_lcd|fsm|Selector15~2_combout\);

-- Location: LCCOMB_X22_Y21_N10
\Receptor|t:0:uart|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~4_combout\ = (!\Receptor|t:0:uart|bit_cont\(2) & (\Receptor|t:0:uart|bit_cont\(0) & (\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y21_N26
\Receptor|t:0:uart|rx[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[3]~3_combout\ = (\Receptor|t:0:uart|Decoder0~4_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~4_combout\ & ((\Receptor|t:0:uart|rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(3),
	datad => \Receptor|t:0:uart|Decoder0~4_combout\,
	combout => \Receptor|t:0:uart|rx[3]~3_combout\);

-- Location: FF_X22_Y21_N27
\Receptor|t:0:uart|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(3));

-- Location: LCCOMB_X23_Y19_N2
\Receptor|t:3:uart|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~4_combout\ = (\Receptor|t:3:uart|bit_cont\(0) & (\Receptor|t:3:uart|bit_cont\(1) & (!\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Receptor|t:3:uart|rx[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[3]~3_combout\ = (\Receptor|t:3:uart|Decoder0~4_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~4_combout\ & ((\Receptor|t:3:uart|rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(3),
	datad => \Receptor|t:3:uart|Decoder0~4_combout\,
	combout => \Receptor|t:3:uart|rx[3]~3_combout\);

-- Location: FF_X23_Y19_N13
\Receptor|t:3:uart|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(3));

-- Location: LCCOMB_X30_Y22_N10
\Receptor|t:2:uart|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~4_combout\ = (\Receptor|t:2:uart|bit_cont\(1) & (!\Receptor|t:2:uart|bit_cont\(2) & (\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~4_combout\);

-- Location: LCCOMB_X30_Y22_N12
\Receptor|t:2:uart|rx[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[3]~3_combout\ = (\Receptor|t:2:uart|Decoder0~4_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~4_combout\ & ((\Receptor|t:2:uart|rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(3),
	datad => \Receptor|t:2:uart|Decoder0~4_combout\,
	combout => \Receptor|t:2:uart|rx[3]~3_combout\);

-- Location: FF_X30_Y22_N13
\Receptor|t:2:uart|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(3));

-- Location: LCCOMB_X22_Y19_N0
\Receptor|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux4~0_combout\ = (\clk_select[1]~input_o\ & (((\clk_select[0]~input_o\)))) # (!\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\ & ((\Receptor|t:2:uart|rx\(3)))) # (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:3:uart|rx\(3),
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:2:uart|rx\(3),
	combout => \Receptor|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\Receptor|t:1:uart|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~4_combout\ = (\Receptor|t:1:uart|bit_cont\(1) & (!\Receptor|t:1:uart|bit_cont\(2) & (\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y20_N4
\Receptor|t:1:uart|rx[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[3]~3_combout\ = (\Receptor|t:1:uart|Decoder0~4_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~4_combout\ & ((\Receptor|t:1:uart|rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(3),
	datad => \Receptor|t:1:uart|Decoder0~4_combout\,
	combout => \Receptor|t:1:uart|rx[3]~3_combout\);

-- Location: FF_X28_Y20_N5
\Receptor|t:1:uart|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(3));

-- Location: LCCOMB_X22_Y19_N22
\Receptor|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux4~1_combout\ = (\Receptor|Mux4~0_combout\ & ((\Receptor|t:0:uart|rx\(3)) # ((!\clk_select[1]~input_o\)))) # (!\Receptor|Mux4~0_combout\ & (((\Receptor|t:1:uart|rx\(3) & \clk_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|rx\(3),
	datab => \Receptor|Mux4~0_combout\,
	datac => \Receptor|t:1:uart|rx\(3),
	datad => \clk_select[1]~input_o\,
	combout => \Receptor|Mux4~1_combout\);

-- Location: LCCOMB_X11_Y18_N8
\mod_lcd|fsm|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector14~4_combout\ = (\mod_lcd|fsm|current_state.Write10~q\) # ((\mod_lcd|fsm|current_state.Write25~q\) # ((\mod_lcd|fsm|current_state.rx4~q\ & \Receptor|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.rx4~q\,
	datab => \mod_lcd|fsm|current_state.Write10~q\,
	datac => \mod_lcd|fsm|current_state.Write25~q\,
	datad => \Receptor|Mux4~1_combout\,
	combout => \mod_lcd|fsm|Selector14~4_combout\);

-- Location: LCCOMB_X10_Y18_N26
\mod_lcd|fsm|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector13~0_combout\ = (\mod_lcd|fsm|WideOr12~0_combout\ & (!\mod_lcd|fsm|current_state.rx2~q\ & !\mod_lcd|fsm|current_state.rx3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|WideOr12~0_combout\,
	datac => \mod_lcd|fsm|current_state.rx2~q\,
	datad => \mod_lcd|fsm|current_state.rx3~q\,
	combout => \mod_lcd|fsm|Selector13~0_combout\);

-- Location: LCCOMB_X10_Y18_N10
\mod_lcd|fsm|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector14~5_combout\ = (\mod_lcd|fsm|Selector14~4_combout\) # ((!\mod_lcd|fsm|Selector13~0_combout\) # (!\mod_lcd|fsm|Selector14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|Selector14~4_combout\,
	datab => \mod_lcd|fsm|Selector14~3_combout\,
	datad => \mod_lcd|fsm|Selector13~0_combout\,
	combout => \mod_lcd|fsm|Selector14~5_combout\);

-- Location: LCCOMB_X12_Y14_N4
\mod_lcd|fsm|WideOr13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr13~1_combout\ = (!\mod_lcd|fsm|current_state.Write24~q\ & (!\mod_lcd|fsm|current_state.Write29~q\ & (!\mod_lcd|fsm|current_state.Write35~q\ & !\mod_lcd|fsm|current_state.rx1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.Write24~q\,
	datab => \mod_lcd|fsm|current_state.Write29~q\,
	datac => \mod_lcd|fsm|current_state.Write35~q\,
	datad => \mod_lcd|fsm|current_state.rx1~q\,
	combout => \mod_lcd|fsm|WideOr13~1_combout\);

-- Location: LCCOMB_X11_Y18_N12
\mod_lcd|fsm|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector13~2_combout\ = (!\mod_lcd|fsm|current_state.Write9~q\ & !\mod_lcd|fsm|current_state.Write5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mod_lcd|fsm|current_state.Write9~q\,
	datad => \mod_lcd|fsm|current_state.Write5~q\,
	combout => \mod_lcd|fsm|Selector13~2_combout\);

-- Location: LCCOMB_X22_Y21_N28
\Receptor|t:0:uart|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~5_combout\ = (\Receptor|t:0:uart|bit_cont\(2) & (!\Receptor|t:0:uart|bit_cont\(0) & (!\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Receptor|t:0:uart|rx[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[4]~4_combout\ = (\Receptor|t:0:uart|Decoder0~5_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~5_combout\ & ((\Receptor|t:0:uart|rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(4),
	datad => \Receptor|t:0:uart|Decoder0~5_combout\,
	combout => \Receptor|t:0:uart|rx[4]~4_combout\);

-- Location: FF_X22_Y21_N17
\Receptor|t:0:uart|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(4));

-- Location: LCCOMB_X23_Y22_N20
\Receptor|t:3:uart|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~5_combout\ = (!\Receptor|t:3:uart|bit_cont\(0) & (!\Receptor|t:3:uart|bit_cont\(1) & (\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y22_N22
\Receptor|t:3:uart|rx[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[4]~4_combout\ = (\Receptor|t:3:uart|Decoder0~5_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~5_combout\ & ((\Receptor|t:3:uart|rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(4),
	datad => \Receptor|t:3:uart|Decoder0~5_combout\,
	combout => \Receptor|t:3:uart|rx[4]~4_combout\);

-- Location: FF_X23_Y22_N23
\Receptor|t:3:uart|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(4));

-- Location: LCCOMB_X28_Y20_N24
\Receptor|t:1:uart|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~5_combout\ = (!\Receptor|t:1:uart|bit_cont\(1) & (\Receptor|t:1:uart|bit_cont\(2) & (!\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~5_combout\);

-- Location: LCCOMB_X28_Y20_N30
\Receptor|t:1:uart|rx[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[4]~4_combout\ = (\Receptor|t:1:uart|Decoder0~5_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~5_combout\ & ((\Receptor|t:1:uart|rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(4),
	datad => \Receptor|t:1:uart|Decoder0~5_combout\,
	combout => \Receptor|t:1:uart|rx[4]~4_combout\);

-- Location: FF_X28_Y20_N31
\Receptor|t:1:uart|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(4));

-- Location: LCCOMB_X22_Y19_N8
\Receptor|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux3~0_combout\ = (\clk_select[0]~input_o\ & (((\clk_select[1]~input_o\)))) # (!\clk_select[0]~input_o\ & ((\clk_select[1]~input_o\ & ((\Receptor|t:1:uart|rx\(4)))) # (!\clk_select[1]~input_o\ & (\Receptor|t:3:uart|rx\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|rx\(4),
	datab => \clk_select[0]~input_o\,
	datac => \Receptor|t:1:uart|rx\(4),
	datad => \clk_select[1]~input_o\,
	combout => \Receptor|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y22_N0
\Receptor|t:2:uart|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~5_combout\ = (!\Receptor|t:2:uart|bit_cont\(1) & (\Receptor|t:2:uart|bit_cont\(2) & (!\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~5_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Receptor|t:2:uart|rx[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[4]~4_combout\ = (\Receptor|t:2:uart|Decoder0~5_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~5_combout\ & ((\Receptor|t:2:uart|rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(4),
	datad => \Receptor|t:2:uart|Decoder0~5_combout\,
	combout => \Receptor|t:2:uart|rx[4]~4_combout\);

-- Location: FF_X30_Y22_N27
\Receptor|t:2:uart|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(4));

-- Location: LCCOMB_X22_Y19_N6
\Receptor|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux3~1_combout\ = (\Receptor|Mux3~0_combout\ & ((\Receptor|t:0:uart|rx\(4)) # ((!\clk_select[0]~input_o\)))) # (!\Receptor|Mux3~0_combout\ & (((\clk_select[0]~input_o\ & \Receptor|t:2:uart|rx\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|rx\(4),
	datab => \Receptor|Mux3~0_combout\,
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:2:uart|rx\(4),
	combout => \Receptor|Mux3~1_combout\);

-- Location: LCCOMB_X10_Y18_N28
\mod_lcd|fsm|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector13~1_combout\ = (\mod_lcd|fsm|current_state.Write13~q\) # ((\mod_lcd|fsm|current_state.Write7~q\) # ((\Receptor|Mux3~1_combout\ & \mod_lcd|fsm|current_state.rx4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|Mux3~1_combout\,
	datab => \mod_lcd|fsm|current_state.rx4~q\,
	datac => \mod_lcd|fsm|current_state.Write13~q\,
	datad => \mod_lcd|fsm|current_state.Write7~q\,
	combout => \mod_lcd|fsm|Selector13~1_combout\);

-- Location: LCCOMB_X10_Y18_N0
\mod_lcd|fsm|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector13~3_combout\ = (((\mod_lcd|fsm|Selector13~1_combout\) # (!\mod_lcd|fsm|Selector13~0_combout\)) # (!\mod_lcd|fsm|Selector13~2_combout\)) # (!\mod_lcd|fsm|WideOr13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|WideOr13~1_combout\,
	datab => \mod_lcd|fsm|Selector13~2_combout\,
	datac => \mod_lcd|fsm|Selector13~1_combout\,
	datad => \mod_lcd|fsm|Selector13~0_combout\,
	combout => \mod_lcd|fsm|Selector13~3_combout\);

-- Location: LCCOMB_X28_Y20_N18
\Receptor|t:1:uart|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~6_combout\ = (!\Receptor|t:1:uart|bit_cont\(1) & (\Receptor|t:1:uart|bit_cont\(2) & (\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~6_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Receptor|t:1:uart|rx[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[5]~5_combout\ = (\Receptor|t:1:uart|Decoder0~6_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~6_combout\ & ((\Receptor|t:1:uart|rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(5),
	datad => \Receptor|t:1:uart|Decoder0~6_combout\,
	combout => \Receptor|t:1:uart|rx[5]~5_combout\);

-- Location: FF_X28_Y20_N9
\Receptor|t:1:uart|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(5));

-- Location: LCCOMB_X22_Y21_N2
\Receptor|t:0:uart|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~6_combout\ = (\Receptor|t:0:uart|bit_cont\(2) & (\Receptor|t:0:uart|bit_cont\(0) & (!\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y21_N22
\Receptor|t:0:uart|rx[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[5]~5_combout\ = (\Receptor|t:0:uart|Decoder0~6_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~6_combout\ & ((\Receptor|t:0:uart|rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(5),
	datad => \Receptor|t:0:uart|Decoder0~6_combout\,
	combout => \Receptor|t:0:uart|rx[5]~5_combout\);

-- Location: FF_X22_Y21_N23
\Receptor|t:0:uart|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(5));

-- Location: LCCOMB_X23_Y22_N6
\Receptor|t:3:uart|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~6_combout\ = (\Receptor|t:3:uart|bit_cont\(0) & (!\Receptor|t:3:uart|bit_cont\(1) & (\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y22_N4
\Receptor|t:3:uart|rx[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[5]~5_combout\ = (\Receptor|t:3:uart|Decoder0~6_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~6_combout\ & ((\Receptor|t:3:uart|rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(5),
	datad => \Receptor|t:3:uart|Decoder0~6_combout\,
	combout => \Receptor|t:3:uart|rx[5]~5_combout\);

-- Location: FF_X23_Y22_N5
\Receptor|t:3:uart|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(5));

-- Location: LCCOMB_X30_Y22_N6
\Receptor|t:2:uart|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~6_combout\ = (!\Receptor|t:2:uart|bit_cont\(1) & (\Receptor|t:2:uart|bit_cont\(2) & (\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~6_combout\);

-- Location: LCCOMB_X30_Y22_N8
\Receptor|t:2:uart|rx[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[5]~5_combout\ = (\Receptor|t:2:uart|Decoder0~6_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~6_combout\ & ((\Receptor|t:2:uart|rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(5),
	datad => \Receptor|t:2:uart|Decoder0~6_combout\,
	combout => \Receptor|t:2:uart|rx[5]~5_combout\);

-- Location: FF_X30_Y22_N9
\Receptor|t:2:uart|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(5));

-- Location: LCCOMB_X22_Y19_N24
\Receptor|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux2~0_combout\ = (\clk_select[0]~input_o\ & (((\Receptor|t:2:uart|rx\(5)) # (\clk_select[1]~input_o\)))) # (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(5) & ((!\clk_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|rx\(5),
	datab => \Receptor|t:2:uart|rx\(5),
	datac => \clk_select[0]~input_o\,
	datad => \clk_select[1]~input_o\,
	combout => \Receptor|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\Receptor|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux2~1_combout\ = (\clk_select[1]~input_o\ & ((\Receptor|Mux2~0_combout\ & ((\Receptor|t:0:uart|rx\(5)))) # (!\Receptor|Mux2~0_combout\ & (\Receptor|t:1:uart|rx\(5))))) # (!\clk_select[1]~input_o\ & (((\Receptor|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:1:uart|rx\(5),
	datac => \Receptor|t:0:uart|rx\(5),
	datad => \Receptor|Mux2~0_combout\,
	combout => \Receptor|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y14_N22
\mod_lcd|fsm|WideOr13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr13~2_combout\ = (!\mod_lcd|fsm|current_state.SetAddress~q\ & (!\mod_lcd|fsm|current_state.Write34~q\ & (!\mod_lcd|fsm|current_state.Write36~q\ & !\mod_lcd|fsm|current_state.Write1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|current_state.SetAddress~q\,
	datab => \mod_lcd|fsm|current_state.Write34~q\,
	datac => \mod_lcd|fsm|current_state.Write36~q\,
	datad => \mod_lcd|fsm|current_state.Write1~q\,
	combout => \mod_lcd|fsm|WideOr13~2_combout\);

-- Location: LCCOMB_X11_Y18_N10
\mod_lcd|fsm|WideOr13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr13~3_combout\ = (\mod_lcd|fsm|WideOr13~1_combout\ & (!\mod_lcd|fsm|current_state.Write37~q\ & \mod_lcd|fsm|WideOr13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|WideOr13~1_combout\,
	datab => \mod_lcd|fsm|current_state.Write37~q\,
	datad => \mod_lcd|fsm|WideOr13~2_combout\,
	combout => \mod_lcd|fsm|WideOr13~3_combout\);

-- Location: LCCOMB_X10_Y18_N20
\mod_lcd|fsm|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector12~0_combout\ = (\mod_lcd|fsm|current_state.rx4~q\ & (\Receptor|Mux2~1_combout\)) # (!\mod_lcd|fsm|current_state.rx4~q\ & (((\mod_lcd|fsm|WideOr13~3_combout\ & \mod_lcd|fsm|WideOr13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|Mux2~1_combout\,
	datab => \mod_lcd|fsm|current_state.rx4~q\,
	datac => \mod_lcd|fsm|WideOr13~3_combout\,
	datad => \mod_lcd|fsm|WideOr13~0_combout\,
	combout => \mod_lcd|fsm|Selector12~0_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Receptor|t:2:uart|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~7_combout\ = (\Receptor|t:2:uart|bit_cont\(1) & (\Receptor|t:2:uart|bit_cont\(2) & (!\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~7_combout\);

-- Location: LCCOMB_X30_Y22_N14
\Receptor|t:2:uart|rx[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[6]~6_combout\ = (\Receptor|t:2:uart|Decoder0~7_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~7_combout\ & ((\Receptor|t:2:uart|rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(6),
	datad => \Receptor|t:2:uart|Decoder0~7_combout\,
	combout => \Receptor|t:2:uart|rx[6]~6_combout\);

-- Location: FF_X30_Y22_N15
\Receptor|t:2:uart|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(6));

-- Location: LCCOMB_X23_Y19_N0
\Receptor|t:3:uart|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~7_combout\ = (!\Receptor|t:3:uart|bit_cont\(0) & (\Receptor|t:3:uart|bit_cont\(1) & (\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Receptor|t:3:uart|rx[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[6]~6_combout\ = (\Receptor|t:3:uart|Decoder0~7_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~7_combout\ & ((\Receptor|t:3:uart|rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(6),
	datad => \Receptor|t:3:uart|Decoder0~7_combout\,
	combout => \Receptor|t:3:uart|rx[6]~6_combout\);

-- Location: FF_X23_Y19_N31
\Receptor|t:3:uart|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(6));

-- Location: LCCOMB_X28_Y20_N0
\Receptor|t:1:uart|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~7_combout\ = (\Receptor|t:1:uart|bit_cont\(1) & (\Receptor|t:1:uart|bit_cont\(2) & (!\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~7_combout\);

-- Location: LCCOMB_X28_Y20_N26
\Receptor|t:1:uart|rx[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[6]~6_combout\ = (\Receptor|t:1:uart|Decoder0~7_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~7_combout\ & ((\Receptor|t:1:uart|rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(6),
	datad => \Receptor|t:1:uart|Decoder0~7_combout\,
	combout => \Receptor|t:1:uart|rx[6]~6_combout\);

-- Location: FF_X28_Y20_N27
\Receptor|t:1:uart|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(6));

-- Location: LCCOMB_X22_Y19_N20
\Receptor|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux1~0_combout\ = (\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\) # ((\Receptor|t:1:uart|rx\(6))))) # (!\clk_select[1]~input_o\ & (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \clk_select[0]~input_o\,
	datac => \Receptor|t:3:uart|rx\(6),
	datad => \Receptor|t:1:uart|rx\(6),
	combout => \Receptor|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\Receptor|t:0:uart|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~7_combout\ = (\Receptor|t:0:uart|bit_cont\(1) & (\Receptor|t:0:uart|bit_cont\(2) & (!\Receptor|t:0:uart|bit_cont\(0) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(1),
	datab => \Receptor|t:0:uart|bit_cont\(2),
	datac => \Receptor|t:0:uart|bit_cont\(0),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y21_N4
\Receptor|t:0:uart|rx[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[6]~6_combout\ = (\Receptor|t:0:uart|Decoder0~7_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~7_combout\ & ((\Receptor|t:0:uart|rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(6),
	datad => \Receptor|t:0:uart|Decoder0~7_combout\,
	combout => \Receptor|t:0:uart|rx[6]~6_combout\);

-- Location: FF_X22_Y21_N5
\Receptor|t:0:uart|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(6));

-- Location: LCCOMB_X22_Y19_N26
\Receptor|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux1~1_combout\ = (\Receptor|Mux1~0_combout\ & (((\Receptor|t:0:uart|rx\(6)) # (!\clk_select[0]~input_o\)))) # (!\Receptor|Mux1~0_combout\ & (\Receptor|t:2:uart|rx\(6) & (\clk_select[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|rx\(6),
	datab => \Receptor|Mux1~0_combout\,
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:0:uart|rx\(6),
	combout => \Receptor|Mux1~1_combout\);

-- Location: LCCOMB_X10_Y18_N24
\mod_lcd|fsm|WideOr12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|WideOr12~1_combout\ = (\mod_lcd|fsm|WideOr12~0_combout\ & (!\mod_lcd|fsm|current_state.Write13~q\ & (!\mod_lcd|fsm|current_state.Write12~q\ & !\mod_lcd|fsm|current_state.rx3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod_lcd|fsm|WideOr12~0_combout\,
	datab => \mod_lcd|fsm|current_state.Write13~q\,
	datac => \mod_lcd|fsm|current_state.Write12~q\,
	datad => \mod_lcd|fsm|current_state.rx3~q\,
	combout => \mod_lcd|fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X10_Y18_N2
\mod_lcd|fsm|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector11~0_combout\ = (\mod_lcd|fsm|current_state.rx4~q\ & (\Receptor|Mux1~1_combout\)) # (!\mod_lcd|fsm|current_state.rx4~q\ & (((\mod_lcd|fsm|WideOr12~1_combout\ & \mod_lcd|fsm|WideOr13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|Mux1~1_combout\,
	datab => \mod_lcd|fsm|current_state.rx4~q\,
	datac => \mod_lcd|fsm|WideOr12~1_combout\,
	datad => \mod_lcd|fsm|WideOr13~0_combout\,
	combout => \mod_lcd|fsm|Selector11~0_combout\);

-- Location: LCCOMB_X23_Y19_N10
\Receptor|t:3:uart|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|Decoder0~8_combout\ = (\Receptor|t:3:uart|bit_cont\(0) & (\Receptor|t:3:uart|bit_cont\(1) & (\Receptor|t:3:uart|bit_cont\(2) & \Receptor|t:3:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:3:uart|bit_cont\(0),
	datab => \Receptor|t:3:uart|bit_cont\(1),
	datac => \Receptor|t:3:uart|bit_cont\(2),
	datad => \Receptor|t:3:uart|Decoder0~0_combout\,
	combout => \Receptor|t:3:uart|Decoder0~8_combout\);

-- Location: LCCOMB_X23_Y19_N24
\Receptor|t:3:uart|rx[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:3:uart|rx[7]~7_combout\ = (\Receptor|t:3:uart|Decoder0~8_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:3:uart|Decoder0~8_combout\ & ((\Receptor|t:3:uart|rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:3:uart|rx\(7),
	datad => \Receptor|t:3:uart|Decoder0~8_combout\,
	combout => \Receptor|t:3:uart|rx[7]~7_combout\);

-- Location: FF_X23_Y19_N25
\Receptor|t:3:uart|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:3:uart|rx[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:3:uart|rx\(7));

-- Location: LCCOMB_X30_Y22_N2
\Receptor|t:2:uart|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|Decoder0~8_combout\ = (\Receptor|t:2:uart|bit_cont\(1) & (\Receptor|t:2:uart|bit_cont\(2) & (\Receptor|t:2:uart|bit_cont\(0) & \Receptor|t:2:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:2:uart|bit_cont\(1),
	datab => \Receptor|t:2:uart|bit_cont\(2),
	datac => \Receptor|t:2:uart|bit_cont\(0),
	datad => \Receptor|t:2:uart|Decoder0~0_combout\,
	combout => \Receptor|t:2:uart|Decoder0~8_combout\);

-- Location: LCCOMB_X30_Y22_N28
\Receptor|t:2:uart|rx[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:2:uart|rx[7]~7_combout\ = (\Receptor|t:2:uart|Decoder0~8_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:2:uart|Decoder0~8_combout\ & ((\Receptor|t:2:uart|rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:2:uart|rx\(7),
	datad => \Receptor|t:2:uart|Decoder0~8_combout\,
	combout => \Receptor|t:2:uart|rx[7]~7_combout\);

-- Location: FF_X30_Y22_N29
\Receptor|t:2:uart|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:2:uart|rx[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:2:uart|rx\(7));

-- Location: LCCOMB_X22_Y19_N12
\Receptor|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux0~0_combout\ = (\clk_select[1]~input_o\ & (((\clk_select[0]~input_o\)))) # (!\clk_select[1]~input_o\ & ((\clk_select[0]~input_o\ & ((\Receptor|t:2:uart|rx\(7)))) # (!\clk_select[0]~input_o\ & (\Receptor|t:3:uart|rx\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_select[1]~input_o\,
	datab => \Receptor|t:3:uart|rx\(7),
	datac => \clk_select[0]~input_o\,
	datad => \Receptor|t:2:uart|rx\(7),
	combout => \Receptor|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y20_N6
\Receptor|t:1:uart|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|Decoder0~8_combout\ = (\Receptor|t:1:uart|bit_cont\(1) & (\Receptor|t:1:uart|bit_cont\(2) & (\Receptor|t:1:uart|bit_cont\(0) & \Receptor|t:1:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:1:uart|bit_cont\(1),
	datab => \Receptor|t:1:uart|bit_cont\(2),
	datac => \Receptor|t:1:uart|bit_cont\(0),
	datad => \Receptor|t:1:uart|Decoder0~0_combout\,
	combout => \Receptor|t:1:uart|Decoder0~8_combout\);

-- Location: LCCOMB_X28_Y20_N12
\Receptor|t:1:uart|rx[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:1:uart|rx[7]~7_combout\ = (\Receptor|t:1:uart|Decoder0~8_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:1:uart|Decoder0~8_combout\ & ((\Receptor|t:1:uart|rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => \Receptor|t:1:uart|rx\(7),
	datad => \Receptor|t:1:uart|Decoder0~8_combout\,
	combout => \Receptor|t:1:uart|rx[7]~7_combout\);

-- Location: FF_X28_Y20_N13
\Receptor|t:1:uart|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:1:uart|rx[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:1:uart|rx\(7));

-- Location: LCCOMB_X22_Y21_N18
\Receptor|t:0:uart|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|Decoder0~8_combout\ = (\Receptor|t:0:uart|bit_cont\(2) & (\Receptor|t:0:uart|bit_cont\(0) & (\Receptor|t:0:uart|bit_cont\(1) & \Receptor|t:0:uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|t:0:uart|bit_cont\(2),
	datab => \Receptor|t:0:uart|bit_cont\(0),
	datac => \Receptor|t:0:uart|bit_cont\(1),
	datad => \Receptor|t:0:uart|Decoder0~0_combout\,
	combout => \Receptor|t:0:uart|Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y21_N30
\Receptor|t:0:uart|rx[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|t:0:uart|rx[7]~7_combout\ = (\Receptor|t:0:uart|Decoder0~8_combout\ & (\rx_serial~input_o\)) # (!\Receptor|t:0:uart|Decoder0~8_combout\ & ((\Receptor|t:0:uart|rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \Receptor|t:0:uart|rx\(7),
	datad => \Receptor|t:0:uart|Decoder0~8_combout\,
	combout => \Receptor|t:0:uart|rx[7]~7_combout\);

-- Location: FF_X22_Y21_N31
\Receptor|t:0:uart|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Receptor|t:0:uart|rx[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Receptor|t:0:uart|rx\(7));

-- Location: LCCOMB_X18_Y20_N4
\Receptor|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Receptor|Mux0~1_combout\ = (\Receptor|Mux0~0_combout\ & (((\Receptor|t:0:uart|rx\(7)) # (!\clk_select[1]~input_o\)))) # (!\Receptor|Mux0~0_combout\ & (\Receptor|t:1:uart|rx\(7) & (\clk_select[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|Mux0~0_combout\,
	datab => \Receptor|t:1:uart|rx\(7),
	datac => \clk_select[1]~input_o\,
	datad => \Receptor|t:0:uart|rx\(7),
	combout => \Receptor|Mux0~1_combout\);

-- Location: LCCOMB_X10_Y18_N4
\mod_lcd|fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mod_lcd|fsm|Selector10~0_combout\ = (\mod_lcd|fsm|current_state.SetAddress~q\) # (((\Receptor|Mux0~1_combout\ & \mod_lcd|fsm|current_state.rx4~q\)) # (!\mod_lcd|fsm|WideOr26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Receptor|Mux0~1_combout\,
	datab => \mod_lcd|fsm|current_state.rx4~q\,
	datac => \mod_lcd|fsm|current_state.SetAddress~q\,
	datad => \mod_lcd|fsm|WideOr26~0_combout\,
	combout => \mod_lcd|fsm|Selector10~0_combout\);

ww_salida <= \salida~output_o\;

ww_rw <= \rw~output_o\;

ww_rs <= \rs~output_o\;

ww_e <= \e~output_o\;

ww_db(0) <= \db[0]~output_o\;

ww_db(1) <= \db[1]~output_o\;

ww_db(2) <= \db[2]~output_o\;

ww_db(3) <= \db[3]~output_o\;

ww_db(4) <= \db[4]~output_o\;

ww_db(5) <= \db[5]~output_o\;

ww_db(6) <= \db[6]~output_o\;

ww_db(7) <= \db[7]~output_o\;

ww_clk_en_uso <= \clk_en_uso~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_cont_finished <= \cont_finished~output_o\;

ww_enviado_MEF1 <= \enviado_MEF1~output_o\;

ww_enviar <= \enviar~output_o\;

ww_ASCII(0) <= \ASCII[0]~output_o\;

ww_ASCII(1) <= \ASCII[1]~output_o\;

ww_ASCII(2) <= \ASCII[2]~output_o\;

ww_ASCII(3) <= \ASCII[3]~output_o\;

ww_ASCII(4) <= \ASCII[4]~output_o\;

ww_ASCII(5) <= \ASCII[5]~output_o\;

ww_ASCII(6) <= \ASCII[6]~output_o\;

ww_ASCII(7) <= \ASCII[7]~output_o\;

ww_ASCII(8) <= \ASCII[8]~output_o\;

ww_ASCII(9) <= \ASCII[9]~output_o\;

ww_ASCII(10) <= \ASCII[10]~output_o\;
END structure;


