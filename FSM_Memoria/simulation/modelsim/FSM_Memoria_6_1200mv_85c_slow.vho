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

-- DATE "05/07/2020 19:25:02"

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

ENTITY 	FSM_Memoria IS
    PORT (
	botones : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	send_MEF1 : IN std_logic;
	send_OK : IN std_logic;
	reset_low : IN std_logic;
	opciones : BUFFER std_logic_vector(4 DOWNTO 0);
	clk_cont : BUFFER std_logic;
	clk_mem : BUFFER std_logic;
	start_tx : BUFFER std_logic;
	reset_cont : BUFFER std_logic;
	preset : BUFFER std_logic;
	tri_state : BUFFER std_logic
	);
END FSM_Memoria;

-- Design Ports Information
-- opciones[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opciones[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opciones[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opciones[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opciones[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_cont	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_mem	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_tx	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_cont	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tri_state	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[1]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_low	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send_OK	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send_MEF1	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM_Memoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_botones : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_send_MEF1 : std_logic;
SIGNAL ww_send_OK : std_logic;
SIGNAL ww_reset_low : std_logic;
SIGNAL ww_opciones : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk_cont : std_logic;
SIGNAL ww_clk_mem : std_logic;
SIGNAL ww_start_tx : std_logic;
SIGNAL ww_reset_cont : std_logic;
SIGNAL ww_preset : std_logic;
SIGNAL ww_tri_state : std_logic;
SIGNAL \reset_low~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \opciones[0]~output_o\ : std_logic;
SIGNAL \opciones[1]~output_o\ : std_logic;
SIGNAL \opciones[2]~output_o\ : std_logic;
SIGNAL \opciones[3]~output_o\ : std_logic;
SIGNAL \opciones[4]~output_o\ : std_logic;
SIGNAL \clk_cont~output_o\ : std_logic;
SIGNAL \clk_mem~output_o\ : std_logic;
SIGNAL \start_tx~output_o\ : std_logic;
SIGNAL \reset_cont~output_o\ : std_logic;
SIGNAL \preset~output_o\ : std_logic;
SIGNAL \tri_state~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones[4]~input_o\ : std_logic;
SIGNAL \botones[0]~input_o\ : std_logic;
SIGNAL \botones[1]~input_o\ : std_logic;
SIGNAL \botones[2]~input_o\ : std_logic;
SIGNAL \botones[3]~input_o\ : std_logic;
SIGNAL \next_state.entrada_4~0_combout\ : std_logic;
SIGNAL \send_OK~input_o\ : std_logic;
SIGNAL \send_MEF1~input_o\ : std_logic;
SIGNAL \next_state.entrada_3~0_combout\ : std_logic;
SIGNAL \next_state.entrada_3~1_combout\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \reset_low~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.entrada_3~q\ : std_logic;
SIGNAL \next_state.entrada_2~0_combout\ : std_logic;
SIGNAL \current_state.entrada_2~q\ : std_logic;
SIGNAL \next_state.entrada_4~1_combout\ : std_logic;
SIGNAL \current_state.entrada_4~q\ : std_logic;
SIGNAL \next_state.entrada_1~0_combout\ : std_logic;
SIGNAL \current_state.entrada_1~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \current_state.contador~q\ : std_logic;
SIGNAL \current_state.memoria~feeder_combout\ : std_logic;
SIGNAL \current_state.memoria~q\ : std_logic;
SIGNAL \current_state.start~feeder_combout\ : std_logic;
SIGNAL \current_state.start~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.espera~q\ : std_logic;
SIGNAL \next_state.espera_OK~0_combout\ : std_logic;
SIGNAL \current_state.espera_OK~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \current_state.idle~feeder_combout\ : std_logic;
SIGNAL \current_state.idle~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \current_state.ready~q\ : std_logic;
SIGNAL \next_state.entrada_0~0_combout\ : std_logic;
SIGNAL \current_state.entrada_0~q\ : std_logic;
SIGNAL \ALT_INV_current_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_current_state.ready~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_botones <= botones;
ww_clk <= clk;
ww_send_MEF1 <= send_MEF1;
ww_send_OK <= send_OK;
ww_reset_low <= reset_low;
opciones <= ww_opciones;
clk_cont <= ww_clk_cont;
clk_mem <= ww_clk_mem;
start_tx <= ww_start_tx;
reset_cont <= ww_reset_cont;
preset <= ww_preset;
tri_state <= ww_tri_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_low~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_low~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_current_state.idle~q\ <= NOT \current_state.idle~q\;
\ALT_INV_current_state.ready~q\ <= NOT \current_state.ready~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N16
\opciones[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.entrada_0~q\,
	devoe => ww_devoe,
	o => \opciones[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\opciones[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.entrada_1~q\,
	devoe => ww_devoe,
	o => \opciones[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\opciones[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.entrada_2~q\,
	devoe => ww_devoe,
	o => \opciones[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\opciones[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.entrada_3~q\,
	devoe => ww_devoe,
	o => \opciones[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\opciones[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.entrada_4~q\,
	devoe => ww_devoe,
	o => \opciones[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\clk_cont~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.contador~q\,
	devoe => ww_devoe,
	o => \clk_cont~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\clk_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.memoria~q\,
	devoe => ww_devoe,
	o => \clk_mem~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\start_tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.start~q\,
	devoe => ww_devoe,
	o => \start_tx~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\reset_cont~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.ready~q\,
	devoe => ww_devoe,
	o => \reset_cont~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\preset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.idle~q\,
	devoe => ww_devoe,
	o => \preset~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\tri_state~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.idle~q\,
	devoe => ww_devoe,
	o => \tri_state~output_o\);

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

-- Location: IOIBUF_X7_Y24_N8
\botones[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(4),
	o => \botones[4]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\botones[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(0),
	o => \botones[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\botones[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(1),
	o => \botones[1]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\botones[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(2),
	o => \botones[2]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\botones[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(3),
	o => \botones[3]~input_o\);

-- Location: LCCOMB_X6_Y20_N28
\next_state.entrada_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_4~0_combout\ = (!\botones[1]~input_o\ & (!\botones[2]~input_o\ & !\botones[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \botones[2]~input_o\,
	datac => \botones[3]~input_o\,
	combout => \next_state.entrada_4~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\send_OK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_send_OK,
	o => \send_OK~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\send_MEF1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_send_MEF1,
	o => \send_MEF1~input_o\);

-- Location: LCCOMB_X6_Y20_N10
\next_state.entrada_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_3~0_combout\ = (!\botones[4]~input_o\ & (!\botones[0]~input_o\ & \current_state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[4]~input_o\,
	datac => \botones[0]~input_o\,
	datad => \current_state.ready~q\,
	combout => \next_state.entrada_3~0_combout\);

-- Location: LCCOMB_X6_Y20_N2
\next_state.entrada_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_3~1_combout\ = (!\botones[1]~input_o\ & (!\botones[2]~input_o\ & (\botones[3]~input_o\ & \next_state.entrada_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \botones[2]~input_o\,
	datac => \botones[3]~input_o\,
	datad => \next_state.entrada_3~0_combout\,
	combout => \next_state.entrada_3~1_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X6_Y20_N3
\current_state.entrada_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.entrada_3~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.entrada_3~q\);

-- Location: LCCOMB_X6_Y20_N0
\next_state.entrada_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_2~0_combout\ = (!\botones[1]~input_o\ & (\botones[2]~input_o\ & (!\botones[3]~input_o\ & \next_state.entrada_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \botones[2]~input_o\,
	datac => \botones[3]~input_o\,
	datad => \next_state.entrada_3~0_combout\,
	combout => \next_state.entrada_2~0_combout\);

-- Location: FF_X6_Y20_N1
\current_state.entrada_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.entrada_2~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.entrada_2~q\);

-- Location: LCCOMB_X6_Y20_N16
\next_state.entrada_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_4~1_combout\ = (\botones[4]~input_o\ & (!\botones[0]~input_o\ & (\next_state.entrada_4~0_combout\ & \current_state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[4]~input_o\,
	datab => \botones[0]~input_o\,
	datac => \next_state.entrada_4~0_combout\,
	datad => \current_state.ready~q\,
	combout => \next_state.entrada_4~1_combout\);

-- Location: FF_X6_Y20_N17
\current_state.entrada_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.entrada_4~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.entrada_4~q\);

-- Location: LCCOMB_X6_Y20_N30
\next_state.entrada_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_1~0_combout\ = (\botones[1]~input_o\ & (!\botones[2]~input_o\ & (!\botones[3]~input_o\ & \next_state.entrada_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \botones[2]~input_o\,
	datac => \botones[3]~input_o\,
	datad => \next_state.entrada_3~0_combout\,
	combout => \next_state.entrada_1~0_combout\);

-- Location: FF_X6_Y20_N31
\current_state.entrada_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.entrada_1~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.entrada_1~q\);

-- Location: LCCOMB_X6_Y20_N6
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.entrada_0~q\) # ((\current_state.entrada_1~q\) # ((!\send_OK~input_o\ & \current_state.espera_OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_OK~input_o\,
	datab => \current_state.entrada_0~q\,
	datac => \current_state.entrada_1~q\,
	datad => \current_state.espera_OK~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X6_Y20_N18
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\current_state.entrada_3~q\) # ((\current_state.entrada_2~q\) # ((\current_state.entrada_4~q\) # (\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.entrada_3~q\,
	datab => \current_state.entrada_2~q\,
	datac => \current_state.entrada_4~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X6_Y20_N19
\current_state.contador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.contador~q\);

-- Location: LCCOMB_X5_Y20_N24
\current_state.memoria~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.memoria~feeder_combout\ = \current_state.contador~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.contador~q\,
	combout => \current_state.memoria~feeder_combout\);

-- Location: FF_X5_Y20_N25
\current_state.memoria\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.memoria~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.memoria~q\);

-- Location: LCCOMB_X5_Y20_N14
\current_state.start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.start~feeder_combout\ = \current_state.memoria~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.memoria~q\,
	combout => \current_state.start~feeder_combout\);

-- Location: FF_X5_Y20_N15
\current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.start~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.start~q\);

-- Location: LCCOMB_X6_Y20_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\send_MEF1~input_o\ & ((\current_state.espera~q\) # (\current_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \send_MEF1~input_o\,
	datac => \current_state.espera~q\,
	datad => \current_state.start~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X6_Y20_N23
\current_state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.espera~q\);

-- Location: LCCOMB_X6_Y20_N20
\next_state.espera_OK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.espera_OK~0_combout\ = (\send_MEF1~input_o\ & ((\current_state.espera~q\) # (\current_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \send_MEF1~input_o\,
	datac => \current_state.espera~q\,
	datad => \current_state.start~q\,
	combout => \next_state.espera_OK~0_combout\);

-- Location: FF_X6_Y20_N21
\current_state.espera_OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.espera_OK~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.espera_OK~q\);

-- Location: LCCOMB_X6_Y20_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\botones[4]~input_o\ & (\current_state.ready~q\ & ((\botones[0]~input_o\) # (!\next_state.entrada_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[4]~input_o\,
	datab => \botones[0]~input_o\,
	datac => \next_state.entrada_4~0_combout\,
	datad => \current_state.ready~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X6_Y20_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\botones[1]~input_o\ & (!\botones[0]~input_o\ & (!\botones[3]~input_o\ & !\botones[2]~input_o\))) # (!\botones[1]~input_o\ & ((\botones[0]~input_o\ & (!\botones[3]~input_o\ & !\botones[2]~input_o\)) # (!\botones[0]~input_o\ & 
-- (\botones[3]~input_o\ $ (\botones[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \botones[0]~input_o\,
	datac => \botones[3]~input_o\,
	datad => \botones[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X6_Y20_N26
\current_state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current_state.idle~feeder_combout\);

-- Location: FF_X6_Y20_N27
\current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.idle~feeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.idle~q\);

-- Location: LCCOMB_X6_Y20_N24
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ((!\botones[4]~input_o\ & (!\Mux0~0_combout\ & \current_state.ready~q\))) # (!\current_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[4]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \current_state.idle~q\,
	datad => \current_state.ready~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X6_Y20_N12
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~0_combout\) # ((\Selector0~1_combout\) # ((\send_OK~input_o\ & \current_state.espera_OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_OK~input_o\,
	datab => \current_state.espera_OK~q\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X6_Y20_N13
\current_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ready~q\);

-- Location: LCCOMB_X6_Y20_N8
\next_state.entrada_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.entrada_0~0_combout\ = (!\botones[4]~input_o\ & (\botones[0]~input_o\ & (\next_state.entrada_4~0_combout\ & \current_state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[4]~input_o\,
	datab => \botones[0]~input_o\,
	datac => \next_state.entrada_4~0_combout\,
	datad => \current_state.ready~q\,
	combout => \next_state.entrada_0~0_combout\);

-- Location: FF_X6_Y20_N9
\current_state.entrada_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.entrada_0~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.entrada_0~q\);

ww_opciones(0) <= \opciones[0]~output_o\;

ww_opciones(1) <= \opciones[1]~output_o\;

ww_opciones(2) <= \opciones[2]~output_o\;

ww_opciones(3) <= \opciones[3]~output_o\;

ww_opciones(4) <= \opciones[4]~output_o\;

ww_clk_cont <= \clk_cont~output_o\;

ww_clk_mem <= \clk_mem~output_o\;

ww_start_tx <= \start_tx~output_o\;

ww_reset_cont <= \reset_cont~output_o\;

ww_preset <= \preset~output_o\;

ww_tri_state <= \tri_state~output_o\;
END structure;


