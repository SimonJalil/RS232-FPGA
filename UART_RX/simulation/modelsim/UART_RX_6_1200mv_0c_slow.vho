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

-- DATE "03/14/2021 03:55:47"

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

ENTITY 	UART_RX IS
    PORT (
	clk : IN std_logic;
	rx_serial : IN std_logic;
	rx_byte : OUT std_logic_vector(7 DOWNTO 0)
	);
END UART_RX;

-- Design Ports Information
-- rx_byte[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[4]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[5]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[7]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_serial	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_RX IS
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
SIGNAL ww_rx_serial : std_logic;
SIGNAL ww_rx_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx_byte[0]~output_o\ : std_logic;
SIGNAL \rx_byte[1]~output_o\ : std_logic;
SIGNAL \rx_byte[2]~output_o\ : std_logic;
SIGNAL \rx_byte[3]~output_o\ : std_logic;
SIGNAL \rx_byte[4]~output_o\ : std_logic;
SIGNAL \rx_byte[5]~output_o\ : std_logic;
SIGNAL \rx_byte[6]~output_o\ : std_logic;
SIGNAL \rx_byte[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx_serial~input_o\ : std_logic;
SIGNAL \baud_cont[0]~13_combout\ : std_logic;
SIGNAL \baud_cont[10]~34\ : std_logic;
SIGNAL \baud_cont[11]~35_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \state.start~q\ : std_logic;
SIGNAL \baud_cont[12]~41_combout\ : std_logic;
SIGNAL \baud_cont[11]~36\ : std_logic;
SIGNAL \baud_cont[12]~37_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \state.data_bit~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \state.stop~0_combout\ : std_logic;
SIGNAL \state.stop~q\ : std_logic;
SIGNAL \baud_cont[12]~39_combout\ : std_logic;
SIGNAL \baud_cont[12]~40_combout\ : std_logic;
SIGNAL \baud_cont[0]~14\ : std_logic;
SIGNAL \baud_cont[1]~15_combout\ : std_logic;
SIGNAL \baud_cont[1]~16\ : std_logic;
SIGNAL \baud_cont[2]~17_combout\ : std_logic;
SIGNAL \baud_cont[2]~18\ : std_logic;
SIGNAL \baud_cont[3]~19_combout\ : std_logic;
SIGNAL \baud_cont[3]~20\ : std_logic;
SIGNAL \baud_cont[4]~21_combout\ : std_logic;
SIGNAL \baud_cont[4]~22\ : std_logic;
SIGNAL \baud_cont[5]~23_combout\ : std_logic;
SIGNAL \baud_cont[5]~24\ : std_logic;
SIGNAL \baud_cont[6]~25_combout\ : std_logic;
SIGNAL \baud_cont[6]~26\ : std_logic;
SIGNAL \baud_cont[7]~27_combout\ : std_logic;
SIGNAL \baud_cont[7]~28\ : std_logic;
SIGNAL \baud_cont[8]~29_combout\ : std_logic;
SIGNAL \baud_cont[8]~30\ : std_logic;
SIGNAL \baud_cont[9]~31_combout\ : std_logic;
SIGNAL \baud_cont[9]~32\ : std_logic;
SIGNAL \baud_cont[10]~33_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state.espera~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \rx[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \rx[1]~1_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \rx[2]~2_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \rx[3]~3_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \rx[4]~4_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \rx[5]~5_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \rx[6]~6_combout\ : std_logic;
SIGNAL \rx[7]~7_combout\ : std_logic;
SIGNAL bit_cont : std_logic_vector(2 DOWNTO 0);
SIGNAL rx : std_logic_vector(7 DOWNTO 0);
SIGNAL baud_cont : std_logic_vector(12 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rx_serial <= rx_serial;
rx_byte <= ww_rx_byte;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\rx_byte[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(0),
	devoe => ww_devoe,
	o => \rx_byte[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\rx_byte[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(1),
	devoe => ww_devoe,
	o => \rx_byte[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\rx_byte[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(2),
	devoe => ww_devoe,
	o => \rx_byte[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\rx_byte[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(3),
	devoe => ww_devoe,
	o => \rx_byte[3]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\rx_byte[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(4),
	devoe => ww_devoe,
	o => \rx_byte[4]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\rx_byte[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(5),
	devoe => ww_devoe,
	o => \rx_byte[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\rx_byte[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(6),
	devoe => ww_devoe,
	o => \rx_byte[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\rx_byte[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx(7),
	devoe => ww_devoe,
	o => \rx_byte[7]~output_o\);

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

-- Location: IOIBUF_X13_Y24_N22
\rx_serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_serial,
	o => \rx_serial~input_o\);

-- Location: LCCOMB_X11_Y22_N4
\baud_cont[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[0]~13_combout\ = baud_cont(0) $ (VCC)
-- \baud_cont[0]~14\ = CARRY(baud_cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(0),
	datad => VCC,
	combout => \baud_cont[0]~13_combout\,
	cout => \baud_cont[0]~14\);

-- Location: LCCOMB_X11_Y22_N24
\baud_cont[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[10]~33_combout\ = (baud_cont(10) & (\baud_cont[9]~32\ $ (GND))) # (!baud_cont(10) & (!\baud_cont[9]~32\ & VCC))
-- \baud_cont[10]~34\ = CARRY((baud_cont(10) & !\baud_cont[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(10),
	datad => VCC,
	cin => \baud_cont[9]~32\,
	combout => \baud_cont[10]~33_combout\,
	cout => \baud_cont[10]~34\);

-- Location: LCCOMB_X11_Y22_N26
\baud_cont[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[11]~35_combout\ = (baud_cont(11) & (!\baud_cont[10]~34\)) # (!baud_cont(11) & ((\baud_cont[10]~34\) # (GND)))
-- \baud_cont[11]~36\ = CARRY((!\baud_cont[10]~34\) # (!baud_cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(11),
	datad => VCC,
	cin => \baud_cont[10]~34\,
	combout => \baud_cont[11]~35_combout\,
	cout => \baud_cont[11]~36\);

-- Location: LCCOMB_X11_Y22_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (baud_cont(9) & (!baud_cont(10) & (baud_cont(5) & !baud_cont(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(9),
	datab => baud_cont(10),
	datac => baud_cont(5),
	datad => baud_cont(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y22_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!baud_cont(8) & (!baud_cont(4) & (baud_cont(3) & !baud_cont(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(8),
	datab => baud_cont(4),
	datac => baud_cont(3),
	datad => baud_cont(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y22_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (baud_cont(2) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => baud_cont(2),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y22_N0
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Equal0~3_combout\ & (!\state.idle~q\ & ((!\rx_serial~input_o\)))) # (!\Equal0~3_combout\ & ((\state.start~q\) # ((!\state.idle~q\ & !\rx_serial~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \state.idle~q\,
	datac => \state.start~q\,
	datad => \rx_serial~input_o\,
	combout => \Selector17~0_combout\);

-- Location: FF_X10_Y22_N1
\state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.start~q\);

-- Location: LCCOMB_X10_Y22_N20
\baud_cont[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[12]~41_combout\ = (!\state.espera~q\ & (((!\Equal0~3_combout\) # (!\state.start~q\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datab => \state.start~q\,
	datac => \state.espera~q\,
	datad => \Equal0~3_combout\,
	combout => \baud_cont[12]~41_combout\);

-- Location: FF_X11_Y22_N27
\baud_cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[11]~35_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(11));

-- Location: LCCOMB_X11_Y22_N28
\baud_cont[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[12]~37_combout\ = \baud_cont[11]~36\ $ (!baud_cont(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => baud_cont(12),
	cin => \baud_cont[11]~36\,
	combout => \baud_cont[12]~37_combout\);

-- Location: FF_X11_Y22_N29
\baud_cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[12]~37_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(12));

-- Location: LCCOMB_X10_Y22_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!baud_cont(1) & (baud_cont(11) & (!baud_cont(12) & !baud_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(1),
	datab => baud_cont(11),
	datac => baud_cont(12),
	datad => baud_cont(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y22_N14
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (baud_cont(2) & \state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => baud_cont(2),
	datad => \state.start~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X10_Y22_N16
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Equal0~2_combout\ & (\Selector18~0_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Selector18~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X10_Y22_N10
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\state.data_bit~q\ & (bit_cont(1) $ (((\LessThan0~2_combout\ & bit_cont(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => bit_cont(1),
	datac => bit_cont(0),
	datad => \state.data_bit~q\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X10_Y22_N2
\Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~2_combout\) # ((!\state.data_bit~q\ & (\state.idle~q\ & bit_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.data_bit~q\,
	datab => \state.idle~q\,
	datac => bit_cont(1),
	datad => \Selector14~2_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X10_Y22_N3
\bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cont(1));

-- Location: LCCOMB_X12_Y22_N28
\Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (bit_cont(2) & (bit_cont(0) & (bit_cont(1) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(2),
	datab => bit_cont(0),
	datac => bit_cont(1),
	datad => \LessThan0~2_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X12_Y22_N18
\Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (\Selector18~1_combout\ & (((\state.data_bit~q\ & !\Selector18~2_combout\)) # (!\rx_serial~input_o\))) # (!\Selector18~1_combout\ & (((\state.data_bit~q\ & !\Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~1_combout\,
	datab => \rx_serial~input_o\,
	datac => \state.data_bit~q\,
	datad => \Selector18~2_combout\,
	combout => \Selector18~3_combout\);

-- Location: FF_X12_Y22_N19
\state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.data_bit~q\);

-- Location: LCCOMB_X10_Y22_N4
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.data_bit~q\ & (\LessThan0~2_combout\ $ (((bit_cont(0)))))) # (!\state.data_bit~q\ & (((\state.idle~q\ & bit_cont(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \state.idle~q\,
	datac => bit_cont(0),
	datad => \state.data_bit~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X10_Y22_N5
\bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cont(0));

-- Location: LCCOMB_X9_Y22_N2
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\state.data_bit~q\ & \LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.data_bit~q\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X9_Y22_N24
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (bit_cont(0) & (bit_cont(1) & (bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X10_Y22_N18
\state.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.stop~0_combout\ = (\Decoder0~8_combout\) # ((!\LessThan0~2_combout\ & \state.stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datac => \state.stop~q\,
	datad => \Decoder0~8_combout\,
	combout => \state.stop~0_combout\);

-- Location: FF_X10_Y22_N19
\state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stop~q\);

-- Location: LCCOMB_X12_Y22_N6
\baud_cont[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[12]~39_combout\ = (\state.stop~q\) # (\state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stop~q\,
	datad => \state.data_bit~q\,
	combout => \baud_cont[12]~39_combout\);

-- Location: LCCOMB_X10_Y22_N6
\baud_cont[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[12]~40_combout\ = \state.idle~q\ $ (\Selector18~1_combout\ $ (((!\LessThan0~2_combout\) # (!\baud_cont[12]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cont[12]~39_combout\,
	datab => \state.idle~q\,
	datac => \LessThan0~2_combout\,
	datad => \Selector18~1_combout\,
	combout => \baud_cont[12]~40_combout\);

-- Location: FF_X11_Y22_N5
\baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[0]~13_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(0));

-- Location: LCCOMB_X11_Y22_N6
\baud_cont[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[1]~15_combout\ = (baud_cont(1) & (!\baud_cont[0]~14\)) # (!baud_cont(1) & ((\baud_cont[0]~14\) # (GND)))
-- \baud_cont[1]~16\ = CARRY((!\baud_cont[0]~14\) # (!baud_cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(1),
	datad => VCC,
	cin => \baud_cont[0]~14\,
	combout => \baud_cont[1]~15_combout\,
	cout => \baud_cont[1]~16\);

-- Location: FF_X11_Y22_N7
\baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[1]~15_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(1));

-- Location: LCCOMB_X11_Y22_N8
\baud_cont[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[2]~17_combout\ = (baud_cont(2) & (\baud_cont[1]~16\ $ (GND))) # (!baud_cont(2) & (!\baud_cont[1]~16\ & VCC))
-- \baud_cont[2]~18\ = CARRY((baud_cont(2) & !\baud_cont[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(2),
	datad => VCC,
	cin => \baud_cont[1]~16\,
	combout => \baud_cont[2]~17_combout\,
	cout => \baud_cont[2]~18\);

-- Location: FF_X11_Y22_N9
\baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[2]~17_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(2));

-- Location: LCCOMB_X11_Y22_N10
\baud_cont[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[3]~19_combout\ = (baud_cont(3) & (!\baud_cont[2]~18\)) # (!baud_cont(3) & ((\baud_cont[2]~18\) # (GND)))
-- \baud_cont[3]~20\ = CARRY((!\baud_cont[2]~18\) # (!baud_cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(3),
	datad => VCC,
	cin => \baud_cont[2]~18\,
	combout => \baud_cont[3]~19_combout\,
	cout => \baud_cont[3]~20\);

-- Location: FF_X11_Y22_N11
\baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[3]~19_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(3));

-- Location: LCCOMB_X11_Y22_N12
\baud_cont[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[4]~21_combout\ = (baud_cont(4) & (\baud_cont[3]~20\ $ (GND))) # (!baud_cont(4) & (!\baud_cont[3]~20\ & VCC))
-- \baud_cont[4]~22\ = CARRY((baud_cont(4) & !\baud_cont[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(4),
	datad => VCC,
	cin => \baud_cont[3]~20\,
	combout => \baud_cont[4]~21_combout\,
	cout => \baud_cont[4]~22\);

-- Location: FF_X11_Y22_N13
\baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[4]~21_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(4));

-- Location: LCCOMB_X11_Y22_N14
\baud_cont[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[5]~23_combout\ = (baud_cont(5) & (!\baud_cont[4]~22\)) # (!baud_cont(5) & ((\baud_cont[4]~22\) # (GND)))
-- \baud_cont[5]~24\ = CARRY((!\baud_cont[4]~22\) # (!baud_cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(5),
	datad => VCC,
	cin => \baud_cont[4]~22\,
	combout => \baud_cont[5]~23_combout\,
	cout => \baud_cont[5]~24\);

-- Location: FF_X11_Y22_N15
\baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[5]~23_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(5));

-- Location: LCCOMB_X11_Y22_N16
\baud_cont[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[6]~25_combout\ = (baud_cont(6) & (\baud_cont[5]~24\ $ (GND))) # (!baud_cont(6) & (!\baud_cont[5]~24\ & VCC))
-- \baud_cont[6]~26\ = CARRY((baud_cont(6) & !\baud_cont[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(6),
	datad => VCC,
	cin => \baud_cont[5]~24\,
	combout => \baud_cont[6]~25_combout\,
	cout => \baud_cont[6]~26\);

-- Location: FF_X11_Y22_N17
\baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[6]~25_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(6));

-- Location: LCCOMB_X11_Y22_N18
\baud_cont[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[7]~27_combout\ = (baud_cont(7) & (!\baud_cont[6]~26\)) # (!baud_cont(7) & ((\baud_cont[6]~26\) # (GND)))
-- \baud_cont[7]~28\ = CARRY((!\baud_cont[6]~26\) # (!baud_cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(7),
	datad => VCC,
	cin => \baud_cont[6]~26\,
	combout => \baud_cont[7]~27_combout\,
	cout => \baud_cont[7]~28\);

-- Location: FF_X11_Y22_N19
\baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[7]~27_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(7));

-- Location: LCCOMB_X11_Y22_N20
\baud_cont[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[8]~29_combout\ = (baud_cont(8) & (\baud_cont[7]~28\ $ (GND))) # (!baud_cont(8) & (!\baud_cont[7]~28\ & VCC))
-- \baud_cont[8]~30\ = CARRY((baud_cont(8) & !\baud_cont[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(8),
	datad => VCC,
	cin => \baud_cont[7]~28\,
	combout => \baud_cont[8]~29_combout\,
	cout => \baud_cont[8]~30\);

-- Location: FF_X11_Y22_N21
\baud_cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[8]~29_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(8));

-- Location: LCCOMB_X11_Y22_N22
\baud_cont[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[9]~31_combout\ = (baud_cont(9) & (!\baud_cont[8]~30\)) # (!baud_cont(9) & ((\baud_cont[8]~30\) # (GND)))
-- \baud_cont[9]~32\ = CARRY((!\baud_cont[8]~30\) # (!baud_cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(9),
	datad => VCC,
	cin => \baud_cont[8]~30\,
	combout => \baud_cont[9]~31_combout\,
	cout => \baud_cont[9]~32\);

-- Location: FF_X11_Y22_N23
\baud_cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[9]~31_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(9));

-- Location: FF_X11_Y22_N25
\baud_cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[10]~33_combout\,
	sclr => \baud_cont[12]~40_combout\,
	ena => \baud_cont[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(10));

-- Location: LCCOMB_X11_Y22_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!baud_cont(5) & ((!baud_cont(4)) # (!baud_cont(3))))) # (!baud_cont(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(3),
	datab => baud_cont(5),
	datac => baud_cont(4),
	datad => baud_cont(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y22_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (baud_cont(9)) # ((baud_cont(7)) # ((baud_cont(8)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(9),
	datab => baud_cont(7),
	datac => baud_cont(8),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y22_N22
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (baud_cont(12) & ((baud_cont(11)) # ((baud_cont(10) & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(10),
	datab => baud_cont(11),
	datac => baud_cont(12),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y22_N30
\state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (\LessThan0~2_combout\ & \state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~2_combout\,
	datad => \state.stop~q\,
	combout => \state~7_combout\);

-- Location: FF_X10_Y22_N31
\state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.espera~q\);

-- Location: LCCOMB_X10_Y22_N8
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\state.espera~q\ & (((\state.idle~q\ & !\Selector18~1_combout\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.espera~q\,
	datab => \rx_serial~input_o\,
	datac => \state.idle~q\,
	datad => \Selector18~1_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X10_Y22_N9
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X8_Y22_N14
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.idle~q\ & !\state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.idle~q\,
	datad => \state.data_bit~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X10_Y22_N24
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (bit_cont(2) & (\state.data_bit~q\ & ((!\LessThan0~2_combout\) # (!bit_cont(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(2),
	datab => bit_cont(0),
	datac => \LessThan0~2_combout\,
	datad => \state.data_bit~q\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X9_Y22_N18
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (bit_cont(0) & (\Decoder0~0_combout\ & (bit_cont(2) $ (bit_cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X9_Y22_N8
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~2_combout\) # ((\Selector13~1_combout\) # ((\Selector13~0_combout\ & bit_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector13~2_combout\,
	datac => bit_cont(2),
	datad => \Selector13~1_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X9_Y22_N9
\bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cont(2));

-- Location: LCCOMB_X12_Y22_N16
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!bit_cont(2) & (!bit_cont(1) & (!bit_cont(0) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(2),
	datab => bit_cont(1),
	datac => bit_cont(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X12_Y22_N4
\rx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[0]~0_combout\ = (\Decoder0~1_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~1_combout\ & ((rx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(0),
	datad => \Decoder0~1_combout\,
	combout => \rx[0]~0_combout\);

-- Location: FF_X12_Y22_N5
\rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(0));

-- Location: LCCOMB_X9_Y22_N16
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (bit_cont(0) & (!bit_cont(2) & (!bit_cont(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X9_Y22_N4
\rx[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[1]~1_combout\ = (\Decoder0~2_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~2_combout\ & ((rx(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => rx(1),
	datad => \Decoder0~2_combout\,
	combout => \rx[1]~1_combout\);

-- Location: FF_X9_Y22_N5
\rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(1));

-- Location: LCCOMB_X9_Y22_N26
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!bit_cont(0) & (!bit_cont(2) & (bit_cont(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X9_Y22_N30
\rx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[2]~2_combout\ = (\Decoder0~3_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~3_combout\ & ((rx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => rx(2),
	datad => \Decoder0~3_combout\,
	combout => \rx[2]~2_combout\);

-- Location: FF_X9_Y22_N31
\rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(2));

-- Location: LCCOMB_X9_Y22_N12
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (bit_cont(0) & (!bit_cont(2) & (bit_cont(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X9_Y22_N28
\rx[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[3]~3_combout\ = (\Decoder0~4_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~4_combout\ & ((rx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => rx(3),
	datad => \Decoder0~4_combout\,
	combout => \rx[3]~3_combout\);

-- Location: FF_X9_Y22_N29
\rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(3));

-- Location: LCCOMB_X9_Y22_N10
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!bit_cont(0) & (bit_cont(2) & (!bit_cont(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X9_Y22_N14
\rx[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[4]~4_combout\ = (\Decoder0~5_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~5_combout\ & ((rx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => rx(4),
	datad => \Decoder0~5_combout\,
	combout => \rx[4]~4_combout\);

-- Location: FF_X9_Y22_N15
\rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(4));

-- Location: LCCOMB_X9_Y22_N20
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (bit_cont(0) & (bit_cont(2) & (!bit_cont(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X9_Y22_N0
\rx[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[5]~5_combout\ = (\Decoder0~6_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~6_combout\ & ((rx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => rx(5),
	datad => \Decoder0~6_combout\,
	combout => \rx[5]~5_combout\);

-- Location: FF_X9_Y22_N1
\rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(5));

-- Location: LCCOMB_X9_Y22_N6
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!bit_cont(0) & (bit_cont(2) & (bit_cont(1) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(2),
	datac => bit_cont(1),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X9_Y22_N22
\rx[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[6]~6_combout\ = (\Decoder0~7_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~7_combout\ & ((rx(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_serial~input_o\,
	datac => rx(6),
	datad => \Decoder0~7_combout\,
	combout => \rx[6]~6_combout\);

-- Location: FF_X9_Y22_N23
\rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(6));

-- Location: LCCOMB_X8_Y22_N4
\rx[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[7]~7_combout\ = (\Decoder0~8_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~8_combout\ & ((rx(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(7),
	datad => \Decoder0~8_combout\,
	combout => \rx[7]~7_combout\);

-- Location: FF_X8_Y22_N5
\rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx(7));

ww_rx_byte(0) <= \rx_byte[0]~output_o\;

ww_rx_byte(1) <= \rx_byte[1]~output_o\;

ww_rx_byte(2) <= \rx_byte[2]~output_o\;

ww_rx_byte(3) <= \rx_byte[3]~output_o\;

ww_rx_byte(4) <= \rx_byte[4]~output_o\;

ww_rx_byte(5) <= \rx_byte[5]~output_o\;

ww_rx_byte(6) <= \rx_byte[6]~output_o\;

ww_rx_byte(7) <= \rx_byte[7]~output_o\;
END structure;


