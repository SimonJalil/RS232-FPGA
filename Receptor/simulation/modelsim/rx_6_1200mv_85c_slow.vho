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

-- DATE "12/22/2020 18:19:20"

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
	rx : IN std_logic;
	salida : OUT std_logic_vector(6 DOWNTO 0);
	dig : OUT std_logic_vector(3 DOWNTO 0)
	);
END rx;

-- Design Ports Information
-- salida[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_rx : std_logic;
SIGNAL ww_salida : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_low~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida[0]~output_o\ : std_logic;
SIGNAL \salida[1]~output_o\ : std_logic;
SIGNAL \salida[2]~output_o\ : std_logic;
SIGNAL \salida[3]~output_o\ : std_logic;
SIGNAL \salida[4]~output_o\ : std_logic;
SIGNAL \salida[5]~output_o\ : std_logic;
SIGNAL \salida[6]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \seg|clkdiv[0]~57_combout\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \reset_low~inputclkctrl_outclk\ : std_logic;
SIGNAL \seg|clkdiv[1]~19_combout\ : std_logic;
SIGNAL \seg|clkdiv[1]~20\ : std_logic;
SIGNAL \seg|clkdiv[2]~21_combout\ : std_logic;
SIGNAL \seg|clkdiv[2]~22\ : std_logic;
SIGNAL \seg|clkdiv[3]~23_combout\ : std_logic;
SIGNAL \seg|clkdiv[3]~24\ : std_logic;
SIGNAL \seg|clkdiv[4]~25_combout\ : std_logic;
SIGNAL \seg|clkdiv[4]~26\ : std_logic;
SIGNAL \seg|clkdiv[5]~27_combout\ : std_logic;
SIGNAL \seg|clkdiv[5]~28\ : std_logic;
SIGNAL \seg|clkdiv[6]~29_combout\ : std_logic;
SIGNAL \seg|clkdiv[6]~30\ : std_logic;
SIGNAL \seg|clkdiv[7]~31_combout\ : std_logic;
SIGNAL \seg|clkdiv[7]~32\ : std_logic;
SIGNAL \seg|clkdiv[8]~33_combout\ : std_logic;
SIGNAL \seg|clkdiv[8]~34\ : std_logic;
SIGNAL \seg|clkdiv[9]~35_combout\ : std_logic;
SIGNAL \seg|clkdiv[9]~36\ : std_logic;
SIGNAL \seg|clkdiv[10]~37_combout\ : std_logic;
SIGNAL \seg|clkdiv[10]~38\ : std_logic;
SIGNAL \seg|clkdiv[11]~39_combout\ : std_logic;
SIGNAL \seg|clkdiv[11]~40\ : std_logic;
SIGNAL \seg|clkdiv[12]~41_combout\ : std_logic;
SIGNAL \seg|clkdiv[12]~42\ : std_logic;
SIGNAL \seg|clkdiv[13]~43_combout\ : std_logic;
SIGNAL \seg|clkdiv[13]~44\ : std_logic;
SIGNAL \seg|clkdiv[14]~45_combout\ : std_logic;
SIGNAL \seg|clkdiv[14]~46\ : std_logic;
SIGNAL \seg|clkdiv[15]~47_combout\ : std_logic;
SIGNAL \seg|clkdiv[15]~48\ : std_logic;
SIGNAL \seg|clkdiv[16]~49_combout\ : std_logic;
SIGNAL \seg|clkdiv[16]~50\ : std_logic;
SIGNAL \seg|clkdiv[17]~51_combout\ : std_logic;
SIGNAL \seg|clkdiv[17]~52\ : std_logic;
SIGNAL \seg|clkdiv[18]~53_combout\ : std_logic;
SIGNAL \seg|clkdiv[18]~54\ : std_logic;
SIGNAL \seg|clkdiv[19]~55_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \uart|Selector13~2_combout\ : std_logic;
SIGNAL \uart|baud_cont[0]~8_combout\ : std_logic;
SIGNAL \uart|LessThan0~0_combout\ : std_logic;
SIGNAL \uart|Decoder0~0_combout\ : std_logic;
SIGNAL \uart|Decoder0~7_combout\ : std_logic;
SIGNAL \uart|state.stop~2_combout\ : std_logic;
SIGNAL \uart|state.stop~q\ : std_logic;
SIGNAL \uart|baud_cont[7]~24_combout\ : std_logic;
SIGNAL \uart|state~7_combout\ : std_logic;
SIGNAL \uart|state.espera~q\ : std_logic;
SIGNAL \uart|Equal0~0_combout\ : std_logic;
SIGNAL \uart|Selector12~0_combout\ : std_logic;
SIGNAL \uart|Equal0~1_combout\ : std_logic;
SIGNAL \uart|Selector12~1_combout\ : std_logic;
SIGNAL \uart|state.start~q\ : std_logic;
SIGNAL \uart|Selector13~0_combout\ : std_logic;
SIGNAL \uart|Selector11~0_combout\ : std_logic;
SIGNAL \uart|state.idle~q\ : std_logic;
SIGNAL \uart|baud_cont[7]~25_combout\ : std_logic;
SIGNAL \uart|baud_cont[7]~26_combout\ : std_logic;
SIGNAL \uart|baud_cont[7]~27_combout\ : std_logic;
SIGNAL \uart|baud_cont[0]~9\ : std_logic;
SIGNAL \uart|baud_cont[1]~10_combout\ : std_logic;
SIGNAL \uart|baud_cont[1]~11\ : std_logic;
SIGNAL \uart|baud_cont[2]~12_combout\ : std_logic;
SIGNAL \uart|baud_cont[2]~13\ : std_logic;
SIGNAL \uart|baud_cont[3]~14_combout\ : std_logic;
SIGNAL \uart|baud_cont[3]~15\ : std_logic;
SIGNAL \uart|baud_cont[4]~16_combout\ : std_logic;
SIGNAL \uart|baud_cont[4]~17\ : std_logic;
SIGNAL \uart|baud_cont[5]~18_combout\ : std_logic;
SIGNAL \uart|baud_cont[5]~19\ : std_logic;
SIGNAL \uart|baud_cont[6]~20_combout\ : std_logic;
SIGNAL \uart|baud_cont[6]~21\ : std_logic;
SIGNAL \uart|baud_cont[7]~22_combout\ : std_logic;
SIGNAL \uart|LessThan0~1_combout\ : std_logic;
SIGNAL \uart|Selector13~1_combout\ : std_logic;
SIGNAL \uart|Selector13~3_combout\ : std_logic;
SIGNAL \uart|state.data_bit~q\ : std_logic;
SIGNAL \uart|Selector10~0_combout\ : std_logic;
SIGNAL \uart|Selector10~1_combout\ : std_logic;
SIGNAL \uart|Selector9~0_combout\ : std_logic;
SIGNAL \uart|Selector9~1_combout\ : std_logic;
SIGNAL \uart|Selector8~1_combout\ : std_logic;
SIGNAL \uart|Selector8~0_combout\ : std_logic;
SIGNAL \uart|Selector8~2_combout\ : std_logic;
SIGNAL \uart|Decoder0~6_combout\ : std_logic;
SIGNAL \uart|rx[2]~5_combout\ : std_logic;
SIGNAL \uart|Decoder0~5_combout\ : std_logic;
SIGNAL \uart|rx[6]~4_combout\ : std_logic;
SIGNAL \seg|Mux1~0_combout\ : std_logic;
SIGNAL \uart|Decoder0~4_combout\ : std_logic;
SIGNAL \uart|rx[1]~3_combout\ : std_logic;
SIGNAL \uart|Decoder0~3_combout\ : std_logic;
SIGNAL \uart|rx[5]~2_combout\ : std_logic;
SIGNAL \seg|Mux2~0_combout\ : std_logic;
SIGNAL \uart|Decoder0~8_combout\ : std_logic;
SIGNAL \uart|rx[3]~7_combout\ : std_logic;
SIGNAL \uart|rx[7]~6_combout\ : std_logic;
SIGNAL \seg|Mux0~0_combout\ : std_logic;
SIGNAL \uart|Decoder0~2_combout\ : std_logic;
SIGNAL \uart|rx[0]~1_combout\ : std_logic;
SIGNAL \uart|Decoder0~1_combout\ : std_logic;
SIGNAL \uart|rx[4]~0_combout\ : std_logic;
SIGNAL \seg|Mux3~0_combout\ : std_logic;
SIGNAL \seg|Mux10~0_combout\ : std_logic;
SIGNAL \seg|Mux9~0_combout\ : std_logic;
SIGNAL \seg|Mux8~0_combout\ : std_logic;
SIGNAL \seg|Mux7~0_combout\ : std_logic;
SIGNAL \seg|Mux6~0_combout\ : std_logic;
SIGNAL \seg|Mux5~0_combout\ : std_logic;
SIGNAL \seg|Mux4~0_combout\ : std_logic;
SIGNAL \seg|Decoder0~0_combout\ : std_logic;
SIGNAL \seg|Decoder0~1_combout\ : std_logic;
SIGNAL \seg|Decoder0~2_combout\ : std_logic;
SIGNAL \seg|Decoder0~3_combout\ : std_logic;
SIGNAL \uart|bit_cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart|rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|baud_cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg|clkdiv\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \seg|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \seg|ALT_INV_Mux10~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_low <= reset_low;
ww_rx <= rx;
salida <= ww_salida;
dig <= ww_dig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_low~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_low~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\seg|ALT_INV_Decoder0~3_combout\ <= NOT \seg|Decoder0~3_combout\;
\seg|ALT_INV_Decoder0~2_combout\ <= NOT \seg|Decoder0~2_combout\;
\seg|ALT_INV_Decoder0~1_combout\ <= NOT \seg|Decoder0~1_combout\;
\seg|ALT_INV_Mux10~0_combout\ <= NOT \seg|Mux10~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N16
\salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => \salida[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \salida[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \salida[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \salida[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\salida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \salida[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\salida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \salida[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\salida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \salida[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

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

-- Location: LCCOMB_X21_Y20_N12
\seg|clkdiv[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[0]~57_combout\ = !\seg|clkdiv\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg|clkdiv\(0),
	combout => \seg|clkdiv[0]~57_combout\);

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

-- Location: FF_X21_Y20_N13
\seg|clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[0]~57_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(0));

-- Location: LCCOMB_X21_Y20_N14
\seg|clkdiv[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[1]~19_combout\ = (\seg|clkdiv\(0) & (\seg|clkdiv\(1) $ (VCC))) # (!\seg|clkdiv\(0) & (\seg|clkdiv\(1) & VCC))
-- \seg|clkdiv[1]~20\ = CARRY((\seg|clkdiv\(0) & \seg|clkdiv\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(0),
	datab => \seg|clkdiv\(1),
	datad => VCC,
	combout => \seg|clkdiv[1]~19_combout\,
	cout => \seg|clkdiv[1]~20\);

-- Location: FF_X21_Y20_N15
\seg|clkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[1]~19_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(1));

-- Location: LCCOMB_X21_Y20_N16
\seg|clkdiv[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[2]~21_combout\ = (\seg|clkdiv\(2) & (!\seg|clkdiv[1]~20\)) # (!\seg|clkdiv\(2) & ((\seg|clkdiv[1]~20\) # (GND)))
-- \seg|clkdiv[2]~22\ = CARRY((!\seg|clkdiv[1]~20\) # (!\seg|clkdiv\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(2),
	datad => VCC,
	cin => \seg|clkdiv[1]~20\,
	combout => \seg|clkdiv[2]~21_combout\,
	cout => \seg|clkdiv[2]~22\);

-- Location: FF_X21_Y20_N17
\seg|clkdiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[2]~21_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(2));

-- Location: LCCOMB_X21_Y20_N18
\seg|clkdiv[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[3]~23_combout\ = (\seg|clkdiv\(3) & (\seg|clkdiv[2]~22\ $ (GND))) # (!\seg|clkdiv\(3) & (!\seg|clkdiv[2]~22\ & VCC))
-- \seg|clkdiv[3]~24\ = CARRY((\seg|clkdiv\(3) & !\seg|clkdiv[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(3),
	datad => VCC,
	cin => \seg|clkdiv[2]~22\,
	combout => \seg|clkdiv[3]~23_combout\,
	cout => \seg|clkdiv[3]~24\);

-- Location: FF_X21_Y20_N19
\seg|clkdiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[3]~23_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(3));

-- Location: LCCOMB_X21_Y20_N20
\seg|clkdiv[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[4]~25_combout\ = (\seg|clkdiv\(4) & (!\seg|clkdiv[3]~24\)) # (!\seg|clkdiv\(4) & ((\seg|clkdiv[3]~24\) # (GND)))
-- \seg|clkdiv[4]~26\ = CARRY((!\seg|clkdiv[3]~24\) # (!\seg|clkdiv\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(4),
	datad => VCC,
	cin => \seg|clkdiv[3]~24\,
	combout => \seg|clkdiv[4]~25_combout\,
	cout => \seg|clkdiv[4]~26\);

-- Location: FF_X21_Y20_N21
\seg|clkdiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[4]~25_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(4));

-- Location: LCCOMB_X21_Y20_N22
\seg|clkdiv[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[5]~27_combout\ = (\seg|clkdiv\(5) & (\seg|clkdiv[4]~26\ $ (GND))) # (!\seg|clkdiv\(5) & (!\seg|clkdiv[4]~26\ & VCC))
-- \seg|clkdiv[5]~28\ = CARRY((\seg|clkdiv\(5) & !\seg|clkdiv[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(5),
	datad => VCC,
	cin => \seg|clkdiv[4]~26\,
	combout => \seg|clkdiv[5]~27_combout\,
	cout => \seg|clkdiv[5]~28\);

-- Location: FF_X21_Y20_N23
\seg|clkdiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[5]~27_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(5));

-- Location: LCCOMB_X21_Y20_N24
\seg|clkdiv[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[6]~29_combout\ = (\seg|clkdiv\(6) & (!\seg|clkdiv[5]~28\)) # (!\seg|clkdiv\(6) & ((\seg|clkdiv[5]~28\) # (GND)))
-- \seg|clkdiv[6]~30\ = CARRY((!\seg|clkdiv[5]~28\) # (!\seg|clkdiv\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(6),
	datad => VCC,
	cin => \seg|clkdiv[5]~28\,
	combout => \seg|clkdiv[6]~29_combout\,
	cout => \seg|clkdiv[6]~30\);

-- Location: FF_X21_Y20_N25
\seg|clkdiv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[6]~29_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(6));

-- Location: LCCOMB_X21_Y20_N26
\seg|clkdiv[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[7]~31_combout\ = (\seg|clkdiv\(7) & (\seg|clkdiv[6]~30\ $ (GND))) # (!\seg|clkdiv\(7) & (!\seg|clkdiv[6]~30\ & VCC))
-- \seg|clkdiv[7]~32\ = CARRY((\seg|clkdiv\(7) & !\seg|clkdiv[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(7),
	datad => VCC,
	cin => \seg|clkdiv[6]~30\,
	combout => \seg|clkdiv[7]~31_combout\,
	cout => \seg|clkdiv[7]~32\);

-- Location: FF_X21_Y20_N27
\seg|clkdiv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[7]~31_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(7));

-- Location: LCCOMB_X21_Y20_N28
\seg|clkdiv[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[8]~33_combout\ = (\seg|clkdiv\(8) & (!\seg|clkdiv[7]~32\)) # (!\seg|clkdiv\(8) & ((\seg|clkdiv[7]~32\) # (GND)))
-- \seg|clkdiv[8]~34\ = CARRY((!\seg|clkdiv[7]~32\) # (!\seg|clkdiv\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(8),
	datad => VCC,
	cin => \seg|clkdiv[7]~32\,
	combout => \seg|clkdiv[8]~33_combout\,
	cout => \seg|clkdiv[8]~34\);

-- Location: FF_X21_Y20_N29
\seg|clkdiv[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[8]~33_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(8));

-- Location: LCCOMB_X21_Y20_N30
\seg|clkdiv[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[9]~35_combout\ = (\seg|clkdiv\(9) & (\seg|clkdiv[8]~34\ $ (GND))) # (!\seg|clkdiv\(9) & (!\seg|clkdiv[8]~34\ & VCC))
-- \seg|clkdiv[9]~36\ = CARRY((\seg|clkdiv\(9) & !\seg|clkdiv[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(9),
	datad => VCC,
	cin => \seg|clkdiv[8]~34\,
	combout => \seg|clkdiv[9]~35_combout\,
	cout => \seg|clkdiv[9]~36\);

-- Location: FF_X21_Y20_N31
\seg|clkdiv[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[9]~35_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(9));

-- Location: LCCOMB_X21_Y19_N0
\seg|clkdiv[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[10]~37_combout\ = (\seg|clkdiv\(10) & (!\seg|clkdiv[9]~36\)) # (!\seg|clkdiv\(10) & ((\seg|clkdiv[9]~36\) # (GND)))
-- \seg|clkdiv[10]~38\ = CARRY((!\seg|clkdiv[9]~36\) # (!\seg|clkdiv\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(10),
	datad => VCC,
	cin => \seg|clkdiv[9]~36\,
	combout => \seg|clkdiv[10]~37_combout\,
	cout => \seg|clkdiv[10]~38\);

-- Location: FF_X21_Y19_N1
\seg|clkdiv[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[10]~37_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(10));

-- Location: LCCOMB_X21_Y19_N2
\seg|clkdiv[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[11]~39_combout\ = (\seg|clkdiv\(11) & (\seg|clkdiv[10]~38\ $ (GND))) # (!\seg|clkdiv\(11) & (!\seg|clkdiv[10]~38\ & VCC))
-- \seg|clkdiv[11]~40\ = CARRY((\seg|clkdiv\(11) & !\seg|clkdiv[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(11),
	datad => VCC,
	cin => \seg|clkdiv[10]~38\,
	combout => \seg|clkdiv[11]~39_combout\,
	cout => \seg|clkdiv[11]~40\);

-- Location: FF_X21_Y19_N3
\seg|clkdiv[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[11]~39_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(11));

-- Location: LCCOMB_X21_Y19_N4
\seg|clkdiv[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[12]~41_combout\ = (\seg|clkdiv\(12) & (!\seg|clkdiv[11]~40\)) # (!\seg|clkdiv\(12) & ((\seg|clkdiv[11]~40\) # (GND)))
-- \seg|clkdiv[12]~42\ = CARRY((!\seg|clkdiv[11]~40\) # (!\seg|clkdiv\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(12),
	datad => VCC,
	cin => \seg|clkdiv[11]~40\,
	combout => \seg|clkdiv[12]~41_combout\,
	cout => \seg|clkdiv[12]~42\);

-- Location: FF_X21_Y19_N5
\seg|clkdiv[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[12]~41_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(12));

-- Location: LCCOMB_X21_Y19_N6
\seg|clkdiv[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[13]~43_combout\ = (\seg|clkdiv\(13) & (\seg|clkdiv[12]~42\ $ (GND))) # (!\seg|clkdiv\(13) & (!\seg|clkdiv[12]~42\ & VCC))
-- \seg|clkdiv[13]~44\ = CARRY((\seg|clkdiv\(13) & !\seg|clkdiv[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(13),
	datad => VCC,
	cin => \seg|clkdiv[12]~42\,
	combout => \seg|clkdiv[13]~43_combout\,
	cout => \seg|clkdiv[13]~44\);

-- Location: FF_X21_Y19_N7
\seg|clkdiv[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[13]~43_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(13));

-- Location: LCCOMB_X21_Y19_N8
\seg|clkdiv[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[14]~45_combout\ = (\seg|clkdiv\(14) & (!\seg|clkdiv[13]~44\)) # (!\seg|clkdiv\(14) & ((\seg|clkdiv[13]~44\) # (GND)))
-- \seg|clkdiv[14]~46\ = CARRY((!\seg|clkdiv[13]~44\) # (!\seg|clkdiv\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(14),
	datad => VCC,
	cin => \seg|clkdiv[13]~44\,
	combout => \seg|clkdiv[14]~45_combout\,
	cout => \seg|clkdiv[14]~46\);

-- Location: FF_X21_Y19_N9
\seg|clkdiv[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[14]~45_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(14));

-- Location: LCCOMB_X21_Y19_N10
\seg|clkdiv[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[15]~47_combout\ = (\seg|clkdiv\(15) & (\seg|clkdiv[14]~46\ $ (GND))) # (!\seg|clkdiv\(15) & (!\seg|clkdiv[14]~46\ & VCC))
-- \seg|clkdiv[15]~48\ = CARRY((\seg|clkdiv\(15) & !\seg|clkdiv[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(15),
	datad => VCC,
	cin => \seg|clkdiv[14]~46\,
	combout => \seg|clkdiv[15]~47_combout\,
	cout => \seg|clkdiv[15]~48\);

-- Location: FF_X21_Y19_N11
\seg|clkdiv[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[15]~47_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(15));

-- Location: LCCOMB_X21_Y19_N12
\seg|clkdiv[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[16]~49_combout\ = (\seg|clkdiv\(16) & (!\seg|clkdiv[15]~48\)) # (!\seg|clkdiv\(16) & ((\seg|clkdiv[15]~48\) # (GND)))
-- \seg|clkdiv[16]~50\ = CARRY((!\seg|clkdiv[15]~48\) # (!\seg|clkdiv\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(16),
	datad => VCC,
	cin => \seg|clkdiv[15]~48\,
	combout => \seg|clkdiv[16]~49_combout\,
	cout => \seg|clkdiv[16]~50\);

-- Location: FF_X21_Y19_N13
\seg|clkdiv[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[16]~49_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(16));

-- Location: LCCOMB_X21_Y19_N14
\seg|clkdiv[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[17]~51_combout\ = (\seg|clkdiv\(17) & (\seg|clkdiv[16]~50\ $ (GND))) # (!\seg|clkdiv\(17) & (!\seg|clkdiv[16]~50\ & VCC))
-- \seg|clkdiv[17]~52\ = CARRY((\seg|clkdiv\(17) & !\seg|clkdiv[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(17),
	datad => VCC,
	cin => \seg|clkdiv[16]~50\,
	combout => \seg|clkdiv[17]~51_combout\,
	cout => \seg|clkdiv[17]~52\);

-- Location: FF_X21_Y19_N15
\seg|clkdiv[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[17]~51_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(17));

-- Location: LCCOMB_X21_Y19_N16
\seg|clkdiv[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[18]~53_combout\ = (\seg|clkdiv\(18) & (!\seg|clkdiv[17]~52\)) # (!\seg|clkdiv\(18) & ((\seg|clkdiv[17]~52\) # (GND)))
-- \seg|clkdiv[18]~54\ = CARRY((!\seg|clkdiv[17]~52\) # (!\seg|clkdiv\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg|clkdiv\(18),
	datad => VCC,
	cin => \seg|clkdiv[17]~52\,
	combout => \seg|clkdiv[18]~53_combout\,
	cout => \seg|clkdiv[18]~54\);

-- Location: FF_X21_Y19_N17
\seg|clkdiv[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[18]~53_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(18));

-- Location: LCCOMB_X21_Y19_N18
\seg|clkdiv[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|clkdiv[19]~55_combout\ = \seg|clkdiv[18]~54\ $ (!\seg|clkdiv\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \seg|clkdiv\(19),
	cin => \seg|clkdiv[18]~54\,
	combout => \seg|clkdiv[19]~55_combout\);

-- Location: FF_X21_Y19_N19
\seg|clkdiv[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg|clkdiv[19]~55_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg|clkdiv\(19));

-- Location: IOIBUF_X23_Y24_N8
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X22_Y21_N14
\uart|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector13~2_combout\ = (\uart|state.data_bit~q\ & (((!\uart|bit_cont\(2)) # (!\uart|bit_cont\(0))) # (!\uart|bit_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(1),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(2),
	datad => \uart|state.data_bit~q\,
	combout => \uart|Selector13~2_combout\);

-- Location: LCCOMB_X24_Y21_N12
\uart|baud_cont[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[0]~8_combout\ = \uart|baud_cont\(0) $ (VCC)
-- \uart|baud_cont[0]~9\ = CARRY(\uart|baud_cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|baud_cont\(0),
	datad => VCC,
	combout => \uart|baud_cont[0]~8_combout\,
	cout => \uart|baud_cont[0]~9\);

-- Location: LCCOMB_X24_Y21_N28
\uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~0_combout\ = ((!\uart|baud_cont\(5) & ((!\uart|baud_cont\(3)) # (!\uart|baud_cont\(4))))) # (!\uart|baud_cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|baud_cont\(4),
	datab => \uart|baud_cont\(3),
	datac => \uart|baud_cont\(5),
	datad => \uart|baud_cont\(6),
	combout => \uart|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y21_N2
\uart|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~0_combout\ = (\uart|state.data_bit~q\ & (\uart|baud_cont\(7) & !\uart|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|state.data_bit~q\,
	datac => \uart|baud_cont\(7),
	datad => \uart|LessThan0~0_combout\,
	combout => \uart|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\uart|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~7_combout\ = (\uart|bit_cont\(2) & (\uart|bit_cont\(1) & (\uart|bit_cont\(0) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(1),
	datac => \uart|bit_cont\(0),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y21_N4
\uart|state.stop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|state.stop~2_combout\ = (\uart|Decoder0~7_combout\) # ((\uart|state.stop~q\ & ((\uart|LessThan0~0_combout\) # (!\uart|baud_cont\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|baud_cont\(7),
	datab => \uart|LessThan0~0_combout\,
	datac => \uart|state.stop~q\,
	datad => \uart|Decoder0~7_combout\,
	combout => \uart|state.stop~2_combout\);

-- Location: FF_X23_Y21_N5
\uart|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|state.stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state.stop~q\);

-- Location: LCCOMB_X23_Y21_N14
\uart|baud_cont[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[7]~24_combout\ = (\uart|state.stop~q\) # (\uart|state.data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|state.stop~q\,
	datad => \uart|state.data_bit~q\,
	combout => \uart|baud_cont[7]~24_combout\);

-- Location: LCCOMB_X23_Y21_N6
\uart|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|state~7_combout\ = (\uart|state.stop~q\ & (\uart|baud_cont\(7) & !\uart|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|state.stop~q\,
	datac => \uart|baud_cont\(7),
	datad => \uart|LessThan0~0_combout\,
	combout => \uart|state~7_combout\);

-- Location: FF_X23_Y21_N7
\uart|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state.espera~q\);

-- Location: LCCOMB_X24_Y21_N6
\uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~0_combout\ = (\uart|baud_cont\(5) & (!\uart|baud_cont\(4) & (\uart|baud_cont\(6) & \uart|baud_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|baud_cont\(5),
	datab => \uart|baud_cont\(4),
	datac => \uart|baud_cont\(6),
	datad => \uart|baud_cont\(3),
	combout => \uart|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y21_N8
\uart|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector12~0_combout\ = (!\rx~input_o\ & !\uart|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \uart|state.idle~q\,
	combout => \uart|Selector12~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\uart|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~1_combout\ = (!\uart|baud_cont\(0) & (!\uart|baud_cont\(1) & (!\uart|baud_cont\(7) & \uart|baud_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|baud_cont\(0),
	datab => \uart|baud_cont\(1),
	datac => \uart|baud_cont\(7),
	datad => \uart|baud_cont\(2),
	combout => \uart|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y21_N16
\uart|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector12~1_combout\ = (\uart|Selector12~0_combout\) # ((\uart|state.start~q\ & ((!\uart|Equal0~1_combout\) # (!\uart|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~0_combout\,
	datab => \uart|Selector12~0_combout\,
	datac => \uart|state.start~q\,
	datad => \uart|Equal0~1_combout\,
	combout => \uart|Selector12~1_combout\);

-- Location: FF_X23_Y21_N17
\uart|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state.start~q\);

-- Location: LCCOMB_X24_Y21_N10
\uart|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector13~0_combout\ = (\uart|state.start~q\ & (\uart|Equal0~1_combout\ & \uart|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|state.start~q\,
	datac => \uart|Equal0~1_combout\,
	datad => \uart|Equal0~0_combout\,
	combout => \uart|Selector13~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\uart|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector11~0_combout\ = (!\uart|state.espera~q\ & (((\uart|state.idle~q\ & !\uart|Selector13~0_combout\)) # (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \uart|state.espera~q\,
	datac => \uart|state.idle~q\,
	datad => \uart|Selector13~0_combout\,
	combout => \uart|Selector11~0_combout\);

-- Location: FF_X24_Y21_N31
\uart|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state.idle~q\);

-- Location: LCCOMB_X24_Y21_N0
\uart|baud_cont[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[7]~25_combout\ = \uart|state.idle~q\ $ (\uart|Selector13~0_combout\ $ (((!\uart|LessThan0~1_combout\) # (!\uart|baud_cont[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|baud_cont[7]~24_combout\,
	datab => \uart|state.idle~q\,
	datac => \uart|LessThan0~1_combout\,
	datad => \uart|Selector13~0_combout\,
	combout => \uart|baud_cont[7]~25_combout\);

-- Location: LCCOMB_X23_Y21_N8
\uart|baud_cont[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[7]~26_combout\ = (!\uart|state.start~q\) # (!\rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \uart|state.start~q\,
	combout => \uart|baud_cont[7]~26_combout\);

-- Location: LCCOMB_X24_Y21_N2
\uart|baud_cont[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[7]~27_combout\ = (!\uart|state.espera~q\ & (((\uart|baud_cont[7]~26_combout\) # (!\uart|Equal0~1_combout\)) # (!\uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~0_combout\,
	datab => \uart|state.espera~q\,
	datac => \uart|Equal0~1_combout\,
	datad => \uart|baud_cont[7]~26_combout\,
	combout => \uart|baud_cont[7]~27_combout\);

-- Location: FF_X24_Y21_N13
\uart|baud_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[0]~8_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(0));

-- Location: LCCOMB_X24_Y21_N14
\uart|baud_cont[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[1]~10_combout\ = (\uart|baud_cont\(1) & (!\uart|baud_cont[0]~9\)) # (!\uart|baud_cont\(1) & ((\uart|baud_cont[0]~9\) # (GND)))
-- \uart|baud_cont[1]~11\ = CARRY((!\uart|baud_cont[0]~9\) # (!\uart|baud_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|baud_cont\(1),
	datad => VCC,
	cin => \uart|baud_cont[0]~9\,
	combout => \uart|baud_cont[1]~10_combout\,
	cout => \uart|baud_cont[1]~11\);

-- Location: FF_X24_Y21_N15
\uart|baud_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[1]~10_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(1));

-- Location: LCCOMB_X24_Y21_N16
\uart|baud_cont[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[2]~12_combout\ = (\uart|baud_cont\(2) & (\uart|baud_cont[1]~11\ $ (GND))) # (!\uart|baud_cont\(2) & (!\uart|baud_cont[1]~11\ & VCC))
-- \uart|baud_cont[2]~13\ = CARRY((\uart|baud_cont\(2) & !\uart|baud_cont[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|baud_cont\(2),
	datad => VCC,
	cin => \uart|baud_cont[1]~11\,
	combout => \uart|baud_cont[2]~12_combout\,
	cout => \uart|baud_cont[2]~13\);

-- Location: FF_X24_Y21_N17
\uart|baud_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[2]~12_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(2));

-- Location: LCCOMB_X24_Y21_N18
\uart|baud_cont[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[3]~14_combout\ = (\uart|baud_cont\(3) & (!\uart|baud_cont[2]~13\)) # (!\uart|baud_cont\(3) & ((\uart|baud_cont[2]~13\) # (GND)))
-- \uart|baud_cont[3]~15\ = CARRY((!\uart|baud_cont[2]~13\) # (!\uart|baud_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|baud_cont\(3),
	datad => VCC,
	cin => \uart|baud_cont[2]~13\,
	combout => \uart|baud_cont[3]~14_combout\,
	cout => \uart|baud_cont[3]~15\);

-- Location: FF_X24_Y21_N19
\uart|baud_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[3]~14_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(3));

-- Location: LCCOMB_X24_Y21_N20
\uart|baud_cont[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[4]~16_combout\ = (\uart|baud_cont\(4) & (\uart|baud_cont[3]~15\ $ (GND))) # (!\uart|baud_cont\(4) & (!\uart|baud_cont[3]~15\ & VCC))
-- \uart|baud_cont[4]~17\ = CARRY((\uart|baud_cont\(4) & !\uart|baud_cont[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|baud_cont\(4),
	datad => VCC,
	cin => \uart|baud_cont[3]~15\,
	combout => \uart|baud_cont[4]~16_combout\,
	cout => \uart|baud_cont[4]~17\);

-- Location: FF_X24_Y21_N21
\uart|baud_cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[4]~16_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(4));

-- Location: LCCOMB_X24_Y21_N22
\uart|baud_cont[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[5]~18_combout\ = (\uart|baud_cont\(5) & (!\uart|baud_cont[4]~17\)) # (!\uart|baud_cont\(5) & ((\uart|baud_cont[4]~17\) # (GND)))
-- \uart|baud_cont[5]~19\ = CARRY((!\uart|baud_cont[4]~17\) # (!\uart|baud_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|baud_cont\(5),
	datad => VCC,
	cin => \uart|baud_cont[4]~17\,
	combout => \uart|baud_cont[5]~18_combout\,
	cout => \uart|baud_cont[5]~19\);

-- Location: FF_X24_Y21_N23
\uart|baud_cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[5]~18_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(5));

-- Location: LCCOMB_X24_Y21_N24
\uart|baud_cont[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[6]~20_combout\ = (\uart|baud_cont\(6) & (\uart|baud_cont[5]~19\ $ (GND))) # (!\uart|baud_cont\(6) & (!\uart|baud_cont[5]~19\ & VCC))
-- \uart|baud_cont[6]~21\ = CARRY((\uart|baud_cont\(6) & !\uart|baud_cont[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|baud_cont\(6),
	datad => VCC,
	cin => \uart|baud_cont[5]~19\,
	combout => \uart|baud_cont[6]~20_combout\,
	cout => \uart|baud_cont[6]~21\);

-- Location: FF_X24_Y21_N25
\uart|baud_cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[6]~20_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(6));

-- Location: LCCOMB_X24_Y21_N26
\uart|baud_cont[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|baud_cont[7]~22_combout\ = \uart|baud_cont[6]~21\ $ (\uart|baud_cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart|baud_cont\(7),
	cin => \uart|baud_cont[6]~21\,
	combout => \uart|baud_cont[7]~22_combout\);

-- Location: FF_X24_Y21_N27
\uart|baud_cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|baud_cont[7]~22_combout\,
	sclr => \uart|baud_cont[7]~25_combout\,
	ena => \uart|baud_cont[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|baud_cont\(7));

-- Location: LCCOMB_X24_Y21_N8
\uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~1_combout\ = (\uart|baud_cont\(7) & !\uart|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|baud_cont\(7),
	datad => \uart|LessThan0~0_combout\,
	combout => \uart|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y21_N18
\uart|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector13~1_combout\ = (\uart|Equal0~1_combout\ & (!\rx~input_o\ & (\uart|state.start~q\ & \uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~1_combout\,
	datab => \rx~input_o\,
	datac => \uart|state.start~q\,
	datad => \uart|Equal0~0_combout\,
	combout => \uart|Selector13~1_combout\);

-- Location: LCCOMB_X23_Y21_N20
\uart|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector13~3_combout\ = (\uart|Selector13~2_combout\) # ((\uart|Selector13~1_combout\) # ((!\uart|LessThan0~1_combout\ & \uart|state.data_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Selector13~2_combout\,
	datab => \uart|LessThan0~1_combout\,
	datac => \uart|state.data_bit~q\,
	datad => \uart|Selector13~1_combout\,
	combout => \uart|Selector13~3_combout\);

-- Location: FF_X23_Y21_N21
\uart|state.data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|Selector13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state.data_bit~q\);

-- Location: LCCOMB_X23_Y21_N22
\uart|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector10~0_combout\ = (\uart|state.data_bit~q\ & (\uart|baud_cont\(7))) # (!\uart|state.data_bit~q\ & ((\uart|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|state.data_bit~q\,
	datac => \uart|baud_cont\(7),
	datad => \uart|state.idle~q\,
	combout => \uart|Selector10~0_combout\);

-- Location: LCCOMB_X23_Y21_N26
\uart|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector10~1_combout\ = (\uart|Selector10~0_combout\ & (\uart|bit_cont\(0) $ (((\uart|state.data_bit~q\ & !\uart|LessThan0~0_combout\))))) # (!\uart|Selector10~0_combout\ & (\uart|state.data_bit~q\ & (\uart|bit_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Selector10~0_combout\,
	datab => \uart|state.data_bit~q\,
	datac => \uart|bit_cont\(0),
	datad => \uart|LessThan0~0_combout\,
	combout => \uart|Selector10~1_combout\);

-- Location: FF_X23_Y21_N27
\uart|bit_cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|bit_cont\(0));

-- Location: LCCOMB_X23_Y21_N12
\uart|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector9~0_combout\ = (\uart|bit_cont\(1) & ((\uart|state.data_bit~q\ & (!\uart|LessThan0~1_combout\)) # (!\uart|state.data_bit~q\ & ((\uart|state.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|state.data_bit~q\,
	datab => \uart|bit_cont\(1),
	datac => \uart|LessThan0~1_combout\,
	datad => \uart|state.idle~q\,
	combout => \uart|Selector9~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\uart|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector9~1_combout\ = (\uart|Selector9~0_combout\) # ((\uart|Decoder0~0_combout\ & (\uart|bit_cont\(0) $ (\uart|bit_cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(0),
	datab => \uart|Decoder0~0_combout\,
	datac => \uart|bit_cont\(1),
	datad => \uart|Selector9~0_combout\,
	combout => \uart|Selector9~1_combout\);

-- Location: FF_X23_Y21_N25
\uart|bit_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|bit_cont\(1));

-- Location: LCCOMB_X22_Y21_N12
\uart|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~1_combout\ = (\uart|bit_cont\(0) & (\uart|bit_cont\(1) $ (\uart|bit_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(1),
	datac => \uart|bit_cont\(2),
	datad => \uart|bit_cont\(0),
	combout => \uart|Selector8~1_combout\);

-- Location: LCCOMB_X23_Y21_N10
\uart|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~0_combout\ = (\uart|state.data_bit~q\ & (((!\uart|LessThan0~1_combout\)) # (!\uart|bit_cont\(0)))) # (!\uart|state.data_bit~q\ & (((\uart|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(0),
	datab => \uart|state.data_bit~q\,
	datac => \uart|LessThan0~1_combout\,
	datad => \uart|state.idle~q\,
	combout => \uart|Selector8~0_combout\);

-- Location: LCCOMB_X23_Y21_N30
\uart|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~2_combout\ = (\uart|Selector8~1_combout\ & ((\uart|Decoder0~0_combout\) # ((\uart|bit_cont\(2) & \uart|Selector8~0_combout\)))) # (!\uart|Selector8~1_combout\ & (((\uart|bit_cont\(2) & \uart|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Selector8~1_combout\,
	datab => \uart|Decoder0~0_combout\,
	datac => \uart|bit_cont\(2),
	datad => \uart|Selector8~0_combout\,
	combout => \uart|Selector8~2_combout\);

-- Location: FF_X23_Y21_N31
\uart|bit_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|bit_cont\(2));

-- Location: LCCOMB_X22_Y21_N16
\uart|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~6_combout\ = (!\uart|bit_cont\(2) & (!\uart|bit_cont\(0) & (\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y21_N30
\uart|rx[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[2]~5_combout\ = (\uart|Decoder0~6_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~6_combout\ & ((\uart|rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(2),
	datad => \uart|Decoder0~6_combout\,
	combout => \uart|rx[2]~5_combout\);

-- Location: FF_X22_Y21_N31
\uart|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(2));

-- Location: LCCOMB_X22_Y21_N2
\uart|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~5_combout\ = (\uart|bit_cont\(2) & (!\uart|bit_cont\(0) & (\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y21_N28
\uart|rx[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[6]~4_combout\ = (\uart|Decoder0~5_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~5_combout\ & ((\uart|rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(6),
	datad => \uart|Decoder0~5_combout\,
	combout => \uart|rx[6]~4_combout\);

-- Location: FF_X22_Y21_N29
\uart|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(6));

-- Location: LCCOMB_X22_Y20_N12
\seg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux1~0_combout\ = (!\seg|clkdiv\(19) & ((\seg|clkdiv\(18) & ((\uart|rx\(6)))) # (!\seg|clkdiv\(18) & (\uart|rx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(18),
	datab => \seg|clkdiv\(19),
	datac => \uart|rx\(2),
	datad => \uart|rx\(6),
	combout => \seg|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\uart|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~4_combout\ = (!\uart|bit_cont\(2) & (\uart|bit_cont\(0) & (!\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y21_N22
\uart|rx[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[1]~3_combout\ = (\uart|Decoder0~4_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~4_combout\ & ((\uart|rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(1),
	datad => \uart|Decoder0~4_combout\,
	combout => \uart|rx[1]~3_combout\);

-- Location: FF_X22_Y21_N23
\uart|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(1));

-- Location: LCCOMB_X22_Y21_N6
\uart|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~3_combout\ = (\uart|bit_cont\(2) & (\uart|bit_cont\(0) & (!\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y21_N8
\uart|rx[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[5]~2_combout\ = (\uart|Decoder0~3_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~3_combout\ & ((\uart|rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(5),
	datad => \uart|Decoder0~3_combout\,
	combout => \uart|rx[5]~2_combout\);

-- Location: FF_X22_Y21_N9
\uart|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(5));

-- Location: LCCOMB_X22_Y20_N18
\seg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux2~0_combout\ = (!\seg|clkdiv\(19) & ((\seg|clkdiv\(18) & ((\uart|rx\(5)))) # (!\seg|clkdiv\(18) & (\uart|rx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(18),
	datab => \seg|clkdiv\(19),
	datac => \uart|rx\(1),
	datad => \uart|rx\(5),
	combout => \seg|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y21_N18
\uart|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~8_combout\ = (!\uart|bit_cont\(2) & (\uart|bit_cont\(0) & (\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y21_N20
\uart|rx[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[3]~7_combout\ = (\uart|Decoder0~8_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~8_combout\ & ((\uart|rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(3),
	datad => \uart|Decoder0~8_combout\,
	combout => \uart|rx[3]~7_combout\);

-- Location: FF_X22_Y21_N21
\uart|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(3));

-- Location: LCCOMB_X23_Y21_N28
\uart|rx[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[7]~6_combout\ = (\uart|Decoder0~7_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~7_combout\ & ((\uart|rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(7),
	datad => \uart|Decoder0~7_combout\,
	combout => \uart|rx[7]~6_combout\);

-- Location: FF_X23_Y21_N29
\uart|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(7));

-- Location: LCCOMB_X22_Y20_N22
\seg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux0~0_combout\ = (!\seg|clkdiv\(19) & ((\seg|clkdiv\(18) & ((\uart|rx\(7)))) # (!\seg|clkdiv\(18) & (\uart|rx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(18),
	datab => \uart|rx\(3),
	datac => \seg|clkdiv\(19),
	datad => \uart|rx\(7),
	combout => \seg|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\uart|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~2_combout\ = (!\uart|bit_cont\(2) & (!\uart|bit_cont\(0) & (!\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y21_N26
\uart|rx[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[0]~1_combout\ = (\uart|Decoder0~2_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~2_combout\ & ((\uart|rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(0),
	datad => \uart|Decoder0~2_combout\,
	combout => \uart|rx[0]~1_combout\);

-- Location: FF_X22_Y21_N27
\uart|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(0));

-- Location: LCCOMB_X22_Y21_N10
\uart|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Decoder0~1_combout\ = (\uart|bit_cont\(2) & (!\uart|bit_cont\(0) & (!\uart|bit_cont\(1) & \uart|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|bit_cont\(2),
	datab => \uart|bit_cont\(0),
	datac => \uart|bit_cont\(1),
	datad => \uart|Decoder0~0_combout\,
	combout => \uart|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y21_N4
\uart|rx[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|rx[4]~0_combout\ = (\uart|Decoder0~1_combout\ & (\rx~input_o\)) # (!\uart|Decoder0~1_combout\ & ((\uart|rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \uart|rx\(4),
	datad => \uart|Decoder0~1_combout\,
	combout => \uart|rx[4]~0_combout\);

-- Location: FF_X22_Y21_N5
\uart|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx\(4));

-- Location: LCCOMB_X22_Y20_N20
\seg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux3~0_combout\ = (!\seg|clkdiv\(19) & ((\seg|clkdiv\(18) & ((\uart|rx\(4)))) # (!\seg|clkdiv\(18) & (\uart|rx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|clkdiv\(18),
	datab => \seg|clkdiv\(19),
	datac => \uart|rx\(0),
	datad => \uart|rx\(4),
	combout => \seg|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\seg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux10~0_combout\ = (\seg|Mux3~0_combout\ & ((\seg|Mux0~0_combout\) # (\seg|Mux1~0_combout\ $ (\seg|Mux2~0_combout\)))) # (!\seg|Mux3~0_combout\ & ((\seg|Mux2~0_combout\) # (\seg|Mux1~0_combout\ $ (\seg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux10~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\seg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux9~0_combout\ = (\seg|Mux2~0_combout\ & (!\seg|Mux1~0_combout\ & (!\seg|Mux0~0_combout\))) # (!\seg|Mux2~0_combout\ & (\seg|Mux3~0_combout\ & (\seg|Mux1~0_combout\ $ (!\seg|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y20_N4
\seg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux8~0_combout\ = (\seg|Mux2~0_combout\ & (((!\seg|Mux0~0_combout\ & \seg|Mux3~0_combout\)))) # (!\seg|Mux2~0_combout\ & ((\seg|Mux1~0_combout\ & (!\seg|Mux0~0_combout\)) # (!\seg|Mux1~0_combout\ & ((\seg|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\seg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux7~0_combout\ = (\seg|Mux2~0_combout\ & (\seg|Mux1~0_combout\ & ((\seg|Mux3~0_combout\)))) # (!\seg|Mux2~0_combout\ & (!\seg|Mux0~0_combout\ & (\seg|Mux1~0_combout\ $ (\seg|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y20_N16
\seg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux6~0_combout\ = (\seg|Mux1~0_combout\ & (\seg|Mux0~0_combout\ & ((\seg|Mux2~0_combout\) # (!\seg|Mux3~0_combout\)))) # (!\seg|Mux1~0_combout\ & (\seg|Mux2~0_combout\ & (!\seg|Mux0~0_combout\ & !\seg|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y20_N14
\seg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux5~0_combout\ = (\seg|Mux2~0_combout\ & ((\seg|Mux0~0_combout\) # ((\seg|Mux1~0_combout\ & !\seg|Mux3~0_combout\)))) # (!\seg|Mux2~0_combout\ & (\seg|Mux1~0_combout\ & (\seg|Mux0~0_combout\ $ (\seg|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\seg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Mux4~0_combout\ = (\seg|Mux1~0_combout\ & (!\seg|Mux2~0_combout\ & (\seg|Mux0~0_combout\ $ (!\seg|Mux3~0_combout\)))) # (!\seg|Mux1~0_combout\ & ((\seg|Mux2~0_combout\ & (\seg|Mux0~0_combout\)) # (!\seg|Mux2~0_combout\ & (!\seg|Mux0~0_combout\ & 
-- \seg|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg|Mux1~0_combout\,
	datab => \seg|Mux2~0_combout\,
	datac => \seg|Mux0~0_combout\,
	datad => \seg|Mux3~0_combout\,
	combout => \seg|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\seg|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Decoder0~0_combout\ = (\seg|clkdiv\(19)) # (\seg|clkdiv\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg|clkdiv\(19),
	datad => \seg|clkdiv\(18),
	combout => \seg|Decoder0~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\seg|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Decoder0~1_combout\ = (!\seg|clkdiv\(19) & \seg|clkdiv\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg|clkdiv\(19),
	datad => \seg|clkdiv\(18),
	combout => \seg|Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y20_N26
\seg|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Decoder0~2_combout\ = (\seg|clkdiv\(19) & !\seg|clkdiv\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg|clkdiv\(19),
	datad => \seg|clkdiv\(18),
	combout => \seg|Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y20_N28
\seg|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg|Decoder0~3_combout\ = (\seg|clkdiv\(19) & \seg|clkdiv\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg|clkdiv\(19),
	datad => \seg|clkdiv\(18),
	combout => \seg|Decoder0~3_combout\);

ww_salida(0) <= \salida[0]~output_o\;

ww_salida(1) <= \salida[1]~output_o\;

ww_salida(2) <= \salida[2]~output_o\;

ww_salida(3) <= \salida[3]~output_o\;

ww_salida(4) <= \salida[4]~output_o\;

ww_salida(5) <= \salida[5]~output_o\;

ww_salida(6) <= \salida[6]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;
END structure;


