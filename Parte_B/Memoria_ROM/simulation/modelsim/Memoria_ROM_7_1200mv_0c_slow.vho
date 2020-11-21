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

-- DATE "05/06/2020 17:32:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Memoria_ROM IS
    PORT (
	clk : IN std_logic;
	address : IN std_logic_vector(5 DOWNTO 0);
	data_out : OUT std_logic_vector(10 DOWNTO 0)
	);
END Memoria_ROM;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Memoria_ROM IS
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
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(10 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \bit_test~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \bit_test~1_combout\ : std_logic;
SIGNAL dato_ok : std_logic_vector(10 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_address <= address;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X100_Y0_N2
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_ok(8),
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: IOIBUF_X33_Y0_N8
\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: LCCOMB_X34_Y1_N8
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\address[4]~input_o\ & ((\address[3]~input_o\ & (!\address[0]~input_o\ & !\address[1]~input_o\)) # (!\address[3]~input_o\ & (\address[0]~input_o\)))) # (!\address[4]~input_o\ & (\address[3]~input_o\ $ (\address[0]~input_o\ $ 
-- (\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X34_Y1_N14
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & ((!\address[3]~input_o\) # (!\address[4]~input_o\)))) # (!\address[0]~input_o\ & (\address[4]~input_o\ & (\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X38_Y0_N1
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X34_Y1_N2
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\address[5]~input_o\ & ((\address[2]~input_o\ & ((\Mux3~2_combout\))) # (!\address[2]~input_o\ & (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \Mux3~3_combout\,
	datac => \Mux3~2_combout\,
	datad => \address[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X34_Y1_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\address[4]~input_o\ & (!\address[3]~input_o\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X34_Y1_N26
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\) # ((\address[5]~input_o\ & (!\address[2]~input_o\ & \Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \address[2]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X34_Y1_N12
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\address[4]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ $ (!\address[0]~input_o\)))) # (!\address[4]~input_o\ & (\address[2]~input_o\ & (!\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X34_Y1_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\address[4]~input_o\) # ((\address[2]~input_o\) # ((\address[0]~input_o\) # (\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X34_Y1_N22
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\address[3]~input_o\ & (!\Mux1~1_combout\)) # (!\address[3]~input_o\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datac => \address[3]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X34_Y1_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\address[5]~input_o\ & (\Mux6~0_combout\ & ((!\address[2]~input_o\)))) # (!\address[5]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \Mux1~2_combout\,
	datad => \address[2]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X34_Y1_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\address[2]~input_o\ & (\address[5]~input_o\ $ (((!\address[1]~input_o\))))) # (!\address[2]~input_o\ & (!\address[5]~input_o\ & (\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X34_Y1_N30
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\address[4]~input_o\ & (((!\address[5]~input_o\)))) # (!\address[4]~input_o\ & ((\Mux0~0_combout\ & (!\address[3]~input_o\ & !\address[5]~input_o\)) # (!\Mux0~0_combout\ & ((!\address[5]~input_o\) # (!\address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \address[3]~input_o\,
	datad => \address[5]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X34_Y1_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\ $ (((!\address[4]~input_o\ & \address[1]~input_o\))))) # (!\address[3]~input_o\ & (\address[4]~input_o\ & (!\address[1]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X34_Y1_N6
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\address[1]~input_o\ & (((\address[3]~input_o\)))) # (!\address[1]~input_o\ & (\address[4]~input_o\ & ((!\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[2]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X34_Y1_N24
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\address[5]~input_o\ & (((\address[0]~input_o\)))) # (!\address[5]~input_o\ & ((\address[0]~input_o\ & (!\Mux6~1_combout\)) # (!\address[0]~input_o\ & ((\Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \Mux6~1_combout\,
	datac => \address[0]~input_o\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X34_Y1_N16
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\address[5]~input_o\ & (\Mux6~0_combout\ & ((\Mux6~3_combout\) # (\address[2]~input_o\)))) # (!\address[5]~input_o\ & (\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \address[2]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X34_Y1_N4
\bit_test~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_test~0_combout\ = \Mux3~5_combout\ $ (\Mux1~3_combout\ $ (\Mux0~1_combout\ $ (\Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux6~4_combout\,
	combout => \bit_test~0_combout\);

-- Location: LCCOMB_X33_Y1_N26
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ $ (((!\address[0]~input_o\ & !\address[3]~input_o\))))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\address[0]~input_o\))) # (!\address[3]~input_o\ & (\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X33_Y1_N14
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\ & ((\address[2]~input_o\) # (\address[3]~input_o\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & ((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X33_Y1_N20
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\address[3]~input_o\ & ((\address[1]~input_o\ & (!\address[0]~input_o\ & !\address[2]~input_o\)) # (!\address[1]~input_o\ & (\address[0]~input_o\ $ (\address[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y1_N16
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\address[5]~input_o\ & (!\address[4]~input_o\ & ((\Mux5~0_combout\)))) # (!\address[5]~input_o\ & (\address[4]~input_o\ & (\Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \address[4]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X33_Y1_N18
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~2_combout\) # ((!\address[5]~input_o\ & (!\address[4]~input_o\ & \Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \address[4]~input_o\,
	datac => \Mux5~3_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X33_Y1_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\address[1]~input_o\ & (!\address[4]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\))) # (!\address[1]~input_o\ & (\address[4]~input_o\ & (\address[2]~input_o\ $ (!\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[4]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y1_N10
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\address[1]~input_o\ & (!\address[4]~input_o\ & ((!\address[3]~input_o\)))) # (!\address[1]~input_o\ & ((\address[2]~input_o\ & ((!\address[3]~input_o\) # (!\address[4]~input_o\))) # (!\address[2]~input_o\ & ((\address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[4]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X33_Y1_N22
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~0_combout\ & (\address[0]~input_o\ & (\address[5]~input_o\ $ (!\Mux2~1_combout\)))) # (!\Mux2~0_combout\ & (!\address[5]~input_o\ & (!\address[0]~input_o\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \address[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X33_Y1_N30
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\address[0]~input_o\ & (((!\address[1]~input_o\)))) # (!\address[0]~input_o\ & (!\address[4]~input_o\ & (\address[2]~input_o\ $ (\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[4]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X33_Y1_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ $ (\address[4]~input_o\)))) # (!\address[0]~input_o\ & (\address[2]~input_o\ $ (((\address[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[4]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y1_N8
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\address[5]~input_o\ & ((\address[3]~input_o\ & ((\Mux4~0_combout\))) # (!\address[3]~input_o\ & (!\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \address[3]~input_o\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X33_Y1_N2
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\address[4]~input_o\) # ((\address[2]~input_o\ & ((\address[0]~input_o\) # (\address[1]~input_o\))) # (!\address[2]~input_o\ & (\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[4]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X33_Y1_N28
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~2_combout\) # ((\address[5]~input_o\ & (!\address[3]~input_o\ & !\Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \address[3]~input_o\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X33_Y1_N24
\bit_test~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_test~1_combout\ = \bit_test~0_combout\ $ (\Mux5~4_combout\ $ (\Mux2~2_combout\ $ (!\Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_test~0_combout\,
	datab => \Mux5~4_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux4~4_combout\,
	combout => \bit_test~1_combout\);

-- Location: FF_X33_Y1_N25
\dato_ok[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_test~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(1));

-- Location: FF_X34_Y1_N17
\dato_ok[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(2));

-- Location: FF_X33_Y1_N19
\dato_ok[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(3));

-- Location: FF_X33_Y1_N29
\dato_ok[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(4));

-- Location: FF_X34_Y1_N27
\dato_ok[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(5));

-- Location: FF_X33_Y1_N23
\dato_ok[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(6));

-- Location: FF_X34_Y1_N29
\dato_ok[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(7));

-- Location: FF_X34_Y1_N31
\dato_ok[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_ok(8));

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;
END structure;


