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

-- DATE "11/21/2020 03:23:59"

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

ENTITY 	rx IS
    PORT (
	clk : IN std_logic;
	reset_low : IN std_logic;
	rxd : IN std_logic;
	clk_entry : IN std_logic_vector(1 DOWNTO 0);
	rx_byte : BUFFER std_logic_vector(7 DOWNTO 0);
	led : BUFFER std_logic
	);
END rx;

-- Design Ports Information
-- clk_entry[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_entry[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_low	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_low : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_clk_entry : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rx_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \current_state.idle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_low~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_entry[0]~input_o\ : std_logic;
SIGNAL \clk_entry[1]~input_o\ : std_logic;
SIGNAL \rx_byte[0]~output_o\ : std_logic;
SIGNAL \rx_byte[1]~output_o\ : std_logic;
SIGNAL \rx_byte[2]~output_o\ : std_logic;
SIGNAL \rx_byte[3]~output_o\ : std_logic;
SIGNAL \rx_byte[4]~output_o\ : std_logic;
SIGNAL \rx_byte[5]~output_o\ : std_logic;
SIGNAL \rx_byte[6]~output_o\ : std_logic;
SIGNAL \rx_byte[7]~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bit_cont~2_combout\ : std_logic;
SIGNAL \bit_cont~1_combout\ : std_logic;
SIGNAL \bit_cont~3_combout\ : std_logic;
SIGNAL \bit_cont~4_combout\ : std_logic;
SIGNAL \current_state.stop~0_combout\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \reset_low~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.stop~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.start~feeder_combout\ : std_logic;
SIGNAL \current_state.start~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \current_state.idle~q\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \current_state.idle~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \current_state.data_bit~q\ : std_logic;
SIGNAL \bit_cont[1]~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL bit_cont : std_logic_vector(3 DOWNTO 0);
SIGNAL baud_cont : std_logic_vector(12 DOWNTO 0);
SIGNAL rxbuff : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_current_state.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_low <= reset_low;
ww_rxd <= rxd;
ww_clk_entry <= clk_entry;
rx_byte <= ww_rx_byte;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\current_state.idle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \current_state.idle~q\);

\reset_low~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_low~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_current_state.idle~q\ <= NOT \current_state.idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N16
\rx_byte[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(0),
	devoe => ww_devoe,
	o => \rx_byte[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\rx_byte[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(1),
	devoe => ww_devoe,
	o => \rx_byte[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\rx_byte[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(2),
	devoe => ww_devoe,
	o => \rx_byte[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\rx_byte[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(3),
	devoe => ww_devoe,
	o => \rx_byte[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\rx_byte[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(4),
	devoe => ww_devoe,
	o => \rx_byte[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\rx_byte[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(5),
	devoe => ww_devoe,
	o => \rx_byte[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\rx_byte[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(6),
	devoe => ww_devoe,
	o => \rx_byte[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\rx_byte[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rxbuff(7),
	devoe => ww_devoe,
	o => \rx_byte[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_current_state.idle~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X13_Y0_N1
\rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

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

-- Location: LCCOMB_X11_Y4_N6
\bit_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cont~2_combout\ = (bit_cont(0)) # (bit_cont(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cont(0),
	datad => bit_cont(3),
	combout => \bit_cont~2_combout\);

-- Location: LCCOMB_X11_Y4_N14
\bit_cont[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- bit_cont(0) = (\bit_cont[1]~0_combout\ & ((!\bit_cont~2_combout\))) # (!\bit_cont[1]~0_combout\ & (bit_cont(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cont(0),
	datac => \bit_cont[1]~0_combout\,
	datad => \bit_cont~2_combout\,
	combout => bit_cont(0));

-- Location: LCCOMB_X11_Y4_N18
\bit_cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cont~1_combout\ = (!bit_cont(3) & (bit_cont(1) $ (bit_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cont(3),
	datac => bit_cont(1),
	datad => bit_cont(0),
	combout => \bit_cont~1_combout\);

-- Location: LCCOMB_X11_Y4_N8
\bit_cont[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- bit_cont(1) = (\bit_cont[1]~0_combout\ & ((\bit_cont~1_combout\))) # (!\bit_cont[1]~0_combout\ & (bit_cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cont(1),
	datac => \bit_cont[1]~0_combout\,
	datad => \bit_cont~1_combout\,
	combout => bit_cont(1));

-- Location: LCCOMB_X11_Y4_N24
\bit_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cont~3_combout\ = (!bit_cont(3) & (bit_cont(2) $ (((bit_cont(1) & bit_cont(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(1),
	datab => bit_cont(3),
	datac => bit_cont(2),
	datad => bit_cont(0),
	combout => \bit_cont~3_combout\);

-- Location: LCCOMB_X11_Y4_N4
\bit_cont[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- bit_cont(2) = (\bit_cont[1]~0_combout\ & ((\bit_cont~3_combout\))) # (!\bit_cont[1]~0_combout\ & (bit_cont(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cont(2),
	datac => \bit_cont[1]~0_combout\,
	datad => \bit_cont~3_combout\,
	combout => bit_cont(2));

-- Location: LCCOMB_X11_Y4_N30
\bit_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cont~4_combout\ = (bit_cont(0) & (!bit_cont(3) & (bit_cont(1) & bit_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(3),
	datac => bit_cont(1),
	datad => bit_cont(2),
	combout => \bit_cont~4_combout\);

-- Location: LCCOMB_X11_Y4_N0
\bit_cont[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- bit_cont(3) = (\bit_cont[1]~0_combout\ & ((\bit_cont~4_combout\))) # (!\bit_cont[1]~0_combout\ & (bit_cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cont(3),
	datac => \bit_cont~4_combout\,
	datad => \bit_cont[1]~0_combout\,
	combout => bit_cont(3));

-- Location: LCCOMB_X12_Y5_N22
\current_state.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.stop~0_combout\ = (\LessThan0~3_combout\ & ((\current_state.stop~q\) # ((\bit_cont[1]~0_combout\ & bit_cont(3))))) # (!\LessThan0~3_combout\ & (\bit_cont[1]~0_combout\ & ((bit_cont(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \bit_cont[1]~0_combout\,
	datac => \current_state.stop~q\,
	datad => bit_cont(3),
	combout => \current_state.stop~0_combout\);

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

-- Location: FF_X12_Y5_N23
\current_state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.stop~0_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.stop~q\);

-- Location: LCCOMB_X12_Y5_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.start~q\ & ((\LessThan0~3_combout\) # ((!\rxd~input_o\ & !\current_state.idle~q\)))) # (!\current_state.start~q\ & (!\rxd~input_o\ & ((!\current_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.start~q\,
	datab => \rxd~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \current_state.idle~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X12_Y5_N12
\current_state.start~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.start~feeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	combout => \current_state.start~feeder_combout\);

-- Location: FF_X12_Y5_N13
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

-- Location: LCCOMB_X12_Y5_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\current_state.stop~q\) # ((\rxd~input_o\ & \current_state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => \current_state.stop~q\,
	datad => \current_state.start~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X12_Y5_N8
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\rxd~input_o\ & (\current_state.idle~q\ & ((\LessThan0~3_combout\) # (!\Selector0~0_combout\)))) # (!\rxd~input_o\ & (((\LessThan0~3_combout\) # (!\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datab => \current_state.idle~q\,
	datac => \LessThan0~3_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X12_Y5_N1
\current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector0~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.idle~q\);

-- Location: LCCOMB_X14_Y5_N12
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (baud_cont(4) & (\Add0~13\ $ (GND))) # (!baud_cont(4) & (!\Add0~13\ & VCC))
-- \Add0~16\ = CARRY((baud_cont(4) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(4),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X14_Y5_N14
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (baud_cont(5) & (!\Add0~16\)) # (!baud_cont(5) & ((\Add0~16\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~16\) # (!baud_cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(5),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X13_Y5_N14
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~18_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~18_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X13_Y5_N0
\baud_cont[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(5) = (\current_state.idle~q\ & ((\Add0~20_combout\))) # (!\current_state.idle~q\ & (baud_cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.idle~q\,
	datab => baud_cont(5),
	datac => \Add0~20_combout\,
	combout => baud_cont(5));

-- Location: LCCOMB_X14_Y5_N16
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (baud_cont(6) & (\Add0~19\ $ (GND))) # (!baud_cont(6) & (!\Add0~19\ & VCC))
-- \Add0~22\ = CARRY((baud_cont(6) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(6),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X13_Y5_N22
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~21_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X13_Y5_N8
\baud_cont[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(6) = (\current_state.idle~q\ & ((\Add0~23_combout\))) # (!\current_state.idle~q\ & (baud_cont(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(6),
	datac => \current_state.idle~q\,
	datad => \Add0~23_combout\,
	combout => baud_cont(6));

-- Location: LCCOMB_X14_Y5_N18
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (baud_cont(7) & (!\Add0~22\)) # (!baud_cont(7) & ((\Add0~22\) # (GND)))
-- \Add0~25\ = CARRY((!\Add0~22\) # (!baud_cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(7),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X12_Y5_N20
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~24_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add0~24_combout\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X12_Y5_N4
\baud_cont[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(7) = (\current_state.idle~q\ & ((\Add0~26_combout\))) # (!\current_state.idle~q\ & (baud_cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(7),
	datac => \current_state.idle~q\,
	datad => \Add0~26_combout\,
	combout => baud_cont(7));

-- Location: LCCOMB_X14_Y5_N20
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (baud_cont(8) & (\Add0~25\ $ (GND))) # (!baud_cont(8) & (!\Add0~25\ & VCC))
-- \Add0~28\ = CARRY((baud_cont(8) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(8),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X12_Y5_N6
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~27_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add0~27_combout\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X12_Y5_N10
\baud_cont[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(8) = (\current_state.idle~q\ & ((\Add0~29_combout\))) # (!\current_state.idle~q\ & (baud_cont(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(8),
	datac => \current_state.idle~q\,
	datad => \Add0~29_combout\,
	combout => baud_cont(8));

-- Location: LCCOMB_X14_Y5_N24
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (baud_cont(10) & (\Add0~31\ $ (GND))) # (!baud_cont(10) & (!\Add0~31\ & VCC))
-- \Add0~34\ = CARRY((baud_cont(10) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(10),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X14_Y5_N26
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (baud_cont(11) & (!\Add0~34\)) # (!baud_cont(11) & ((\Add0~34\) # (GND)))
-- \Add0~36\ = CARRY((!\Add0~34\) # (!baud_cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(11),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X13_Y5_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~35_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add0~35_combout\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X13_Y5_N30
\baud_cont[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(11) = (\current_state.idle~q\ & ((\Add0~42_combout\))) # (!\current_state.idle~q\ & (baud_cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(11),
	datac => \current_state.idle~q\,
	datad => \Add0~42_combout\,
	combout => baud_cont(11));

-- Location: LCCOMB_X12_Y5_N16
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!baud_cont(8) & (!baud_cont(7) & (!baud_cont(11) & !baud_cont(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(8),
	datab => baud_cont(7),
	datac => baud_cont(11),
	datad => baud_cont(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y5_N4
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = baud_cont(0) $ (VCC)
-- \Add0~7\ = CARRY(baud_cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(0),
	datad => VCC,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X10_Y5_N4
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~6_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Add0~41_combout\);

-- Location: CLKCTRL_G0
\current_state.idle~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \current_state.idle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \current_state.idle~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y5_N30
\baud_cont[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(0) = (GLOBAL(\current_state.idle~clkctrl_outclk\) & (\Add0~41_combout\)) # (!GLOBAL(\current_state.idle~clkctrl_outclk\) & ((baud_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datac => baud_cont(0),
	datad => \current_state.idle~clkctrl_outclk\,
	combout => baud_cont(0));

-- Location: LCCOMB_X14_Y5_N6
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (baud_cont(1) & (!\Add0~7\)) # (!baud_cont(1) & ((\Add0~7\) # (GND)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!baud_cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(1),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X10_Y5_N6
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Add0~8_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add0~8_combout\,
	combout => \Add0~40_combout\);

-- Location: LCCOMB_X14_Y5_N2
\baud_cont[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(1) = (GLOBAL(\current_state.idle~clkctrl_outclk\) & (\Add0~40_combout\)) # (!GLOBAL(\current_state.idle~clkctrl_outclk\) & ((baud_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datac => baud_cont(1),
	datad => \current_state.idle~clkctrl_outclk\,
	combout => baud_cont(1));

-- Location: LCCOMB_X14_Y5_N8
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (baud_cont(2) & (\Add0~9\ $ (GND))) # (!baud_cont(2) & (!\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((baud_cont(2) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(2),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X10_Y5_N0
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~10_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Add0~10_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X14_Y5_N0
\baud_cont[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(2) = (GLOBAL(\current_state.idle~clkctrl_outclk\) & (\Add0~39_combout\)) # (!GLOBAL(\current_state.idle~clkctrl_outclk\) & ((baud_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => baud_cont(2),
	datad => \current_state.idle~clkctrl_outclk\,
	combout => baud_cont(2));

-- Location: LCCOMB_X14_Y5_N10
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (baud_cont(3) & (!\Add0~11\)) # (!baud_cont(3) & ((\Add0~11\) # (GND)))
-- \Add0~13\ = CARRY((!\Add0~11\) # (!baud_cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(3),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X13_Y5_N4
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~12_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~12_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X13_Y5_N16
\baud_cont[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(3) = (\current_state.idle~q\ & ((\Add0~14_combout\))) # (!\current_state.idle~q\ & (baud_cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(3),
	datac => \current_state.idle~q\,
	datad => \Add0~14_combout\,
	combout => baud_cont(3));

-- Location: LCCOMB_X13_Y5_N28
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~15_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~15_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X13_Y5_N26
\baud_cont[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(4) = (\current_state.idle~q\ & ((\Add0~17_combout\))) # (!\current_state.idle~q\ & (baud_cont(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(4),
	datac => \current_state.idle~q\,
	datad => \Add0~17_combout\,
	combout => baud_cont(4));

-- Location: LCCOMB_X13_Y5_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!baud_cont(5) & ((!baud_cont(3)) # (!baud_cont(4))))) # (!baud_cont(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(4),
	datab => baud_cont(5),
	datac => baud_cont(6),
	datad => baud_cont(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y5_N22
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (baud_cont(9) & (!\Add0~28\)) # (!baud_cont(9) & ((\Add0~28\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~28\) # (!baud_cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(9),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X12_Y5_N18
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~30_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add0~30_combout\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X12_Y5_N28
\baud_cont[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(9) = (\current_state.idle~q\ & ((\Add0~32_combout\))) # (!\current_state.idle~q\ & (baud_cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(9),
	datac => \current_state.idle~q\,
	datad => \Add0~32_combout\,
	combout => baud_cont(9));

-- Location: LCCOMB_X13_Y5_N20
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~33_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Add0~33_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X13_Y5_N18
\baud_cont[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(10) = (GLOBAL(\current_state.idle~clkctrl_outclk\) & (\Add0~43_combout\)) # (!GLOBAL(\current_state.idle~clkctrl_outclk\) & ((baud_cont(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => baud_cont(10),
	datad => \current_state.idle~clkctrl_outclk\,
	combout => baud_cont(10));

-- Location: LCCOMB_X14_Y5_N28
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = baud_cont(12) $ (!\Add0~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(12),
	cin => \Add0~36\,
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X13_Y5_N24
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Add0~37_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~37_combout\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X13_Y5_N6
\baud_cont[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- baud_cont(12) = (\current_state.idle~q\ & ((\Add0~44_combout\))) # (!\current_state.idle~q\ & (baud_cont(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(12),
	datac => \current_state.idle~q\,
	datad => \Add0~44_combout\,
	combout => baud_cont(12));

-- Location: LCCOMB_X13_Y5_N10
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!baud_cont(10) & !baud_cont(11))) # (!baud_cont(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(10),
	datac => baud_cont(11),
	datad => baud_cont(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y5_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y5_N0
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\rxd~input_o\ & \current_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datad => \current_state.start~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X12_Y5_N26
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\LessThan0~3_combout\ & (((\current_state.data_bit~q\)))) # (!\LessThan0~3_combout\ & ((\Selector2~0_combout\) # ((\current_state.data_bit~q\ & !bit_cont(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \Selector2~0_combout\,
	datac => \current_state.data_bit~q\,
	datad => bit_cont(3),
	combout => \Selector2~1_combout\);

-- Location: FF_X12_Y5_N27
\current_state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.data_bit~q\);

-- Location: LCCOMB_X12_Y5_N30
\bit_cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_cont[1]~0_combout\ = (\current_state.data_bit~q\ & (!\LessThan0~2_combout\ & ((!\LessThan0~0_combout\) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.data_bit~q\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \bit_cont[1]~0_combout\);

-- Location: LCCOMB_X11_Y4_N20
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\bit_cont[1]~0_combout\ & (!bit_cont(2) & (!bit_cont(1) & !bit_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => bit_cont(0),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X12_Y4_N12
\rxbuff[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(0) = (\Decoder0~0_combout\ & ((\rxd~input_o\))) # (!\Decoder0~0_combout\ & (rxbuff(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rxbuff(0),
	datac => \rxd~input_o\,
	datad => \Decoder0~0_combout\,
	combout => rxbuff(0));

-- Location: LCCOMB_X11_Y4_N26
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\bit_cont[1]~0_combout\ & (!bit_cont(2) & (!bit_cont(1) & bit_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => bit_cont(0),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X12_Y4_N26
\rxbuff[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(1) = (\Decoder0~1_combout\ & (\rxd~input_o\)) # (!\Decoder0~1_combout\ & ((rxbuff(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => \Decoder0~1_combout\,
	datad => rxbuff(1),
	combout => rxbuff(1));

-- Location: LCCOMB_X11_Y4_N2
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\bit_cont[1]~0_combout\ & (!bit_cont(0) & (bit_cont(1) & !bit_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(0),
	datac => bit_cont(1),
	datad => bit_cont(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X12_Y4_N8
\rxbuff[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(2) = (\Decoder0~2_combout\ & (\rxd~input_o\)) # (!\Decoder0~2_combout\ & ((rxbuff(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => rxbuff(2),
	datad => \Decoder0~2_combout\,
	combout => rxbuff(2));

-- Location: LCCOMB_X11_Y4_N28
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\bit_cont[1]~0_combout\ & (bit_cont(0) & (bit_cont(1) & !bit_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(0),
	datac => bit_cont(1),
	datad => bit_cont(2),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X12_Y4_N22
\rxbuff[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(3) = (\Decoder0~3_combout\ & (\rxd~input_o\)) # (!\Decoder0~3_combout\ & ((rxbuff(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => rxbuff(3),
	datad => \Decoder0~3_combout\,
	combout => rxbuff(3));

-- Location: LCCOMB_X11_Y4_N16
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\bit_cont[1]~0_combout\ & (!bit_cont(0) & (bit_cont(2) & !bit_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(0),
	datac => bit_cont(2),
	datad => bit_cont(1),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X12_Y4_N24
\rxbuff[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(4) = (\Decoder0~4_combout\ & (\rxd~input_o\)) # (!\Decoder0~4_combout\ & ((rxbuff(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => \Decoder0~4_combout\,
	datad => rxbuff(4),
	combout => rxbuff(4));

-- Location: LCCOMB_X11_Y4_N10
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\bit_cont[1]~0_combout\ & (bit_cont(0) & (bit_cont(2) & !bit_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(0),
	datac => bit_cont(2),
	datad => bit_cont(1),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X12_Y4_N30
\rxbuff[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(5) = (\Decoder0~5_combout\ & (\rxd~input_o\)) # (!\Decoder0~5_combout\ & ((rxbuff(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => rxbuff(5),
	datad => \Decoder0~5_combout\,
	combout => rxbuff(5));

-- Location: LCCOMB_X11_Y4_N12
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\bit_cont[1]~0_combout\ & (bit_cont(2) & (bit_cont(1) & !bit_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => bit_cont(0),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X12_Y4_N4
\rxbuff[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(6) = (\Decoder0~6_combout\ & (\rxd~input_o\)) # (!\Decoder0~6_combout\ & ((rxbuff(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datac => rxbuff(6),
	datad => \Decoder0~6_combout\,
	combout => rxbuff(6));

-- Location: LCCOMB_X11_Y4_N22
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\bit_cont[1]~0_combout\ & (bit_cont(0) & (bit_cont(1) & bit_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_cont[1]~0_combout\,
	datab => bit_cont(0),
	datac => bit_cont(1),
	datad => bit_cont(2),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X12_Y4_N18
\rxbuff[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- rxbuff(7) = (\Decoder0~7_combout\ & (\rxd~input_o\)) # (!\Decoder0~7_combout\ & ((rxbuff(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rxd~input_o\,
	datab => rxbuff(7),
	datad => \Decoder0~7_combout\,
	combout => rxbuff(7));

-- Location: IOIBUF_X3_Y0_N1
\clk_entry[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_entry(0),
	o => \clk_entry[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\clk_entry[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_entry(1),
	o => \clk_entry[1]~input_o\);

ww_rx_byte(0) <= \rx_byte[0]~output_o\;

ww_rx_byte(1) <= \rx_byte[1]~output_o\;

ww_rx_byte(2) <= \rx_byte[2]~output_o\;

ww_rx_byte(3) <= \rx_byte[3]~output_o\;

ww_rx_byte(4) <= \rx_byte[4]~output_o\;

ww_rx_byte(5) <= \rx_byte[5]~output_o\;

ww_rx_byte(6) <= \rx_byte[6]~output_o\;

ww_rx_byte(7) <= \rx_byte[7]~output_o\;

ww_led <= \led~output_o\;
END structure;


