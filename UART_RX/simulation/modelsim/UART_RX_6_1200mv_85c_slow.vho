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

-- DATE "12/22/2020 17:47:27"

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
-- rx_byte[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_serial	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \baud_cont[0]~8_combout\ : std_logic;
SIGNAL \baud_cont[4]~17\ : std_logic;
SIGNAL \baud_cont[5]~18_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \state.start~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \state.stop~2_combout\ : std_logic;
SIGNAL \state.stop~q\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state.espera~q\ : std_logic;
SIGNAL \baud_cont[0]~26_combout\ : std_logic;
SIGNAL \baud_cont[0]~27_combout\ : std_logic;
SIGNAL \baud_cont[5]~19\ : std_logic;
SIGNAL \baud_cont[6]~20_combout\ : std_logic;
SIGNAL \baud_cont[6]~21\ : std_logic;
SIGNAL \baud_cont[7]~22_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \state.data_bit~q\ : std_logic;
SIGNAL \baud_cont[0]~24_combout\ : std_logic;
SIGNAL \baud_cont[0]~25_combout\ : std_logic;
SIGNAL \baud_cont[0]~9\ : std_logic;
SIGNAL \baud_cont[1]~10_combout\ : std_logic;
SIGNAL \baud_cont[1]~11\ : std_logic;
SIGNAL \baud_cont[2]~12_combout\ : std_logic;
SIGNAL \baud_cont[2]~13\ : std_logic;
SIGNAL \baud_cont[3]~14_combout\ : std_logic;
SIGNAL \baud_cont[3]~15\ : std_logic;
SIGNAL \baud_cont[4]~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
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
SIGNAL baud_cont : std_logic_vector(7 DOWNTO 0);

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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOIBUF_X0_Y9_N8
\rx_serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_serial,
	o => \rx_serial~input_o\);

-- Location: LCCOMB_X6_Y9_N10
\baud_cont[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[0]~8_combout\ = baud_cont(0) $ (VCC)
-- \baud_cont[0]~9\ = CARRY(baud_cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(0),
	datad => VCC,
	combout => \baud_cont[0]~8_combout\,
	cout => \baud_cont[0]~9\);

-- Location: LCCOMB_X6_Y9_N18
\baud_cont[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[4]~16_combout\ = (baud_cont(4) & (\baud_cont[3]~15\ $ (GND))) # (!baud_cont(4) & (!\baud_cont[3]~15\ & VCC))
-- \baud_cont[4]~17\ = CARRY((baud_cont(4) & !\baud_cont[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(4),
	datad => VCC,
	cin => \baud_cont[3]~15\,
	combout => \baud_cont[4]~16_combout\,
	cout => \baud_cont[4]~17\);

-- Location: LCCOMB_X6_Y9_N20
\baud_cont[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[5]~18_combout\ = (baud_cont(5) & (!\baud_cont[4]~17\)) # (!baud_cont(5) & ((\baud_cont[4]~17\) # (GND)))
-- \baud_cont[5]~19\ = CARRY((!\baud_cont[4]~17\) # (!baud_cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(5),
	datad => VCC,
	cin => \baud_cont[4]~17\,
	combout => \baud_cont[5]~18_combout\,
	cout => \baud_cont[5]~19\);

-- Location: LCCOMB_X5_Y9_N2
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\state.data_bit~q\ & (baud_cont(7) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.data_bit~q\,
	datac => baud_cont(7),
	datad => \LessThan0~0_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X2_Y9_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\rx_serial~input_o\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => \state.idle~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X6_Y9_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (baud_cont(6) & (!baud_cont(4) & (baud_cont(5) & baud_cont(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(6),
	datab => baud_cont(4),
	datac => baud_cont(5),
	datad => baud_cont(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X6_Y9_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!baud_cont(1) & (baud_cont(2) & (!baud_cont(0) & !baud_cont(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(1),
	datab => baud_cont(2),
	datac => baud_cont(0),
	datad => baud_cont(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y9_N0
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((\state.start~q\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \state.start~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X5_Y9_N1
\state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.start~q\);

-- Location: LCCOMB_X6_Y9_N0
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.start~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.start~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X2_Y9_N4
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\state.espera~q\ & (((\state.idle~q\ & !\Selector13~0_combout\)) # (!\rx_serial~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.espera~q\,
	datab => \rx_serial~input_o\,
	datac => \state.idle~q\,
	datad => \Selector13~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X2_Y9_N5
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X5_Y9_N24
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (bit_cont(1) & ((\state.data_bit~q\ & (!\LessThan0~1_combout\)) # (!\state.data_bit~q\ & ((\state.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(1),
	datab => \state.data_bit~q\,
	datac => \LessThan0~1_combout\,
	datad => \state.idle~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X5_Y9_N12
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((\Decoder0~0_combout\ & (bit_cont(0) $ (bit_cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => \Decoder0~0_combout\,
	datac => bit_cont(1),
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X5_Y9_N13
\bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cont(1));

-- Location: LCCOMB_X4_Y9_N8
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (bit_cont(0) & (bit_cont(2) $ (bit_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(2),
	datac => bit_cont(1),
	datad => bit_cont(0),
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X5_Y9_N10
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.data_bit~q\ & (((!\LessThan0~1_combout\)) # (!bit_cont(0)))) # (!\state.data_bit~q\ & (((\state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => \state.data_bit~q\,
	datac => \LessThan0~1_combout\,
	datad => \state.idle~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X5_Y9_N30
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\Selector8~1_combout\ & ((\Decoder0~0_combout\) # ((bit_cont(2) & \Selector8~0_combout\)))) # (!\Selector8~1_combout\ & (((bit_cont(2) & \Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datab => \Decoder0~0_combout\,
	datac => bit_cont(2),
	datad => \Selector8~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: FF_X5_Y9_N31
\bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cont(2));

-- Location: LCCOMB_X5_Y9_N20
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

-- Location: LCCOMB_X5_Y9_N16
\state.stop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.stop~2_combout\ = (\Decoder0~8_combout\) # ((\state.stop~q\ & ((\LessThan0~0_combout\) # (!baud_cont(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => baud_cont(7),
	datac => \state.stop~q\,
	datad => \Decoder0~8_combout\,
	combout => \state.stop~2_combout\);

-- Location: FF_X5_Y9_N17
\state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stop~q\);

-- Location: LCCOMB_X6_Y9_N8
\state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (\state.stop~q\ & (baud_cont(7) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stop~q\,
	datab => baud_cont(7),
	datad => \LessThan0~0_combout\,
	combout => \state~7_combout\);

-- Location: FF_X6_Y9_N9
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

-- Location: LCCOMB_X5_Y9_N14
\baud_cont[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[0]~26_combout\ = (!\state.start~q\) # (!\rx_serial~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_serial~input_o\,
	datad => \state.start~q\,
	combout => \baud_cont[0]~26_combout\);

-- Location: LCCOMB_X6_Y9_N2
\baud_cont[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[0]~27_combout\ = (!\state.espera~q\ & (((\baud_cont[0]~26_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.espera~q\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \baud_cont[0]~26_combout\,
	combout => \baud_cont[0]~27_combout\);

-- Location: FF_X6_Y9_N21
\baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[5]~18_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(5));

-- Location: LCCOMB_X6_Y9_N22
\baud_cont[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[6]~20_combout\ = (baud_cont(6) & (\baud_cont[5]~19\ $ (GND))) # (!baud_cont(6) & (!\baud_cont[5]~19\ & VCC))
-- \baud_cont[6]~21\ = CARRY((baud_cont(6) & !\baud_cont[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(6),
	datad => VCC,
	cin => \baud_cont[5]~19\,
	combout => \baud_cont[6]~20_combout\,
	cout => \baud_cont[6]~21\);

-- Location: FF_X6_Y9_N23
\baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[6]~20_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(6));

-- Location: LCCOMB_X6_Y9_N24
\baud_cont[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[7]~22_combout\ = \baud_cont[6]~21\ $ (baud_cont(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => baud_cont(7),
	cin => \baud_cont[6]~21\,
	combout => \baud_cont[7]~22_combout\);

-- Location: FF_X6_Y9_N25
\baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[7]~22_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(7));

-- Location: LCCOMB_X6_Y9_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (baud_cont(7) & !\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(7),
	datac => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y9_N28
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\state.start~q\ & (\Equal0~0_combout\ & (!\rx_serial~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.start~q\,
	datab => \Equal0~0_combout\,
	datac => \rx_serial~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X5_Y9_N22
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\state.data_bit~q\ & (((!bit_cont(0)) # (!bit_cont(2))) # (!bit_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(1),
	datab => \state.data_bit~q\,
	datac => bit_cont(2),
	datad => bit_cont(0),
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X5_Y9_N4
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~1_combout\) # ((\Selector13~2_combout\) # ((!\LessThan0~1_combout\ & \state.data_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Selector13~1_combout\,
	datac => \state.data_bit~q\,
	datad => \Selector13~2_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X5_Y9_N5
\state.data_bit\ : dffeas
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
	q => \state.data_bit~q\);

-- Location: LCCOMB_X5_Y9_N26
\baud_cont[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[0]~24_combout\ = (\state.data_bit~q\) # (\state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.data_bit~q\,
	datad => \state.stop~q\,
	combout => \baud_cont[0]~24_combout\);

-- Location: LCCOMB_X6_Y9_N6
\baud_cont[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[0]~25_combout\ = \state.idle~q\ $ (\Selector13~0_combout\ $ (((!\LessThan0~1_combout\) # (!\baud_cont[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_cont[0]~24_combout\,
	datab => \state.idle~q\,
	datac => \LessThan0~1_combout\,
	datad => \Selector13~0_combout\,
	combout => \baud_cont[0]~25_combout\);

-- Location: FF_X6_Y9_N11
\baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[0]~8_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(0));

-- Location: LCCOMB_X6_Y9_N12
\baud_cont[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[1]~10_combout\ = (baud_cont(1) & (!\baud_cont[0]~9\)) # (!baud_cont(1) & ((\baud_cont[0]~9\) # (GND)))
-- \baud_cont[1]~11\ = CARRY((!\baud_cont[0]~9\) # (!baud_cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(1),
	datad => VCC,
	cin => \baud_cont[0]~9\,
	combout => \baud_cont[1]~10_combout\,
	cout => \baud_cont[1]~11\);

-- Location: FF_X6_Y9_N13
\baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[1]~10_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(1));

-- Location: LCCOMB_X6_Y9_N14
\baud_cont[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[2]~12_combout\ = (baud_cont(2) & (\baud_cont[1]~11\ $ (GND))) # (!baud_cont(2) & (!\baud_cont[1]~11\ & VCC))
-- \baud_cont[2]~13\ = CARRY((baud_cont(2) & !\baud_cont[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(2),
	datad => VCC,
	cin => \baud_cont[1]~11\,
	combout => \baud_cont[2]~12_combout\,
	cout => \baud_cont[2]~13\);

-- Location: FF_X6_Y9_N15
\baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[2]~12_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(2));

-- Location: LCCOMB_X6_Y9_N16
\baud_cont[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cont[3]~14_combout\ = (baud_cont(3) & (!\baud_cont[2]~13\)) # (!baud_cont(3) & ((\baud_cont[2]~13\) # (GND)))
-- \baud_cont[3]~15\ = CARRY((!\baud_cont[2]~13\) # (!baud_cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cont(3),
	datad => VCC,
	cin => \baud_cont[2]~13\,
	combout => \baud_cont[3]~14_combout\,
	cout => \baud_cont[3]~15\);

-- Location: FF_X6_Y9_N17
\baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[3]~14_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(3));

-- Location: FF_X6_Y9_N19
\baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_cont[4]~16_combout\,
	sclr => \baud_cont[0]~25_combout\,
	ena => \baud_cont[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cont(4));

-- Location: LCCOMB_X6_Y9_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!baud_cont(5) & ((!baud_cont(3)) # (!baud_cont(4))))) # (!baud_cont(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(4),
	datab => baud_cont(3),
	datac => baud_cont(6),
	datad => baud_cont(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y9_N18
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.data_bit~q\ & (baud_cont(7))) # (!\state.data_bit~q\ & ((\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cont(7),
	datab => \state.data_bit~q\,
	datac => \state.idle~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X5_Y9_N6
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\state.data_bit~q\ & (bit_cont(0) $ (((!\LessThan0~0_combout\ & \Selector10~0_combout\))))) # (!\state.data_bit~q\ & (((bit_cont(0) & \Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \state.data_bit~q\,
	datac => bit_cont(0),
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X5_Y9_N7
\bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cont(0));

-- Location: LCCOMB_X4_Y9_N18
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!bit_cont(0) & (!bit_cont(1) & (!bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X4_Y9_N0
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

-- Location: FF_X4_Y9_N1
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

-- Location: LCCOMB_X4_Y9_N12
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (bit_cont(0) & (!bit_cont(1) & (!bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X4_Y9_N30
\rx[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[1]~1_combout\ = (\Decoder0~2_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~2_combout\ & ((rx(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(1),
	datad => \Decoder0~2_combout\,
	combout => \rx[1]~1_combout\);

-- Location: FF_X4_Y9_N31
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

-- Location: LCCOMB_X4_Y9_N2
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!bit_cont(0) & (bit_cont(1) & (!bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X4_Y9_N16
\rx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[2]~2_combout\ = (\Decoder0~3_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~3_combout\ & ((rx(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(2),
	datad => \Decoder0~3_combout\,
	combout => \rx[2]~2_combout\);

-- Location: FF_X4_Y9_N17
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

-- Location: LCCOMB_X4_Y9_N24
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (bit_cont(0) & (bit_cont(1) & (!bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X4_Y9_N26
\rx[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[3]~3_combout\ = (\Decoder0~4_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~4_combout\ & ((rx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(3),
	datad => \Decoder0~4_combout\,
	combout => \rx[3]~3_combout\);

-- Location: FF_X4_Y9_N27
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

-- Location: LCCOMB_X4_Y9_N6
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!bit_cont(0) & (!bit_cont(1) & (bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X4_Y9_N20
\rx[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[4]~4_combout\ = (\Decoder0~5_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~5_combout\ & ((rx(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(4),
	datad => \Decoder0~5_combout\,
	combout => \rx[4]~4_combout\);

-- Location: FF_X4_Y9_N21
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

-- Location: LCCOMB_X4_Y9_N28
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (bit_cont(0) & (!bit_cont(1) & (bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X4_Y9_N22
\rx[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[5]~5_combout\ = (\Decoder0~6_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~6_combout\ & ((rx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(5),
	datad => \Decoder0~6_combout\,
	combout => \rx[5]~5_combout\);

-- Location: FF_X4_Y9_N23
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

-- Location: LCCOMB_X4_Y9_N10
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!bit_cont(0) & (bit_cont(1) & (bit_cont(2) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cont(0),
	datab => bit_cont(1),
	datac => bit_cont(2),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X4_Y9_N4
\rx[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx[6]~6_combout\ = (\Decoder0~7_combout\ & (\rx_serial~input_o\)) # (!\Decoder0~7_combout\ & ((rx(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_serial~input_o\,
	datac => rx(6),
	datad => \Decoder0~7_combout\,
	combout => \rx[6]~6_combout\);

-- Location: FF_X4_Y9_N5
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

-- Location: LCCOMB_X5_Y9_N8
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

-- Location: FF_X5_Y9_N9
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


