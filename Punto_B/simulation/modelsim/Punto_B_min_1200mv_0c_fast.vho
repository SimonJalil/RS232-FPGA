-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/21/2020 02:55:38"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	Punto_B IS
    PORT (
	entradas : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	reset_low : IN std_logic;
	send_MEF1 : IN std_logic;
	datos_out : OUT std_logic_vector(10 DOWNTO 0);
	preset : OUT std_logic;
	tri_state : OUT std_logic;
	enviado_cont : OUT std_logic;
	enviar : OUT std_logic;
	direccion : OUT std_logic_vector(5 DOWNTO 0)
	);
END Punto_B;

-- Design Ports Information
-- datos_out[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[8]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[9]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datos_out[10]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tri_state	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviado_cont	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviar	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direccion[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direccion[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direccion[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direccion[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direccion[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direccion[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_low	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send_MEF1	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Punto_B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradas : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_low : std_logic;
SIGNAL ww_send_MEF1 : std_logic;
SIGNAL ww_datos_out : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_preset : std_logic;
SIGNAL ww_tri_state : std_logic;
SIGNAL ww_enviado_cont : std_logic;
SIGNAL ww_enviar : std_logic;
SIGNAL ww_direccion : std_logic_vector(5 DOWNTO 0);
SIGNAL \reset_low~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM|current_state.contador~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM|current_state.memoria~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \direccion[0]~output_o\ : std_logic;
SIGNAL \direccion[1]~output_o\ : std_logic;
SIGNAL \direccion[2]~output_o\ : std_logic;
SIGNAL \direccion[3]~output_o\ : std_logic;
SIGNAL \direccion[4]~output_o\ : std_logic;
SIGNAL \direccion[5]~output_o\ : std_logic;
SIGNAL \datos_out[0]~output_o\ : std_logic;
SIGNAL \datos_out[1]~output_o\ : std_logic;
SIGNAL \datos_out[2]~output_o\ : std_logic;
SIGNAL \datos_out[3]~output_o\ : std_logic;
SIGNAL \datos_out[4]~output_o\ : std_logic;
SIGNAL \datos_out[5]~output_o\ : std_logic;
SIGNAL \datos_out[6]~output_o\ : std_logic;
SIGNAL \datos_out[7]~output_o\ : std_logic;
SIGNAL \datos_out[8]~output_o\ : std_logic;
SIGNAL \datos_out[9]~output_o\ : std_logic;
SIGNAL \datos_out[10]~output_o\ : std_logic;
SIGNAL \preset~output_o\ : std_logic;
SIGNAL \tri_state~output_o\ : std_logic;
SIGNAL \enviado_cont~output_o\ : std_logic;
SIGNAL \enviar~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[3]~input_o\ : std_logic;
SIGNAL \entradas[4]~input_o\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \entradas[2]~input_o\ : std_logic;
SIGNAL \FSM|Mux0~0_combout\ : std_logic;
SIGNAL \FSM|next_state.entrada_4~0_combout\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|current_state.idle~feeder_combout\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \reset_low~inputclkctrl_outclk\ : std_logic;
SIGNAL \FSM|current_state.idle~q\ : std_logic;
SIGNAL \send_MEF1~input_o\ : std_logic;
SIGNAL \FSM|current_state.memoria~feeder_combout\ : std_logic;
SIGNAL \FSM|current_state.memoria~q\ : std_logic;
SIGNAL \FSM|current_state.start~q\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|current_state.espera~q\ : std_logic;
SIGNAL \FSM|Selector1~1_combout\ : std_logic;
SIGNAL \Contador|cont[0]~7_combout\ : std_logic;
SIGNAL \Contador|cont[3]~16\ : std_logic;
SIGNAL \Contador|cont[4]~17_combout\ : std_logic;
SIGNAL \Contador|cont[4]~18\ : std_logic;
SIGNAL \Contador|cont[5]~19_combout\ : std_logic;
SIGNAL \Contador|contador~3_combout\ : std_logic;
SIGNAL \FSM|next_state.entrada_4~1_combout\ : std_logic;
SIGNAL \FSM|current_state.entrada_4~q\ : std_logic;
SIGNAL \FSM|next_state.entrada_0~0_combout\ : std_logic;
SIGNAL \FSM|current_state.entrada_0~q\ : std_logic;
SIGNAL \FSM|next_state.entrada_2~0_combout\ : std_logic;
SIGNAL \FSM|current_state.entrada_2~q\ : std_logic;
SIGNAL \FSM|next_state.entrada_1~0_combout\ : std_logic;
SIGNAL \FSM|next_state.entrada_1~1_combout\ : std_logic;
SIGNAL \FSM|current_state.entrada_1~q\ : std_logic;
SIGNAL \Contador|Mux0~0_combout\ : std_logic;
SIGNAL \Contador|Mux1~0_combout\ : std_logic;
SIGNAL \Contador|Mux2~0_combout\ : std_logic;
SIGNAL \Contador|contador~0_combout\ : std_logic;
SIGNAL \Contador|contador~7_combout\ : std_logic;
SIGNAL \Contador|contador~8_combout\ : std_logic;
SIGNAL \Contador|Mux0~1_combout\ : std_logic;
SIGNAL \Contador|Mux3~0_combout\ : std_logic;
SIGNAL \Contador|cont[0]~6_combout\ : std_logic;
SIGNAL \Contador|Mux4~0_combout\ : std_logic;
SIGNAL \Contador|Mux2~1_combout\ : std_logic;
SIGNAL \Contador|contador~4_combout\ : std_logic;
SIGNAL \Contador|contador~2_combout\ : std_logic;
SIGNAL \Contador|contador~5_combout\ : std_logic;
SIGNAL \Contador|contador~6_combout\ : std_logic;
SIGNAL \Contador|cont[0]~13_combout\ : std_logic;
SIGNAL \Contador|cont[0]~14_combout\ : std_logic;
SIGNAL \Contador|cont[0]~8\ : std_logic;
SIGNAL \Contador|cont[1]~9_combout\ : std_logic;
SIGNAL \Contador|cont[1]~10\ : std_logic;
SIGNAL \Contador|cont[2]~11_combout\ : std_logic;
SIGNAL \Contador|cont[2]~12\ : std_logic;
SIGNAL \Contador|cont[3]~15_combout\ : std_logic;
SIGNAL \Contador|contador~1_combout\ : std_logic;
SIGNAL \Contador|contador~9_combout\ : std_logic;
SIGNAL \Contador|contTosend_ready~q\ : std_logic;
SIGNAL \FSM|Selector0~1_combout\ : std_logic;
SIGNAL \FSM|current_state.ready~q\ : std_logic;
SIGNAL \FSM|next_state.entrada_3~0_combout\ : std_logic;
SIGNAL \FSM|next_state.entrada_3~1_combout\ : std_logic;
SIGNAL \FSM|current_state.entrada_3~q\ : std_logic;
SIGNAL \FSM|Selector1~0_combout\ : std_logic;
SIGNAL \FSM|Selector1~2_combout\ : std_logic;
SIGNAL \FSM|current_state.contador~q\ : std_logic;
SIGNAL \FSM|current_state.contador~clkctrl_outclk\ : std_logic;
SIGNAL \Contador|Mux7~0_combout\ : std_logic;
SIGNAL \Contador|Add1~0_combout\ : std_logic;
SIGNAL \Contador|Mux7~1_combout\ : std_logic;
SIGNAL \Contador|Mux7~2_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[0]~0_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[0]~en_q\ : std_logic;
SIGNAL \Contador|Add2~0_combout\ : std_logic;
SIGNAL \Contador|Add1~1\ : std_logic;
SIGNAL \Contador|Add1~2_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[1]~1_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[1]~2_combout\ : std_logic;
SIGNAL \Contador|Add2~1\ : std_logic;
SIGNAL \Contador|Add2~2_combout\ : std_logic;
SIGNAL \Contador|Add1~3\ : std_logic;
SIGNAL \Contador|Add1~4_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[2]~3_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[2]~4_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[4]~5_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[4]~6_combout\ : std_logic;
SIGNAL \Contador|Add2~3\ : std_logic;
SIGNAL \Contador|Add2~4_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[3]~10_combout\ : std_logic;
SIGNAL \Contador|Add1~5\ : std_logic;
SIGNAL \Contador|Add1~6_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[3]~11_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[3]~12_combout\ : std_logic;
SIGNAL \Contador|Add1~7\ : std_logic;
SIGNAL \Contador|Add1~8_combout\ : std_logic;
SIGNAL \Contador|Add2~5\ : std_logic;
SIGNAL \Contador|Add2~6_combout\ : std_logic;
SIGNAL \Contador|Add0~0_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[4]~7_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[4]~8_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[4]~9_combout\ : std_logic;
SIGNAL \Contador|Add2~7\ : std_logic;
SIGNAL \Contador|Add2~8_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[5]~13_combout\ : std_logic;
SIGNAL \Contador|Add1~9\ : std_logic;
SIGNAL \Contador|Add1~10_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[5]~14_combout\ : std_logic;
SIGNAL \Contador|contToaddress_out[5]~15_combout\ : std_logic;
SIGNAL \FSM|current_state.memoria~clkctrl_outclk\ : std_logic;
SIGNAL \Memoria|Mux4~7_combout\ : std_logic;
SIGNAL \Memoria|Mux4~8_combout\ : std_logic;
SIGNAL \Memoria|Mux4~5_combout\ : std_logic;
SIGNAL \Memoria|Mux4~11_combout\ : std_logic;
SIGNAL \Memoria|Mux4~12_combout\ : std_logic;
SIGNAL \Memoria|Mux5~8_combout\ : std_logic;
SIGNAL \Memoria|Mux5~5_combout\ : std_logic;
SIGNAL \Memoria|Mux5~11_combout\ : std_logic;
SIGNAL \Memoria|Mux5~7_combout\ : std_logic;
SIGNAL \Memoria|Mux5~12_combout\ : std_logic;
SIGNAL \Memoria|Mux1~7_combout\ : std_logic;
SIGNAL \Memoria|Mux1~8_combout\ : std_logic;
SIGNAL \Memoria|Mux1~5_combout\ : std_logic;
SIGNAL \Memoria|Mux1~11_combout\ : std_logic;
SIGNAL \Memoria|Mux1~12_combout\ : std_logic;
SIGNAL \Memoria|Mux2~5_combout\ : std_logic;
SIGNAL \Memoria|Mux2~8_combout\ : std_logic;
SIGNAL \Memoria|Mux2~11_combout\ : std_logic;
SIGNAL \Memoria|Mux2~7_combout\ : std_logic;
SIGNAL \Memoria|Mux2~12_combout\ : std_logic;
SIGNAL \Memoria|Mux6~12_combout\ : std_logic;
SIGNAL \Memoria|Mux6~13_combout\ : std_logic;
SIGNAL \Memoria|Mux6~14_combout\ : std_logic;
SIGNAL \Memoria|Mux6~15_combout\ : std_logic;
SIGNAL \Memoria|Mux6~11_combout\ : std_logic;
SIGNAL \Memoria|Mux0~2_combout\ : std_logic;
SIGNAL \Memoria|Mux0~3_combout\ : std_logic;
SIGNAL \Memoria|Mux0~4_combout\ : std_logic;
SIGNAL \Memoria|Mux3~10_combout\ : std_logic;
SIGNAL \Memoria|Mux3~9_combout\ : std_logic;
SIGNAL \Memoria|Mux3~8_combout\ : std_logic;
SIGNAL \Memoria|Mux3~14_combout\ : std_logic;
SIGNAL \Memoria|Mux3~15_combout\ : std_logic;
SIGNAL \Memoria|Mux3~13_combout\ : std_logic;
SIGNAL \Memoria|bit_test~0_combout\ : std_logic;
SIGNAL \Memoria|bit_test~1_combout\ : std_logic;
SIGNAL \Memoria|dato_ok[2]~feeder_combout\ : std_logic;
SIGNAL \Memoria|dato_ok[3]~feeder_combout\ : std_logic;
SIGNAL \Memoria|dato_ok[4]~feeder_combout\ : std_logic;
SIGNAL \Memoria|dato_ok[5]~feeder_combout\ : std_logic;
SIGNAL \Memoria|dato_ok[6]~feeder_combout\ : std_logic;
SIGNAL \Memoria|dato_ok[8]~feeder_combout\ : std_logic;
SIGNAL \Contador|opcion\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Contador|contToaddress_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Memoria|dato_ok\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Contador|cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FSM|ALT_INV_current_state.ready~q\ : std_logic;
SIGNAL \Contador|ALT_INV_contToaddress_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Contador|ALT_INV_contToaddress_out[0]~en_q\ : std_logic;
SIGNAL \FSM|ALT_INV_current_state.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entradas <= entradas;
ww_clk <= clk;
ww_reset_low <= reset_low;
ww_send_MEF1 <= send_MEF1;
datos_out <= ww_datos_out;
preset <= ww_preset;
tri_state <= ww_tri_state;
enviado_cont <= ww_enviado_cont;
enviar <= ww_enviar;
direccion <= ww_direccion;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_low~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_low~input_o\);

\FSM|current_state.contador~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSM|current_state.contador~q\);

\FSM|current_state.memoria~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FSM|current_state.memoria~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\FSM|ALT_INV_current_state.ready~q\ <= NOT \FSM|current_state.ready~q\;
\Contador|ALT_INV_contToaddress_out\(5) <= NOT \Contador|contToaddress_out\(5);
\Contador|ALT_INV_contToaddress_out\(3) <= NOT \Contador|contToaddress_out\(3);
\Contador|ALT_INV_contToaddress_out\(4) <= NOT \Contador|contToaddress_out\(4);
\Contador|ALT_INV_contToaddress_out\(2) <= NOT \Contador|contToaddress_out\(2);
\Contador|ALT_INV_contToaddress_out\(1) <= NOT \Contador|contToaddress_out\(1);
\Contador|ALT_INV_contToaddress_out\(0) <= NOT \Contador|contToaddress_out\(0);
\Contador|ALT_INV_contToaddress_out[0]~en_q\ <= NOT \Contador|contToaddress_out[0]~en_q\;
\FSM|ALT_INV_current_state.idle~q\ <= NOT \FSM|current_state.idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y20_N9
\direccion[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|ALT_INV_contToaddress_out\(0),
	oe => \Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \direccion[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\direccion[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|ALT_INV_contToaddress_out\(1),
	oe => \Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \direccion[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\direccion[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|ALT_INV_contToaddress_out\(2),
	oe => \Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \direccion[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\direccion[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|ALT_INV_contToaddress_out\(3),
	oe => \Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \direccion[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\direccion[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|ALT_INV_contToaddress_out\(4),
	oe => \Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \direccion[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\direccion[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|ALT_INV_contToaddress_out\(5),
	oe => \Contador|ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \direccion[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\datos_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \datos_out[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\datos_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(1),
	devoe => ww_devoe,
	o => \datos_out[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\datos_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(2),
	devoe => ww_devoe,
	o => \datos_out[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\datos_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(3),
	devoe => ww_devoe,
	o => \datos_out[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\datos_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(4),
	devoe => ww_devoe,
	o => \datos_out[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\datos_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(5),
	devoe => ww_devoe,
	o => \datos_out[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\datos_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(6),
	devoe => ww_devoe,
	o => \datos_out[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\datos_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(7),
	devoe => ww_devoe,
	o => \datos_out[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\datos_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Memoria|dato_ok\(8),
	devoe => ww_devoe,
	o => \datos_out[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\datos_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \datos_out[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\datos_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \datos_out[10]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\preset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_current_state.idle~q\,
	devoe => ww_devoe,
	o => \preset~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\tri_state~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_current_state.idle~q\,
	devoe => ww_devoe,
	o => \tri_state~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\enviado_cont~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador|contTosend_ready~q\,
	devoe => ww_devoe,
	o => \enviado_cont~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\enviar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|current_state.start~q\,
	devoe => ww_devoe,
	o => \enviar~output_o\);

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

-- Location: IOIBUF_X16_Y24_N15
\entradas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\entradas[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(3),
	o => \entradas[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\entradas[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(4),
	o => \entradas[4]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\entradas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\entradas[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(2),
	o => \entradas[2]~input_o\);

-- Location: LCCOMB_X25_Y17_N30
\FSM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Mux0~0_combout\ = (\entradas[2]~input_o\ & (!\entradas[3]~input_o\ & (!\entradas[0]~input_o\ & !\entradas[1]~input_o\))) # (!\entradas[2]~input_o\ & ((\entradas[3]~input_o\ & (!\entradas[0]~input_o\ & !\entradas[1]~input_o\)) # 
-- (!\entradas[3]~input_o\ & (\entradas[0]~input_o\ $ (\entradas[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[2]~input_o\,
	datab => \entradas[3]~input_o\,
	datac => \entradas[0]~input_o\,
	datad => \entradas[1]~input_o\,
	combout => \FSM|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\FSM|next_state.entrada_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_4~0_combout\ = (!\entradas[3]~input_o\ & (!\entradas[1]~input_o\ & (!\entradas[2]~input_o\ & !\entradas[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[3]~input_o\,
	datab => \entradas[1]~input_o\,
	datac => \entradas[2]~input_o\,
	datad => \entradas[0]~input_o\,
	combout => \FSM|next_state.entrada_4~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = (\FSM|current_state.ready~q\ & ((\entradas[4]~input_o\ & ((!\FSM|next_state.entrada_4~0_combout\))) # (!\entradas[4]~input_o\ & (!\FSM|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Mux0~0_combout\,
	datab => \entradas[4]~input_o\,
	datac => \FSM|next_state.entrada_4~0_combout\,
	datad => \FSM|current_state.ready~q\,
	combout => \FSM|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\FSM|current_state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|current_state.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FSM|current_state.idle~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_low~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_low,
	o => \reset_low~input_o\);

-- Location: CLKCTRL_G1
\reset_low~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_low~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_low~inputclkctrl_outclk\);

-- Location: FF_X24_Y17_N3
\FSM|current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|current_state.idle~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.idle~q\);

-- Location: IOIBUF_X0_Y11_N22
\send_MEF1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_send_MEF1,
	o => \send_MEF1~input_o\);

-- Location: LCCOMB_X33_Y12_N22
\FSM|current_state.memoria~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|current_state.memoria~feeder_combout\ = \FSM|current_state.contador~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|current_state.contador~q\,
	combout => \FSM|current_state.memoria~feeder_combout\);

-- Location: FF_X33_Y12_N23
\FSM|current_state.memoria\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|current_state.memoria~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.memoria~q\);

-- Location: FF_X24_Y17_N31
\FSM|current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|current_state.memoria~q\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.start~q\);

-- Location: LCCOMB_X24_Y17_N24
\FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = (!\send_MEF1~input_o\ & ((\FSM|current_state.start~q\) # (\FSM|current_state.espera~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|current_state.start~q\,
	datac => \FSM|current_state.espera~q\,
	datad => \send_MEF1~input_o\,
	combout => \FSM|Selector2~0_combout\);

-- Location: FF_X24_Y17_N25
\FSM|current_state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Selector2~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.espera~q\);

-- Location: LCCOMB_X24_Y17_N8
\FSM|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector1~1_combout\ = (\send_MEF1~input_o\ & ((\FSM|current_state.start~q\) # (\FSM|current_state.espera~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_MEF1~input_o\,
	datac => \FSM|current_state.start~q\,
	datad => \FSM|current_state.espera~q\,
	combout => \FSM|Selector1~1_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Contador|cont[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[0]~7_combout\ = \Contador|cont\(0) $ (VCC)
-- \Contador|cont[0]~8\ = CARRY(\Contador|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(0),
	datad => VCC,
	combout => \Contador|cont[0]~7_combout\,
	cout => \Contador|cont[0]~8\);

-- Location: LCCOMB_X26_Y17_N6
\Contador|cont[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[3]~15_combout\ = (\Contador|cont\(3) & (!\Contador|cont[2]~12\)) # (!\Contador|cont\(3) & ((\Contador|cont[2]~12\) # (GND)))
-- \Contador|cont[3]~16\ = CARRY((!\Contador|cont[2]~12\) # (!\Contador|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(3),
	datad => VCC,
	cin => \Contador|cont[2]~12\,
	combout => \Contador|cont[3]~15_combout\,
	cout => \Contador|cont[3]~16\);

-- Location: LCCOMB_X26_Y17_N8
\Contador|cont[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[4]~17_combout\ = (\Contador|cont\(4) & (\Contador|cont[3]~16\ $ (GND))) # (!\Contador|cont\(4) & (!\Contador|cont[3]~16\ & VCC))
-- \Contador|cont[4]~18\ = CARRY((\Contador|cont\(4) & !\Contador|cont[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(4),
	datad => VCC,
	cin => \Contador|cont[3]~16\,
	combout => \Contador|cont[4]~17_combout\,
	cout => \Contador|cont[4]~18\);

-- Location: FF_X26_Y17_N9
\Contador|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|cont[4]~17_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	ena => \Contador|cont[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|cont\(4));

-- Location: LCCOMB_X26_Y17_N10
\Contador|cont[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[5]~19_combout\ = \Contador|cont\(5) $ (\Contador|cont[4]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(5),
	cin => \Contador|cont[4]~18\,
	combout => \Contador|cont[5]~19_combout\);

-- Location: FF_X26_Y17_N11
\Contador|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|cont[5]~19_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	ena => \Contador|cont[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|cont\(5));

-- Location: LCCOMB_X26_Y17_N12
\Contador|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~3_combout\ = (!\Contador|cont\(5) & !\Contador|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(5),
	datad => \Contador|cont\(1),
	combout => \Contador|contador~3_combout\);

-- Location: LCCOMB_X24_Y17_N0
\FSM|next_state.entrada_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_4~1_combout\ = (\entradas[4]~input_o\ & (\FSM|next_state.entrada_4~0_combout\ & \FSM|current_state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradas[4]~input_o\,
	datac => \FSM|next_state.entrada_4~0_combout\,
	datad => \FSM|current_state.ready~q\,
	combout => \FSM|next_state.entrada_4~1_combout\);

-- Location: FF_X24_Y17_N1
\FSM|current_state.entrada_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.entrada_4~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.entrada_4~q\);

-- Location: LCCOMB_X25_Y17_N10
\Contador|opcion[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|opcion\(4) = (!\FSM|current_state.ready~q\ & ((\FSM|current_state.entrada_4~q\) # (\Contador|opcion\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|current_state.entrada_4~q\,
	datab => \FSM|current_state.ready~q\,
	datad => \Contador|opcion\(4),
	combout => \Contador|opcion\(4));

-- Location: LCCOMB_X24_Y17_N28
\FSM|next_state.entrada_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_0~0_combout\ = (\entradas[0]~input_o\ & (!\entradas[3]~input_o\ & (\FSM|next_state.entrada_3~0_combout\ & !\entradas[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datab => \entradas[3]~input_o\,
	datac => \FSM|next_state.entrada_3~0_combout\,
	datad => \entradas[2]~input_o\,
	combout => \FSM|next_state.entrada_0~0_combout\);

-- Location: FF_X24_Y17_N29
\FSM|current_state.entrada_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.entrada_0~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.entrada_0~q\);

-- Location: LCCOMB_X25_Y17_N18
\Contador|opcion[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|opcion\(0) = (!\FSM|current_state.ready~q\ & ((\FSM|current_state.entrada_0~q\) # (\Contador|opcion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|current_state.ready~q\,
	datac => \FSM|current_state.entrada_0~q\,
	datad => \Contador|opcion\(0),
	combout => \Contador|opcion\(0));

-- Location: LCCOMB_X24_Y17_N6
\FSM|next_state.entrada_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_2~0_combout\ = (!\entradas[0]~input_o\ & (!\entradas[3]~input_o\ & (\FSM|next_state.entrada_3~0_combout\ & \entradas[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datab => \entradas[3]~input_o\,
	datac => \FSM|next_state.entrada_3~0_combout\,
	datad => \entradas[2]~input_o\,
	combout => \FSM|next_state.entrada_2~0_combout\);

-- Location: FF_X24_Y17_N7
\FSM|current_state.entrada_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.entrada_2~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.entrada_2~q\);

-- Location: LCCOMB_X24_Y18_N18
\Contador|opcion[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|opcion\(2) = (!\FSM|current_state.ready~q\ & ((\FSM|current_state.entrada_2~q\) # (\Contador|opcion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|current_state.entrada_2~q\,
	datab => \FSM|current_state.ready~q\,
	datad => \Contador|opcion\(2),
	combout => \Contador|opcion\(2));

-- Location: LCCOMB_X25_Y17_N20
\FSM|next_state.entrada_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_1~0_combout\ = (!\entradas[2]~input_o\ & (!\entradas[3]~input_o\ & (!\entradas[0]~input_o\ & \entradas[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[2]~input_o\,
	datab => \entradas[3]~input_o\,
	datac => \entradas[0]~input_o\,
	datad => \entradas[1]~input_o\,
	combout => \FSM|next_state.entrada_1~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\FSM|next_state.entrada_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_1~1_combout\ = (\FSM|current_state.ready~q\ & (!\entradas[4]~input_o\ & \FSM|next_state.entrada_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|current_state.ready~q\,
	datab => \entradas[4]~input_o\,
	datad => \FSM|next_state.entrada_1~0_combout\,
	combout => \FSM|next_state.entrada_1~1_combout\);

-- Location: FF_X24_Y17_N21
\FSM|current_state.entrada_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.entrada_1~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.entrada_1~q\);

-- Location: LCCOMB_X24_Y18_N28
\Contador|opcion[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|opcion\(1) = (!\FSM|current_state.ready~q\ & ((\FSM|current_state.entrada_1~q\) # (\Contador|opcion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|current_state.entrada_1~q\,
	datac => \FSM|current_state.ready~q\,
	datad => \Contador|opcion\(1),
	combout => \Contador|opcion\(1));

-- Location: LCCOMB_X24_Y18_N24
\Contador|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux0~0_combout\ = (!\Contador|opcion\(2) & !\Contador|opcion\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador|opcion\(2),
	datad => \Contador|opcion\(1),
	combout => \Contador|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y17_N0
\Contador|opcion[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|opcion\(3) = (!\FSM|current_state.ready~q\ & ((\FSM|current_state.entrada_3~q\) # (\Contador|opcion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|current_state.ready~q\,
	datac => \FSM|current_state.entrada_3~q\,
	datad => \Contador|opcion\(3),
	combout => \Contador|opcion\(3));

-- Location: LCCOMB_X25_Y17_N8
\Contador|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux1~0_combout\ = (!\Contador|opcion\(4) & (!\Contador|opcion\(0) & (\Contador|Mux0~0_combout\ & \Contador|opcion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|opcion\(4),
	datab => \Contador|opcion\(0),
	datac => \Contador|Mux0~0_combout\,
	datad => \Contador|opcion\(3),
	combout => \Contador|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\Contador|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux2~0_combout\ = (!\Contador|opcion\(4) & (!\Contador|opcion\(0) & !\Contador|opcion\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|opcion\(4),
	datab => \Contador|opcion\(0),
	datad => \Contador|opcion\(3),
	combout => \Contador|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Contador|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~0_combout\ = (\Contador|opcion\(1) $ (!\Contador|opcion\(2))) # (!\Contador|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~0_combout\,
	datab => \Contador|opcion\(1),
	datad => \Contador|opcion\(2),
	combout => \Contador|contador~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\Contador|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~7_combout\ = ((\Contador|opcion\(3)) # (\Contador|opcion\(4) $ (!\Contador|opcion\(0)))) # (!\Contador|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|opcion\(4),
	datab => \Contador|opcion\(0),
	datac => \Contador|Mux0~0_combout\,
	datad => \Contador|opcion\(3),
	combout => \Contador|contador~7_combout\);

-- Location: LCCOMB_X25_Y17_N26
\Contador|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~8_combout\ = (\Contador|contador~7_combout\ & ((\Contador|Mux1~0_combout\ & ((!\Contador|cont\(0)))) # (!\Contador|Mux1~0_combout\ & (!\Contador|contador~0_combout\ & \Contador|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux1~0_combout\,
	datab => \Contador|contador~0_combout\,
	datac => \Contador|cont\(0),
	datad => \Contador|contador~7_combout\,
	combout => \Contador|contador~8_combout\);

-- Location: LCCOMB_X25_Y17_N14
\Contador|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux0~1_combout\ = (\Contador|opcion\(4) & (!\Contador|opcion\(0) & (\Contador|Mux0~0_combout\ & !\Contador|opcion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|opcion\(4),
	datab => \Contador|opcion\(0),
	datac => \Contador|Mux0~0_combout\,
	datad => \Contador|opcion\(3),
	combout => \Contador|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y17_N16
\Contador|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux3~0_combout\ = (!\Contador|opcion\(4) & (!\Contador|opcion\(0) & (\Contador|opcion\(1) & !\Contador|opcion\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|opcion\(4),
	datab => \Contador|opcion\(0),
	datac => \Contador|opcion\(1),
	datad => \Contador|opcion\(3),
	combout => \Contador|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\Contador|cont[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[0]~6_combout\ = (!\Contador|Mux1~0_combout\ & (!\Contador|Mux0~1_combout\ & ((\Contador|opcion\(2)) # (!\Contador|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux1~0_combout\,
	datab => \Contador|Mux0~1_combout\,
	datac => \Contador|opcion\(2),
	datad => \Contador|Mux3~0_combout\,
	combout => \Contador|cont[0]~6_combout\);

-- Location: LCCOMB_X25_Y17_N4
\Contador|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux4~0_combout\ = (\Contador|opcion\(4)) # (((\Contador|opcion\(3)) # (!\Contador|Mux0~0_combout\)) # (!\Contador|opcion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|opcion\(4),
	datab => \Contador|opcion\(0),
	datac => \Contador|Mux0~0_combout\,
	datad => \Contador|opcion\(3),
	combout => \Contador|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\Contador|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux2~1_combout\ = (\Contador|Mux2~0_combout\ & (!\Contador|opcion\(1) & \Contador|opcion\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~0_combout\,
	datab => \Contador|opcion\(1),
	datad => \Contador|opcion\(2),
	combout => \Contador|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Contador|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~4_combout\ = (\Contador|cont\(3) & (\Contador|cont\(4) & (!\Contador|cont\(2) & \Contador|contador~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(3),
	datab => \Contador|cont\(4),
	datac => \Contador|cont\(2),
	datad => \Contador|contador~3_combout\,
	combout => \Contador|contador~4_combout\);

-- Location: LCCOMB_X26_Y17_N18
\Contador|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~2_combout\ = (\Contador|cont\(5) & (\Contador|cont\(1) & \Contador|contador~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(5),
	datac => \Contador|cont\(1),
	datad => \Contador|contador~1_combout\,
	combout => \Contador|contador~2_combout\);

-- Location: LCCOMB_X25_Y17_N2
\Contador|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~5_combout\ = (\Contador|Mux0~1_combout\ & ((\Contador|contador~2_combout\) # ((!\Contador|Mux4~0_combout\ & \Contador|contador~4_combout\)))) # (!\Contador|Mux0~1_combout\ & (!\Contador|Mux4~0_combout\ & 
-- (\Contador|contador~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux0~1_combout\,
	datab => \Contador|Mux4~0_combout\,
	datac => \Contador|contador~4_combout\,
	datad => \Contador|contador~2_combout\,
	combout => \Contador|contador~5_combout\);

-- Location: LCCOMB_X25_Y17_N6
\Contador|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~6_combout\ = (!\Contador|Mux1~0_combout\ & (\Contador|contador~0_combout\ & (!\Contador|cont\(0) & \Contador|contador~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux1~0_combout\,
	datab => \Contador|contador~0_combout\,
	datac => \Contador|cont\(0),
	datad => \Contador|contador~5_combout\,
	combout => \Contador|contador~6_combout\);

-- Location: LCCOMB_X25_Y17_N24
\Contador|cont[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[0]~13_combout\ = (\Contador|contador~6_combout\) # ((\Contador|cont[0]~6_combout\ & (\Contador|Mux4~0_combout\ & !\Contador|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont[0]~6_combout\,
	datab => \Contador|Mux4~0_combout\,
	datac => \Contador|Mux2~1_combout\,
	datad => \Contador|contador~6_combout\,
	combout => \Contador|cont[0]~13_combout\);

-- Location: LCCOMB_X26_Y17_N14
\Contador|cont[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[0]~14_combout\ = (!\Contador|cont[0]~13_combout\ & (((!\Contador|contador~8_combout\) # (!\Contador|contador~3_combout\)) # (!\Contador|contador~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contador~1_combout\,
	datab => \Contador|contador~3_combout\,
	datac => \Contador|contador~8_combout\,
	datad => \Contador|cont[0]~13_combout\,
	combout => \Contador|cont[0]~14_combout\);

-- Location: FF_X26_Y17_N1
\Contador|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|cont[0]~7_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	ena => \Contador|cont[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|cont\(0));

-- Location: LCCOMB_X26_Y17_N2
\Contador|cont[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[1]~9_combout\ = (\Contador|cont\(1) & (!\Contador|cont[0]~8\)) # (!\Contador|cont\(1) & ((\Contador|cont[0]~8\) # (GND)))
-- \Contador|cont[1]~10\ = CARRY((!\Contador|cont[0]~8\) # (!\Contador|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(1),
	datad => VCC,
	cin => \Contador|cont[0]~8\,
	combout => \Contador|cont[1]~9_combout\,
	cout => \Contador|cont[1]~10\);

-- Location: FF_X26_Y17_N3
\Contador|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|cont[1]~9_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	ena => \Contador|cont[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|cont\(1));

-- Location: LCCOMB_X26_Y17_N4
\Contador|cont[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|cont[2]~11_combout\ = (\Contador|cont\(2) & (\Contador|cont[1]~10\ $ (GND))) # (!\Contador|cont\(2) & (!\Contador|cont[1]~10\ & VCC))
-- \Contador|cont[2]~12\ = CARRY((\Contador|cont\(2) & !\Contador|cont[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(2),
	datad => VCC,
	cin => \Contador|cont[1]~10\,
	combout => \Contador|cont[2]~11_combout\,
	cout => \Contador|cont[2]~12\);

-- Location: FF_X26_Y17_N5
\Contador|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|cont[2]~11_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	ena => \Contador|cont[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|cont\(2));

-- Location: FF_X26_Y17_N7
\Contador|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|cont[3]~15_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	ena => \Contador|cont[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|cont\(3));

-- Location: LCCOMB_X26_Y17_N16
\Contador|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~1_combout\ = (!\Contador|cont\(3) & (\Contador|cont\(2) & !\Contador|cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(3),
	datac => \Contador|cont\(2),
	datad => \Contador|cont\(4),
	combout => \Contador|contador~1_combout\);

-- Location: LCCOMB_X24_Y17_N12
\Contador|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contador~9_combout\ = (\Contador|contador~6_combout\) # ((\Contador|contador~1_combout\ & (\Contador|contador~8_combout\ & \Contador|contador~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contador~1_combout\,
	datab => \Contador|contador~8_combout\,
	datac => \Contador|contador~3_combout\,
	datad => \Contador|contador~6_combout\,
	combout => \Contador|contador~9_combout\);

-- Location: FF_X24_Y17_N13
\Contador|contTosend_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contador~9_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contTosend_ready~q\);

-- Location: LCCOMB_X24_Y17_N10
\FSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector0~1_combout\ = (\FSM|Selector0~0_combout\) # (((\FSM|Selector1~1_combout\ & \Contador|contTosend_ready~q\)) # (!\FSM|current_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Selector0~0_combout\,
	datab => \FSM|current_state.idle~q\,
	datac => \FSM|Selector1~1_combout\,
	datad => \Contador|contTosend_ready~q\,
	combout => \FSM|Selector0~1_combout\);

-- Location: FF_X24_Y17_N11
\FSM|current_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Selector0~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.ready~q\);

-- Location: LCCOMB_X24_Y17_N30
\FSM|next_state.entrada_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_3~0_combout\ = (!\entradas[4]~input_o\ & (!\entradas[1]~input_o\ & \FSM|current_state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[4]~input_o\,
	datab => \entradas[1]~input_o\,
	datad => \FSM|current_state.ready~q\,
	combout => \FSM|next_state.entrada_3~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\FSM|next_state.entrada_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|next_state.entrada_3~1_combout\ = (!\entradas[0]~input_o\ & (\entradas[3]~input_o\ & (\FSM|next_state.entrada_3~0_combout\ & !\entradas[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datab => \entradas[3]~input_o\,
	datac => \FSM|next_state.entrada_3~0_combout\,
	datad => \entradas[2]~input_o\,
	combout => \FSM|next_state.entrada_3~1_combout\);

-- Location: FF_X24_Y17_N27
\FSM|current_state.entrada_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.entrada_3~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.entrada_3~q\);

-- Location: LCCOMB_X24_Y17_N4
\FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector1~0_combout\ = (\FSM|current_state.entrada_3~q\) # ((\FSM|current_state.entrada_0~q\) # ((\FSM|current_state.entrada_2~q\) # (\FSM|current_state.entrada_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|current_state.entrada_3~q\,
	datab => \FSM|current_state.entrada_0~q\,
	datac => \FSM|current_state.entrada_2~q\,
	datad => \FSM|current_state.entrada_1~q\,
	combout => \FSM|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\FSM|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM|Selector1~2_combout\ = (\FSM|Selector1~0_combout\) # ((\FSM|current_state.entrada_4~q\) # ((\FSM|Selector1~1_combout\ & !\Contador|contTosend_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|Selector1~0_combout\,
	datab => \FSM|current_state.entrada_4~q\,
	datac => \FSM|Selector1~1_combout\,
	datad => \Contador|contTosend_ready~q\,
	combout => \FSM|Selector1~2_combout\);

-- Location: FF_X24_Y17_N15
\FSM|current_state.contador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Selector1~2_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|current_state.contador~q\);

-- Location: CLKCTRL_G5
\FSM|current_state.contador~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM|current_state.contador~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM|current_state.contador~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y18_N26
\Contador|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux7~0_combout\ = (\Contador|cont\(0) & (((!\Contador|Mux2~1_combout\ & !\Contador|Mux4~0_combout\)) # (!\Contador|cont[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~1_combout\,
	datab => \Contador|cont[0]~6_combout\,
	datac => \Contador|cont\(0),
	datad => \Contador|Mux4~0_combout\,
	combout => \Contador|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Contador|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add1~0_combout\ = \Contador|cont\(0) $ (VCC)
-- \Contador|Add1~1\ = CARRY(\Contador|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(0),
	datad => VCC,
	combout => \Contador|Add1~0_combout\,
	cout => \Contador|Add1~1\);

-- Location: LCCOMB_X24_Y18_N20
\Contador|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux7~1_combout\ = (\Contador|Mux2~0_combout\ & (!\Contador|opcion\(1) & (\Contador|Add1~0_combout\ & \Contador|opcion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~0_combout\,
	datab => \Contador|opcion\(1),
	datac => \Contador|Add1~0_combout\,
	datad => \Contador|opcion\(2),
	combout => \Contador|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Contador|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Mux7~2_combout\ = (\Contador|contador~9_combout\) # ((!\Contador|Mux7~0_combout\ & ((!\Contador|Mux7~1_combout\) # (!\Contador|cont[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux7~0_combout\,
	datab => \Contador|cont[0]~6_combout\,
	datac => \Contador|Mux7~1_combout\,
	datad => \Contador|contador~9_combout\,
	combout => \Contador|Mux7~2_combout\);

-- Location: FF_X23_Y20_N1
\Contador|contToaddress_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|Mux7~2_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out\(0));

-- Location: LCCOMB_X24_Y17_N16
\Contador|contToaddress_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[0]~0_combout\ = (\Contador|Mux4~0_combout\ & (!\Contador|Mux2~1_combout\ & (\Contador|cont[0]~6_combout\ & !\Contador|contador~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux4~0_combout\,
	datab => \Contador|Mux2~1_combout\,
	datac => \Contador|cont[0]~6_combout\,
	datad => \Contador|contador~9_combout\,
	combout => \Contador|contToaddress_out[0]~0_combout\);

-- Location: FF_X24_Y17_N17
\Contador|contToaddress_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contToaddress_out[0]~0_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out[0]~en_q\);

-- Location: LCCOMB_X26_Y17_N20
\Contador|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add2~0_combout\ = \Contador|cont\(1) $ (VCC)
-- \Contador|Add2~1\ = CARRY(\Contador|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(1),
	datad => VCC,
	combout => \Contador|Add2~0_combout\,
	cout => \Contador|Add2~1\);

-- Location: LCCOMB_X25_Y18_N2
\Contador|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add1~2_combout\ = (\Contador|cont\(1) & (!\Contador|Add1~1\)) # (!\Contador|cont\(1) & ((\Contador|Add1~1\) # (GND)))
-- \Contador|Add1~3\ = CARRY((!\Contador|Add1~1\) # (!\Contador|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(1),
	datad => VCC,
	cin => \Contador|Add1~1\,
	combout => \Contador|Add1~2_combout\,
	cout => \Contador|Add1~3\);

-- Location: LCCOMB_X25_Y18_N12
\Contador|contToaddress_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[1]~1_combout\ = (!\Contador|Mux1~0_combout\ & ((\Contador|Mux2~1_combout\ & (\Contador|Add1~2_combout\)) # (!\Contador|Mux2~1_combout\ & ((\Contador|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~1_combout\,
	datab => \Contador|Add1~2_combout\,
	datac => \Contador|Mux1~0_combout\,
	datad => \Contador|cont\(1),
	combout => \Contador|contToaddress_out[1]~1_combout\);

-- Location: LCCOMB_X25_Y20_N0
\Contador|contToaddress_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[1]~2_combout\ = (!\Contador|contador~9_combout\ & (!\Contador|contToaddress_out[1]~1_combout\ & ((!\Contador|Add2~0_combout\) # (!\Contador|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux1~0_combout\,
	datab => \Contador|Add2~0_combout\,
	datac => \Contador|contador~9_combout\,
	datad => \Contador|contToaddress_out[1]~1_combout\,
	combout => \Contador|contToaddress_out[1]~2_combout\);

-- Location: FF_X25_Y20_N1
\Contador|contToaddress_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contToaddress_out[1]~2_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out\(1));

-- Location: LCCOMB_X26_Y17_N22
\Contador|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add2~2_combout\ = (\Contador|cont\(2) & (!\Contador|Add2~1\)) # (!\Contador|cont\(2) & ((\Contador|Add2~1\) # (GND)))
-- \Contador|Add2~3\ = CARRY((!\Contador|Add2~1\) # (!\Contador|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(2),
	datad => VCC,
	cin => \Contador|Add2~1\,
	combout => \Contador|Add2~2_combout\,
	cout => \Contador|Add2~3\);

-- Location: LCCOMB_X25_Y18_N4
\Contador|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add1~4_combout\ = (\Contador|cont\(2) & ((GND) # (!\Contador|Add1~3\))) # (!\Contador|cont\(2) & (\Contador|Add1~3\ $ (GND)))
-- \Contador|Add1~5\ = CARRY((\Contador|cont\(2)) # (!\Contador|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(2),
	datad => VCC,
	cin => \Contador|Add1~3\,
	combout => \Contador|Add1~4_combout\,
	cout => \Contador|Add1~5\);

-- Location: LCCOMB_X25_Y18_N30
\Contador|contToaddress_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[2]~3_combout\ = (!\Contador|Mux1~0_combout\ & ((\Contador|Mux2~1_combout\ & ((\Contador|Add1~4_combout\))) # (!\Contador|Mux2~1_combout\ & (\Contador|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~1_combout\,
	datab => \Contador|cont\(2),
	datac => \Contador|Add1~4_combout\,
	datad => \Contador|Mux1~0_combout\,
	combout => \Contador|contToaddress_out[2]~3_combout\);

-- Location: LCCOMB_X25_Y18_N28
\Contador|contToaddress_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[2]~4_combout\ = (!\Contador|contToaddress_out[2]~3_combout\ & (!\Contador|contador~9_combout\ & ((!\Contador|Add2~2_combout\) # (!\Contador|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux1~0_combout\,
	datab => \Contador|Add2~2_combout\,
	datac => \Contador|contToaddress_out[2]~3_combout\,
	datad => \Contador|contador~9_combout\,
	combout => \Contador|contToaddress_out[2]~4_combout\);

-- Location: FF_X25_Y18_N29
\Contador|contToaddress_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contToaddress_out[2]~4_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out\(2));

-- Location: LCCOMB_X24_Y18_N26
\Contador|contToaddress_out[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[4]~5_combout\ = (!\Contador|Mux1~0_combout\ & (((\Contador|opcion\(2)) # (!\Contador|opcion\(1))) # (!\Contador|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~0_combout\,
	datab => \Contador|opcion\(1),
	datac => \Contador|Mux1~0_combout\,
	datad => \Contador|opcion\(2),
	combout => \Contador|contToaddress_out[4]~5_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Contador|contToaddress_out[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[4]~6_combout\ = (\Contador|Mux2~0_combout\ & (!\Contador|Mux1~0_combout\ & (\Contador|opcion\(1) $ (\Contador|opcion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|Mux2~0_combout\,
	datab => \Contador|opcion\(1),
	datac => \Contador|Mux1~0_combout\,
	datad => \Contador|opcion\(2),
	combout => \Contador|contToaddress_out[4]~6_combout\);

-- Location: LCCOMB_X26_Y17_N24
\Contador|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add2~4_combout\ = (\Contador|cont\(3) & (\Contador|Add2~3\ $ (GND))) # (!\Contador|cont\(3) & (!\Contador|Add2~3\ & VCC))
-- \Contador|Add2~5\ = CARRY((\Contador|cont\(3) & !\Contador|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(3),
	datad => VCC,
	cin => \Contador|Add2~3\,
	combout => \Contador|Add2~4_combout\,
	cout => \Contador|Add2~5\);

-- Location: LCCOMB_X26_Y20_N24
\Contador|contToaddress_out[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[3]~10_combout\ = (!\Contador|contToaddress_out[4]~5_combout\ & ((\Contador|contToaddress_out[4]~6_combout\ & (!\Contador|cont\(3))) # (!\Contador|contToaddress_out[4]~6_combout\ & ((\Contador|Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(3),
	datab => \Contador|contToaddress_out[4]~5_combout\,
	datac => \Contador|contToaddress_out[4]~6_combout\,
	datad => \Contador|Add2~4_combout\,
	combout => \Contador|contToaddress_out[3]~10_combout\);

-- Location: LCCOMB_X25_Y18_N6
\Contador|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add1~6_combout\ = (\Contador|cont\(3) & (\Contador|Add1~5\ & VCC)) # (!\Contador|cont\(3) & (!\Contador|Add1~5\))
-- \Contador|Add1~7\ = CARRY((!\Contador|cont\(3) & !\Contador|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(3),
	datad => VCC,
	cin => \Contador|Add1~5\,
	combout => \Contador|Add1~6_combout\,
	cout => \Contador|Add1~7\);

-- Location: LCCOMB_X25_Y18_N16
\Contador|contToaddress_out[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[3]~11_combout\ = (\Contador|contToaddress_out[4]~5_combout\ & ((\Contador|contToaddress_out[4]~6_combout\ & ((\Contador|Add1~6_combout\))) # (!\Contador|contToaddress_out[4]~6_combout\ & (\Contador|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out[4]~5_combout\,
	datab => \Contador|cont\(3),
	datac => \Contador|contToaddress_out[4]~6_combout\,
	datad => \Contador|Add1~6_combout\,
	combout => \Contador|contToaddress_out[3]~11_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Contador|contToaddress_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[3]~12_combout\ = (\Contador|contador~9_combout\) # ((!\Contador|contToaddress_out[3]~10_combout\ & !\Contador|contToaddress_out[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador|contToaddress_out[3]~10_combout\,
	datac => \Contador|contador~9_combout\,
	datad => \Contador|contToaddress_out[3]~11_combout\,
	combout => \Contador|contToaddress_out[3]~12_combout\);

-- Location: FF_X25_Y20_N15
\Contador|contToaddress_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contToaddress_out[3]~12_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out\(3));

-- Location: LCCOMB_X25_Y18_N8
\Contador|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add1~8_combout\ = (\Contador|cont\(4) & ((GND) # (!\Contador|Add1~7\))) # (!\Contador|cont\(4) & (\Contador|Add1~7\ $ (GND)))
-- \Contador|Add1~9\ = CARRY((\Contador|cont\(4)) # (!\Contador|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(4),
	datad => VCC,
	cin => \Contador|Add1~7\,
	combout => \Contador|Add1~8_combout\,
	cout => \Contador|Add1~9\);

-- Location: LCCOMB_X26_Y17_N26
\Contador|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add2~6_combout\ = (\Contador|cont\(4) & (!\Contador|Add2~5\)) # (!\Contador|cont\(4) & ((\Contador|Add2~5\) # (GND)))
-- \Contador|Add2~7\ = CARRY((!\Contador|Add2~5\) # (!\Contador|cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(4),
	datad => VCC,
	cin => \Contador|Add2~5\,
	combout => \Contador|Add2~6_combout\,
	cout => \Contador|Add2~7\);

-- Location: LCCOMB_X25_Y18_N24
\Contador|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add0~0_combout\ = \Contador|cont\(4) $ (\Contador|cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(4),
	datac => \Contador|cont\(3),
	combout => \Contador|Add0~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\Contador|contToaddress_out[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[4]~7_combout\ = (\Contador|contToaddress_out[4]~5_combout\ & (\Contador|contToaddress_out[4]~6_combout\)) # (!\Contador|contToaddress_out[4]~5_combout\ & ((\Contador|contToaddress_out[4]~6_combout\ & 
-- ((!\Contador|Add0~0_combout\))) # (!\Contador|contToaddress_out[4]~6_combout\ & (\Contador|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out[4]~5_combout\,
	datab => \Contador|contToaddress_out[4]~6_combout\,
	datac => \Contador|Add2~6_combout\,
	datad => \Contador|Add0~0_combout\,
	combout => \Contador|contToaddress_out[4]~7_combout\);

-- Location: LCCOMB_X24_Y18_N22
\Contador|contToaddress_out[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[4]~8_combout\ = (\Contador|contToaddress_out[4]~5_combout\ & ((\Contador|contToaddress_out[4]~7_combout\ & ((\Contador|Add1~8_combout\))) # (!\Contador|contToaddress_out[4]~7_combout\ & (\Contador|cont\(4))))) # 
-- (!\Contador|contToaddress_out[4]~5_combout\ & (((\Contador|contToaddress_out[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(4),
	datab => \Contador|contToaddress_out[4]~5_combout\,
	datac => \Contador|Add1~8_combout\,
	datad => \Contador|contToaddress_out[4]~7_combout\,
	combout => \Contador|contToaddress_out[4]~8_combout\);

-- Location: LCCOMB_X24_Y18_N16
\Contador|contToaddress_out[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[4]~9_combout\ = (\Contador|contador~9_combout\) # (!\Contador|contToaddress_out[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Contador|contToaddress_out[4]~8_combout\,
	datad => \Contador|contador~9_combout\,
	combout => \Contador|contToaddress_out[4]~9_combout\);

-- Location: FF_X24_Y18_N17
\Contador|contToaddress_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contToaddress_out[4]~9_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out\(4));

-- Location: LCCOMB_X26_Y17_N28
\Contador|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add2~8_combout\ = \Contador|cont\(5) $ (\Contador|Add2~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador|cont\(5),
	cin => \Contador|Add2~7\,
	combout => \Contador|Add2~8_combout\);

-- Location: LCCOMB_X25_Y20_N30
\Contador|contToaddress_out[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[5]~13_combout\ = (\Contador|contToaddress_out[4]~6_combout\ & ((\Contador|cont\(3)) # ((\Contador|cont\(4))))) # (!\Contador|contToaddress_out[4]~6_combout\ & (((\Contador|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(3),
	datab => \Contador|cont\(4),
	datac => \Contador|contToaddress_out[4]~6_combout\,
	datad => \Contador|Add2~8_combout\,
	combout => \Contador|contToaddress_out[5]~13_combout\);

-- Location: LCCOMB_X25_Y18_N10
\Contador|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|Add1~10_combout\ = \Contador|Add1~9\ $ (\Contador|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Contador|cont\(5),
	cin => \Contador|Add1~9\,
	combout => \Contador|Add1~10_combout\);

-- Location: LCCOMB_X25_Y18_N14
\Contador|contToaddress_out[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[5]~14_combout\ = (\Contador|contToaddress_out[4]~6_combout\ & ((\Contador|contToaddress_out[4]~5_combout\ & ((\Contador|Add1~10_combout\))) # (!\Contador|contToaddress_out[4]~5_combout\ & (\Contador|cont\(5))))) # 
-- (!\Contador|contToaddress_out[4]~6_combout\ & (\Contador|cont\(5) & (\Contador|contToaddress_out[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|cont\(5),
	datab => \Contador|contToaddress_out[4]~6_combout\,
	datac => \Contador|contToaddress_out[4]~5_combout\,
	datad => \Contador|Add1~10_combout\,
	combout => \Contador|contToaddress_out[5]~14_combout\);

-- Location: LCCOMB_X25_Y20_N12
\Contador|contToaddress_out[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Contador|contToaddress_out[5]~15_combout\ = (!\Contador|contador~9_combout\ & (\Contador|contToaddress_out[5]~14_combout\ $ (((\Contador|contToaddress_out[4]~5_combout\) # (!\Contador|contToaddress_out[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out[5]~13_combout\,
	datab => \Contador|contToaddress_out[4]~5_combout\,
	datac => \Contador|contador~9_combout\,
	datad => \Contador|contToaddress_out[5]~14_combout\,
	combout => \Contador|contToaddress_out[5]~15_combout\);

-- Location: FF_X25_Y20_N13
\Contador|contToaddress_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.contador~clkctrl_outclk\,
	d => \Contador|contToaddress_out[5]~15_combout\,
	clrn => \FSM|ALT_INV_current_state.ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|contToaddress_out\(5));

-- Location: CLKCTRL_G6
\FSM|current_state.memoria~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM|current_state.memoria~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM|current_state.memoria~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y20_N22
\Memoria|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~7_combout\ = (\Contador|contToaddress_out\(0) & (\Contador|contToaddress_out\(1) $ (((\Contador|contToaddress_out\(2)))))) # (!\Contador|contToaddress_out\(0) & (!\Contador|contToaddress_out\(1) & (\Contador|contToaddress_out\(4) $ 
-- (\Contador|contToaddress_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(4),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux4~7_combout\);

-- Location: LCCOMB_X24_Y20_N8
\Memoria|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~8_combout\ = (\Contador|contToaddress_out\(0) & ((\Contador|contToaddress_out\(1) $ (!\Contador|contToaddress_out\(2))) # (!\Contador|contToaddress_out\(4)))) # (!\Contador|contToaddress_out\(0) & (!\Contador|contToaddress_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(4),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux4~8_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Memoria|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~5_combout\ = (\Contador|contToaddress_out\(4) & ((\Contador|contToaddress_out\(0)) # ((\Contador|contToaddress_out\(1) & \Contador|contToaddress_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(4),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux4~5_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Memoria|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~11_combout\ = (\Contador|contToaddress_out\(3) & ((\Contador|contToaddress_out\(5) & (\Memoria|Mux4~8_combout\)) # (!\Contador|contToaddress_out\(5) & ((\Memoria|Mux4~5_combout\))))) # (!\Contador|contToaddress_out\(3) & 
-- (\Contador|contToaddress_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(5),
	datac => \Memoria|Mux4~8_combout\,
	datad => \Memoria|Mux4~5_combout\,
	combout => \Memoria|Mux4~11_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Memoria|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux4~12_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & (\Memoria|Mux4~11_combout\ & ((\Contador|contToaddress_out\(3)) # (\Memoria|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out[0]~en_q\,
	datac => \Memoria|Mux4~7_combout\,
	datad => \Memoria|Mux4~11_combout\,
	combout => \Memoria|Mux4~12_combout\);

-- Location: LCCOMB_X24_Y20_N26
\Memoria|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~8_combout\ = (\Contador|contToaddress_out\(3) & (\Contador|contToaddress_out\(1) $ (((\Contador|contToaddress_out\(2)) # (!\Contador|contToaddress_out\(0)))))) # (!\Contador|contToaddress_out\(3) & ((\Contador|contToaddress_out\(2) & 
-- (\Contador|contToaddress_out\(0))) # (!\Contador|contToaddress_out\(2) & ((!\Contador|contToaddress_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(3),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux5~8_combout\);

-- Location: LCCOMB_X24_Y20_N2
\Memoria|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~5_combout\ = (\Contador|contToaddress_out\(3) & (\Contador|contToaddress_out\(0) $ (((\Contador|contToaddress_out\(1) & \Contador|contToaddress_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(3),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux5~5_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Memoria|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~11_combout\ = (\Contador|contToaddress_out\(4) & ((\Contador|contToaddress_out\(5) & (\Memoria|Mux5~8_combout\)) # (!\Contador|contToaddress_out\(5) & ((\Memoria|Mux5~5_combout\))))) # (!\Contador|contToaddress_out\(4) & 
-- (\Contador|contToaddress_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(4),
	datab => \Contador|contToaddress_out\(5),
	datac => \Memoria|Mux5~8_combout\,
	datad => \Memoria|Mux5~5_combout\,
	combout => \Memoria|Mux5~11_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Memoria|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~7_combout\ = (\Contador|contToaddress_out\(0) & (\Contador|contToaddress_out\(1) & (!\Contador|contToaddress_out\(3)))) # (!\Contador|contToaddress_out\(0) & (!\Contador|contToaddress_out\(1) & ((!\Contador|contToaddress_out\(2)) # 
-- (!\Contador|contToaddress_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(3),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux5~7_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Memoria|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux5~12_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & (\Memoria|Mux5~11_combout\ & ((\Contador|contToaddress_out\(4)) # (\Memoria|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(4),
	datab => \Contador|contToaddress_out[0]~en_q\,
	datac => \Memoria|Mux5~11_combout\,
	datad => \Memoria|Mux5~7_combout\,
	combout => \Memoria|Mux5~12_combout\);

-- Location: LCCOMB_X25_Y20_N2
\Memoria|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~7_combout\ = (\Contador|contToaddress_out\(1) & ((\Contador|contToaddress_out\(4)) # (\Contador|contToaddress_out\(0) $ (\Contador|contToaddress_out\(2))))) # (!\Contador|contToaddress_out\(1) & (((\Contador|contToaddress_out\(2)) # 
-- (!\Contador|contToaddress_out\(0))) # (!\Contador|contToaddress_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(1),
	datab => \Contador|contToaddress_out\(4),
	datac => \Contador|contToaddress_out\(0),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux1~7_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Memoria|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~8_combout\ = (((!\Contador|contToaddress_out\(4)) # (!\Contador|contToaddress_out\(2))) # (!\Contador|contToaddress_out\(0))) # (!\Contador|contToaddress_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(1),
	datab => \Contador|contToaddress_out\(0),
	datac => \Contador|contToaddress_out\(2),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux1~8_combout\);

-- Location: LCCOMB_X25_Y20_N16
\Memoria|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~5_combout\ = (\Contador|contToaddress_out\(4) & ((\Contador|contToaddress_out\(1) & ((\Contador|contToaddress_out\(2)))) # (!\Contador|contToaddress_out\(1) & (\Contador|contToaddress_out\(0) & !\Contador|contToaddress_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(1),
	datab => \Contador|contToaddress_out\(0),
	datac => \Contador|contToaddress_out\(2),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux1~5_combout\);

-- Location: LCCOMB_X25_Y20_N20
\Memoria|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~11_combout\ = (\Contador|contToaddress_out\(3) & ((\Contador|contToaddress_out\(5) & (\Memoria|Mux1~8_combout\)) # (!\Contador|contToaddress_out\(5) & ((\Memoria|Mux1~5_combout\))))) # (!\Contador|contToaddress_out\(3) & 
-- (\Contador|contToaddress_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(5),
	datac => \Memoria|Mux1~8_combout\,
	datad => \Memoria|Mux1~5_combout\,
	combout => \Memoria|Mux1~11_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Memoria|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux1~12_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & (\Memoria|Mux1~11_combout\ & ((\Contador|contToaddress_out\(3)) # (\Memoria|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Memoria|Mux1~7_combout\,
	datac => \Contador|contToaddress_out[0]~en_q\,
	datad => \Memoria|Mux1~11_combout\,
	combout => \Memoria|Mux1~12_combout\);

-- Location: LCCOMB_X23_Y20_N30
\Memoria|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~5_combout\ = (\Contador|contToaddress_out\(3) & (\Contador|contToaddress_out\(0) & ((\Contador|contToaddress_out\(1)) # (\Contador|contToaddress_out\(4))))) # (!\Contador|contToaddress_out\(3) & (\Contador|contToaddress_out\(1) & 
-- (\Contador|contToaddress_out\(0) $ (!\Contador|contToaddress_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(0),
	datac => \Contador|contToaddress_out\(1),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux2~5_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Memoria|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~8_combout\ = (\Contador|contToaddress_out\(1) & ((\Contador|contToaddress_out\(3) & (!\Contador|contToaddress_out\(0) & !\Contador|contToaddress_out\(4))) # (!\Contador|contToaddress_out\(3) & (\Contador|contToaddress_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(0),
	datac => \Contador|contToaddress_out\(1),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux2~8_combout\);

-- Location: LCCOMB_X23_Y20_N8
\Memoria|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~11_combout\ = (\Contador|contToaddress_out\(5) & ((\Contador|contToaddress_out\(2) & ((\Memoria|Mux2~8_combout\))) # (!\Contador|contToaddress_out\(2) & (\Memoria|Mux2~5_combout\)))) # (!\Contador|contToaddress_out\(5) & 
-- (\Contador|contToaddress_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(2),
	datac => \Memoria|Mux2~5_combout\,
	datad => \Memoria|Mux2~8_combout\,
	combout => \Memoria|Mux2~11_combout\);

-- Location: LCCOMB_X24_Y20_N16
\Memoria|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~7_combout\ = (!\Contador|contToaddress_out\(0) & (!\Contador|contToaddress_out\(1) & (\Contador|contToaddress_out\(4) & \Contador|contToaddress_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(4),
	datad => \Contador|contToaddress_out\(3),
	combout => \Memoria|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Memoria|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux2~12_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & (\Memoria|Mux2~11_combout\ & ((\Contador|contToaddress_out\(5)) # (\Memoria|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out[0]~en_q\,
	datac => \Memoria|Mux2~11_combout\,
	datad => \Memoria|Mux2~7_combout\,
	combout => \Memoria|Mux2~12_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Memoria|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux6~12_combout\ = (\Contador|contToaddress_out\(1) & ((\Contador|contToaddress_out\(2) & ((!\Contador|contToaddress_out\(4)))) # (!\Contador|contToaddress_out\(2) & (\Contador|contToaddress_out\(3) & \Contador|contToaddress_out\(4))))) # 
-- (!\Contador|contToaddress_out\(1) & (!\Contador|contToaddress_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(2),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux6~12_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Memoria|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux6~13_combout\ = (\Memoria|Mux6~12_combout\ & (\Contador|contToaddress_out\(5) $ (((\Contador|contToaddress_out\(4) & \Contador|contToaddress_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(4),
	datac => \Contador|contToaddress_out\(3),
	datad => \Memoria|Mux6~12_combout\,
	combout => \Memoria|Mux6~13_combout\);

-- Location: LCCOMB_X24_Y20_N10
\Memoria|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux6~14_combout\ = (\Contador|contToaddress_out\(3) & ((\Contador|contToaddress_out\(1) & ((\Contador|contToaddress_out\(4)) # (!\Contador|contToaddress_out\(2)))) # (!\Contador|contToaddress_out\(1) & (!\Contador|contToaddress_out\(4))))) # 
-- (!\Contador|contToaddress_out\(3) & (\Contador|contToaddress_out\(2) $ (((!\Contador|contToaddress_out\(1) & \Contador|contToaddress_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(4),
	datad => \Contador|contToaddress_out\(2),
	combout => \Memoria|Mux6~14_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Memoria|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux6~15_combout\ = (\Contador|contToaddress_out\(5) & ((\Memoria|Mux6~14_combout\) # ((\Contador|contToaddress_out\(3) & \Contador|contToaddress_out\(4))))) # (!\Contador|contToaddress_out\(5) & (\Contador|contToaddress_out\(3) & 
-- (\Contador|contToaddress_out\(4) & \Memoria|Mux6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(3),
	datab => \Contador|contToaddress_out\(5),
	datac => \Contador|contToaddress_out\(4),
	datad => \Memoria|Mux6~14_combout\,
	combout => \Memoria|Mux6~15_combout\);

-- Location: LCCOMB_X23_Y20_N20
\Memoria|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux6~11_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & ((\Contador|contToaddress_out\(0) & (\Memoria|Mux6~13_combout\)) # (!\Contador|contToaddress_out\(0) & ((\Memoria|Mux6~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out[0]~en_q\,
	datac => \Memoria|Mux6~13_combout\,
	datad => \Memoria|Mux6~15_combout\,
	combout => \Memoria|Mux6~11_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Memoria|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux0~2_combout\ = (\Contador|contToaddress_out\(2) & (!\Contador|contToaddress_out\(0) & (!\Contador|contToaddress_out\(1) & \Contador|contToaddress_out\(5)))) # (!\Contador|contToaddress_out\(2) & ((\Contador|contToaddress_out\(1) $ 
-- (!\Contador|contToaddress_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(2),
	datad => \Contador|contToaddress_out\(5),
	combout => \Memoria|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Memoria|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux0~3_combout\ = (\Contador|contToaddress_out\(5) & (((\Contador|contToaddress_out\(3)) # (!\Memoria|Mux0~2_combout\)) # (!\Contador|contToaddress_out\(4)))) # (!\Contador|contToaddress_out\(5) & (\Contador|contToaddress_out\(4) & 
-- (\Contador|contToaddress_out\(3) & !\Memoria|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(4),
	datac => \Contador|contToaddress_out\(3),
	datad => \Memoria|Mux0~2_combout\,
	combout => \Memoria|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y20_N22
\Memoria|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux0~4_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & (\Memoria|Mux0~3_combout\ & ((\Contador|contToaddress_out\(5)) # (!\Memoria|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out[0]~en_q\,
	datac => \Memoria|Mux0~3_combout\,
	datad => \Memoria|Mux0~2_combout\,
	combout => \Memoria|Mux0~4_combout\);

-- Location: LCCOMB_X25_Y20_N8
\Memoria|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~10_combout\ = (\Contador|contToaddress_out\(3) & ((\Contador|contToaddress_out\(4) & ((\Contador|contToaddress_out\(1)))) # (!\Contador|contToaddress_out\(4) & (\Contador|contToaddress_out\(5))))) # (!\Contador|contToaddress_out\(3) & 
-- (\Contador|contToaddress_out\(5) & (!\Contador|contToaddress_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(3),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux3~10_combout\);

-- Location: LCCOMB_X25_Y20_N6
\Memoria|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~9_combout\ = (\Contador|contToaddress_out\(5) & (\Contador|contToaddress_out\(3) $ (((\Contador|contToaddress_out\(1)) # (!\Contador|contToaddress_out\(4)))))) # (!\Contador|contToaddress_out\(5) & (\Contador|contToaddress_out\(1) & 
-- (\Contador|contToaddress_out\(3) & \Contador|contToaddress_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(3),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux3~9_combout\);

-- Location: LCCOMB_X25_Y20_N26
\Memoria|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~8_combout\ = (\Contador|contToaddress_out\(0) & (\Memoria|Mux3~10_combout\)) # (!\Contador|contToaddress_out\(0) & ((\Memoria|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(0),
	datab => \Memoria|Mux3~10_combout\,
	datad => \Memoria|Mux3~9_combout\,
	combout => \Memoria|Mux3~8_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Memoria|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~14_combout\ = (\Contador|contToaddress_out\(5) & (\Contador|contToaddress_out\(1) $ (((\Contador|contToaddress_out\(3)) # (\Contador|contToaddress_out\(4)))))) # (!\Contador|contToaddress_out\(5) & (!\Contador|contToaddress_out\(1) & 
-- (\Contador|contToaddress_out\(3) & \Contador|contToaddress_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(3),
	datad => \Contador|contToaddress_out\(4),
	combout => \Memoria|Mux3~14_combout\);

-- Location: LCCOMB_X25_Y20_N18
\Memoria|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~15_combout\ = (\Memoria|Mux3~14_combout\ & ((\Contador|contToaddress_out\(5) & (\Contador|contToaddress_out\(1) $ (!\Contador|contToaddress_out\(0)))) # (!\Contador|contToaddress_out\(5) & (!\Contador|contToaddress_out\(1) & 
-- \Contador|contToaddress_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out\(5),
	datab => \Contador|contToaddress_out\(1),
	datac => \Contador|contToaddress_out\(0),
	datad => \Memoria|Mux3~14_combout\,
	combout => \Memoria|Mux3~15_combout\);

-- Location: LCCOMB_X25_Y20_N10
\Memoria|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|Mux3~13_combout\ = (!\Contador|contToaddress_out[0]~en_q\ & ((\Contador|contToaddress_out\(2) & (\Memoria|Mux3~8_combout\)) # (!\Contador|contToaddress_out\(2) & ((\Memoria|Mux3~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|contToaddress_out[0]~en_q\,
	datab => \Contador|contToaddress_out\(2),
	datac => \Memoria|Mux3~8_combout\,
	datad => \Memoria|Mux3~15_combout\,
	combout => \Memoria|Mux3~13_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Memoria|bit_test~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|bit_test~0_combout\ = \Memoria|Mux2~12_combout\ $ (\Memoria|Mux6~11_combout\ $ (\Memoria|Mux0~4_combout\ $ (\Memoria|Mux3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memoria|Mux2~12_combout\,
	datab => \Memoria|Mux6~11_combout\,
	datac => \Memoria|Mux0~4_combout\,
	datad => \Memoria|Mux3~13_combout\,
	combout => \Memoria|bit_test~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\Memoria|bit_test~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|bit_test~1_combout\ = \Memoria|Mux4~12_combout\ $ (\Memoria|Mux5~12_combout\ $ (\Memoria|Mux1~12_combout\ $ (!\Memoria|bit_test~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memoria|Mux4~12_combout\,
	datab => \Memoria|Mux5~12_combout\,
	datac => \Memoria|Mux1~12_combout\,
	datad => \Memoria|bit_test~0_combout\,
	combout => \Memoria|bit_test~1_combout\);

-- Location: FF_X23_Y20_N25
\Memoria|dato_ok[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|bit_test~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(1));

-- Location: LCCOMB_X23_Y20_N6
\Memoria|dato_ok[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|dato_ok[2]~feeder_combout\ = \Memoria|Mux6~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memoria|Mux6~11_combout\,
	combout => \Memoria|dato_ok[2]~feeder_combout\);

-- Location: FF_X23_Y20_N7
\Memoria|dato_ok[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|dato_ok[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(2));

-- Location: LCCOMB_X24_Y20_N0
\Memoria|dato_ok[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|dato_ok[3]~feeder_combout\ = \Memoria|Mux5~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memoria|Mux5~12_combout\,
	combout => \Memoria|dato_ok[3]~feeder_combout\);

-- Location: FF_X24_Y20_N1
\Memoria|dato_ok[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|dato_ok[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(3));

-- Location: LCCOMB_X24_Y20_N6
\Memoria|dato_ok[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|dato_ok[4]~feeder_combout\ = \Memoria|Mux4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memoria|Mux4~12_combout\,
	combout => \Memoria|dato_ok[4]~feeder_combout\);

-- Location: FF_X24_Y20_N7
\Memoria|dato_ok[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|dato_ok[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(4));

-- Location: LCCOMB_X25_Y20_N28
\Memoria|dato_ok[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|dato_ok[5]~feeder_combout\ = \Memoria|Mux3~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memoria|Mux3~13_combout\,
	combout => \Memoria|dato_ok[5]~feeder_combout\);

-- Location: FF_X25_Y20_N29
\Memoria|dato_ok[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|dato_ok[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(5));

-- Location: LCCOMB_X23_Y20_N16
\Memoria|dato_ok[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|dato_ok[6]~feeder_combout\ = \Memoria|Mux2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memoria|Mux2~12_combout\,
	combout => \Memoria|dato_ok[6]~feeder_combout\);

-- Location: FF_X23_Y20_N17
\Memoria|dato_ok[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|dato_ok[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(6));

-- Location: FF_X25_Y20_N27
\Memoria|dato_ok[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	asdata => \Memoria|Mux1~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(7));

-- Location: LCCOMB_X23_Y20_N26
\Memoria|dato_ok[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Memoria|dato_ok[8]~feeder_combout\ = \Memoria|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|Mux0~4_combout\,
	combout => \Memoria|dato_ok[8]~feeder_combout\);

-- Location: FF_X23_Y20_N27
\Memoria|dato_ok[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FSM|current_state.memoria~clkctrl_outclk\,
	d => \Memoria|dato_ok[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memoria|dato_ok\(8));

ww_datos_out(0) <= \datos_out[0]~output_o\;

ww_datos_out(1) <= \datos_out[1]~output_o\;

ww_datos_out(2) <= \datos_out[2]~output_o\;

ww_datos_out(3) <= \datos_out[3]~output_o\;

ww_datos_out(4) <= \datos_out[4]~output_o\;

ww_datos_out(5) <= \datos_out[5]~output_o\;

ww_datos_out(6) <= \datos_out[6]~output_o\;

ww_datos_out(7) <= \datos_out[7]~output_o\;

ww_datos_out(8) <= \datos_out[8]~output_o\;

ww_datos_out(9) <= \datos_out[9]~output_o\;

ww_datos_out(10) <= \datos_out[10]~output_o\;

ww_preset <= \preset~output_o\;

ww_tri_state <= \tri_state~output_o\;

ww_enviado_cont <= \enviado_cont~output_o\;

ww_enviar <= \enviar~output_o\;

ww_direccion(0) <= \direccion[0]~output_o\;

ww_direccion(1) <= \direccion[1]~output_o\;

ww_direccion(2) <= \direccion[2]~output_o\;

ww_direccion(3) <= \direccion[3]~output_o\;

ww_direccion(4) <= \direccion[4]~output_o\;

ww_direccion(5) <= \direccion[5]~output_o\;
END structure;


