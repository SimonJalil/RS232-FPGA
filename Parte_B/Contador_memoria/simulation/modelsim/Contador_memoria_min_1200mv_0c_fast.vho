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

-- DATE "05/07/2020 14:08:18"

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

ENTITY 	Contador_memoria IS
    PORT (
	entradas : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	reset_low : IN std_logic;
	send_ready : OUT std_logic;
	address_out : OUT std_logic_vector(5 DOWNTO 0)
	);
END Contador_memoria;

-- Design Ports Information
-- send_ready	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_out[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_low	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador_memoria IS
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
SIGNAL ww_send_ready : std_logic;
SIGNAL ww_address_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \reset_low~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \address_out[0]~output_o\ : std_logic;
SIGNAL \address_out[1]~output_o\ : std_logic;
SIGNAL \address_out[2]~output_o\ : std_logic;
SIGNAL \address_out[3]~output_o\ : std_logic;
SIGNAL \address_out[4]~output_o\ : std_logic;
SIGNAL \address_out[5]~output_o\ : std_logic;
SIGNAL \send_ready~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cont[0]~7_combout\ : std_logic;
SIGNAL \reset_low~input_o\ : std_logic;
SIGNAL \reset_low~inputclkctrl_outclk\ : std_logic;
SIGNAL \entradas[4]~input_o\ : std_logic;
SIGNAL \entradas[3]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \entradas[2]~input_o\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \opcion~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \cont[5]~6_combout\ : std_logic;
SIGNAL \cont[0]~8\ : std_logic;
SIGNAL \cont[1]~9_combout\ : std_logic;
SIGNAL \cont[1]~10\ : std_logic;
SIGNAL \cont[2]~11_combout\ : std_logic;
SIGNAL \cont[2]~12\ : std_logic;
SIGNAL \cont[3]~13_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \cont[3]~14\ : std_logic;
SIGNAL \cont[4]~16_combout\ : std_logic;
SIGNAL \cont[4]~17\ : std_logic;
SIGNAL \cont[5]~18_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \contador~2_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \contador~5_combout\ : std_logic;
SIGNAL \contador~6_combout\ : std_logic;
SIGNAL \contador~7_combout\ : std_logic;
SIGNAL \contador~8_combout\ : std_logic;
SIGNAL \cont[5]~15_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \contToaddress_out[0]~enfeeder_combout\ : std_logic;
SIGNAL \contToaddress_out[0]~en_q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \contToaddress_out[1]~en_q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \contToaddress_out[2]~enfeeder_combout\ : std_logic;
SIGNAL \contToaddress_out[2]~en_q\ : std_logic;
SIGNAL \contToaddress_out[5]~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \contToaddress_out[5]~9_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \contToaddress_out[3]~en_q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \contToaddress_out[4]~en_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \contToaddress_out[5]~en_q\ : std_logic;
SIGNAL \contTosend_ready~q\ : std_logic;
SIGNAL opcion : std_logic_vector(4 DOWNTO 0);
SIGNAL contToaddress_out : std_logic_vector(5 DOWNTO 0);
SIGNAL cont : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_cont[5]~15_combout\ : std_logic;
SIGNAL \ALT_INV_contToaddress_out[5]~en_q\ : std_logic;
SIGNAL ALT_INV_contToaddress_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_contToaddress_out[4]~en_q\ : std_logic;
SIGNAL \ALT_INV_contToaddress_out[3]~en_q\ : std_logic;
SIGNAL \ALT_INV_contToaddress_out[2]~en_q\ : std_logic;
SIGNAL \ALT_INV_contToaddress_out[1]~en_q\ : std_logic;
SIGNAL \ALT_INV_contToaddress_out[0]~en_q\ : std_logic;

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
send_ready <= ww_send_ready;
address_out <= ww_address_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_low~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_low~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_cont[5]~15_combout\ <= NOT \cont[5]~15_combout\;
\ALT_INV_contToaddress_out[5]~en_q\ <= NOT \contToaddress_out[5]~en_q\;
ALT_INV_contToaddress_out(5) <= NOT contToaddress_out(5);
\ALT_INV_contToaddress_out[4]~en_q\ <= NOT \contToaddress_out[4]~en_q\;
ALT_INV_contToaddress_out(4) <= NOT contToaddress_out(4);
\ALT_INV_contToaddress_out[3]~en_q\ <= NOT \contToaddress_out[3]~en_q\;
ALT_INV_contToaddress_out(3) <= NOT contToaddress_out(3);
\ALT_INV_contToaddress_out[2]~en_q\ <= NOT \contToaddress_out[2]~en_q\;
ALT_INV_contToaddress_out(2) <= NOT contToaddress_out(2);
\ALT_INV_contToaddress_out[1]~en_q\ <= NOT \contToaddress_out[1]~en_q\;
ALT_INV_contToaddress_out(1) <= NOT contToaddress_out(1);
\ALT_INV_contToaddress_out[0]~en_q\ <= NOT \contToaddress_out[0]~en_q\;
ALT_INV_contToaddress_out(0) <= NOT contToaddress_out(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y73_N9
\address_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contToaddress_out(0),
	oe => \ALT_INV_contToaddress_out[0]~en_q\,
	devoe => ww_devoe,
	o => \address_out[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\address_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contToaddress_out(1),
	oe => \ALT_INV_contToaddress_out[1]~en_q\,
	devoe => ww_devoe,
	o => \address_out[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\address_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contToaddress_out(2),
	oe => \ALT_INV_contToaddress_out[2]~en_q\,
	devoe => ww_devoe,
	o => \address_out[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\address_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contToaddress_out(3),
	oe => \ALT_INV_contToaddress_out[3]~en_q\,
	devoe => ww_devoe,
	o => \address_out[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\address_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contToaddress_out(4),
	oe => \ALT_INV_contToaddress_out[4]~en_q\,
	devoe => ww_devoe,
	o => \address_out[4]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\address_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contToaddress_out(5),
	oe => \ALT_INV_contToaddress_out[5]~en_q\,
	devoe => ww_devoe,
	o => \address_out[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\send_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contTosend_ready~q\,
	devoe => ww_devoe,
	o => \send_ready~output_o\);

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

-- Location: LCCOMB_X4_Y71_N14
\cont[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[0]~7_combout\ = cont(0) $ (VCC)
-- \cont[0]~8\ = CARRY(cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont(0),
	datad => VCC,
	combout => \cont[0]~7_combout\,
	cout => \cont[0]~8\);

-- Location: IOIBUF_X0_Y36_N15
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

-- Location: IOIBUF_X1_Y73_N1
\entradas[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(4),
	o => \entradas[4]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\entradas[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(3),
	o => \entradas[3]~input_o\);

-- Location: LCCOMB_X1_Y71_N18
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\entradas[3]~input_o\ & \opcion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradas[3]~input_o\,
	datad => \opcion~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y71_N2
\opcion[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- opcion(3) = (!\comb~0_combout\ & ((\entradas[3]~input_o\) # (opcion(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \entradas[3]~input_o\,
	datad => opcion(3),
	combout => opcion(3));

-- Location: IOIBUF_X0_Y68_N15
\entradas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

-- Location: LCCOMB_X1_Y71_N24
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\entradas[1]~input_o\ & \opcion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradas[1]~input_o\,
	datad => \opcion~0_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X1_Y71_N16
\opcion[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- opcion(1) = (!\comb~1_combout\ & ((\entradas[1]~input_o\) # (opcion(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datac => \entradas[1]~input_o\,
	datad => opcion(1),
	combout => opcion(1));

-- Location: IOIBUF_X3_Y73_N1
\entradas[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(2),
	o => \entradas[2]~input_o\);

-- Location: LCCOMB_X3_Y72_N4
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\opcion~0_combout\ & !\entradas[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcion~0_combout\,
	datad => \entradas[2]~input_o\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X3_Y72_N2
\opcion[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- opcion(2) = (!\comb~2_combout\ & ((\entradas[2]~input_o\) # (opcion(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradas[2]~input_o\,
	datac => \comb~2_combout\,
	datad => opcion(2),
	combout => opcion(2));

-- Location: LCCOMB_X1_Y71_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!opcion(1) & !opcion(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcion(1),
	datad => opcion(2),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y67_N15
\entradas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

-- Location: LCCOMB_X1_Y71_N12
\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\entradas[0]~input_o\ & \opcion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradas[0]~input_o\,
	datad => \opcion~0_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X1_Y71_N20
\opcion[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- opcion(0) = (!\comb~4_combout\ & ((\entradas[0]~input_o\) # (opcion(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datac => \entradas[0]~input_o\,
	datad => opcion(0),
	combout => opcion(0));

-- Location: LCCOMB_X1_Y71_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (opcion(4)) # ((opcion(3)) # ((!opcion(0)) # (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(4),
	datab => opcion(3),
	datac => \Mux0~0_combout\,
	datad => opcion(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X2_Y71_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!opcion(3) & (!opcion(4) & !opcion(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(3),
	datac => opcion(4),
	datad => opcion(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X3_Y71_N28
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!opcion(1) & (opcion(2) & \Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(1),
	datac => opcion(2),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X3_Y71_N22
\opcion~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \opcion~0_combout\ = ((\cont[5]~6_combout\ & (\Mux4~0_combout\ & !\Mux2~1_combout\))) # (!\reset_low~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_low~input_o\,
	datab => \cont[5]~6_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \opcion~0_combout\);

-- Location: LCCOMB_X1_Y71_N26
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\entradas[4]~input_o\ & \opcion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradas[4]~input_o\,
	datad => \opcion~0_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X1_Y71_N6
\opcion[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- opcion(4) = (!\comb~3_combout\ & ((\entradas[4]~input_o\) # (opcion(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradas[4]~input_o\,
	datac => \comb~3_combout\,
	datad => opcion(4),
	combout => opcion(4));

-- Location: LCCOMB_X1_Y71_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!opcion(4) & (!opcion(3) & (opcion(1) & !opcion(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(4),
	datab => opcion(3),
	datac => opcion(1),
	datad => opcion(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y71_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!opcion(4) & (opcion(3) & (\Mux0~0_combout\ & !opcion(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(4),
	datab => opcion(3),
	datac => \Mux0~0_combout\,
	datad => opcion(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y71_N30
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (opcion(4) & (!opcion(3) & (\Mux0~0_combout\ & !opcion(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(4),
	datab => opcion(3),
	datac => \Mux0~0_combout\,
	datad => opcion(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y71_N28
\cont[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[5]~6_combout\ = (!\Mux1~0_combout\ & (!\Mux0~1_combout\ & ((opcion(2)) # (!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux0~1_combout\,
	datad => opcion(2),
	combout => \cont[5]~6_combout\);

-- Location: LCCOMB_X4_Y71_N16
\cont[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[1]~9_combout\ = (cont(1) & (!\cont[0]~8\)) # (!cont(1) & ((\cont[0]~8\) # (GND)))
-- \cont[1]~10\ = CARRY((!\cont[0]~8\) # (!cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(1),
	datad => VCC,
	cin => \cont[0]~8\,
	combout => \cont[1]~9_combout\,
	cout => \cont[1]~10\);

-- Location: FF_X4_Y71_N17
\cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[1]~9_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	ena => \ALT_INV_cont[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(1));

-- Location: LCCOMB_X4_Y71_N18
\cont[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[2]~11_combout\ = (cont(2) & (\cont[1]~10\ $ (GND))) # (!cont(2) & (!\cont[1]~10\ & VCC))
-- \cont[2]~12\ = CARRY((cont(2) & !\cont[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(2),
	datad => VCC,
	cin => \cont[1]~10\,
	combout => \cont[2]~11_combout\,
	cout => \cont[2]~12\);

-- Location: FF_X4_Y71_N19
\cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[2]~11_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	ena => \ALT_INV_cont[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(2));

-- Location: LCCOMB_X4_Y71_N20
\cont[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[3]~13_combout\ = (cont(3) & (!\cont[2]~12\)) # (!cont(3) & ((\cont[2]~12\) # (GND)))
-- \cont[3]~14\ = CARRY((!\cont[2]~12\) # (!cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datad => VCC,
	cin => \cont[2]~12\,
	combout => \cont[3]~13_combout\,
	cout => \cont[3]~14\);

-- Location: FF_X4_Y71_N21
\cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[3]~13_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	ena => \ALT_INV_cont[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(3));

-- Location: LCCOMB_X1_Y71_N4
\contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (opcion(3)) # ((opcion(4) $ (!opcion(0))) # (!\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(4),
	datab => opcion(3),
	datac => \Mux0~0_combout\,
	datad => opcion(0),
	combout => \contador~0_combout\);

-- Location: LCCOMB_X4_Y71_N22
\cont[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[4]~16_combout\ = (cont(4) & (\cont[3]~14\ $ (GND))) # (!cont(4) & (!\cont[3]~14\ & VCC))
-- \cont[4]~17\ = CARRY((cont(4) & !\cont[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(4),
	datad => VCC,
	cin => \cont[3]~14\,
	combout => \cont[4]~16_combout\,
	cout => \cont[4]~17\);

-- Location: FF_X4_Y71_N23
\cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[4]~16_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	ena => \ALT_INV_cont[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(4));

-- Location: LCCOMB_X4_Y71_N24
\cont[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[5]~18_combout\ = cont(5) $ (\cont[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(5),
	cin => \cont[4]~17\,
	combout => \cont[5]~18_combout\);

-- Location: FF_X4_Y71_N25
\cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[5]~18_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	ena => \ALT_INV_cont[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(5));

-- Location: LCCOMB_X4_Y71_N30
\contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (!cont(4) & (cont(2) & !cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datab => cont(2),
	datad => cont(5),
	combout => \contador~1_combout\);

-- Location: LCCOMB_X4_Y71_N4
\contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~2_combout\ = (!cont(3) & (\contador~0_combout\ & (\contador~1_combout\ & !cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => \contador~0_combout\,
	datac => \contador~1_combout\,
	datad => cont(1),
	combout => \contador~2_combout\);

-- Location: LCCOMB_X3_Y71_N24
\contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = (opcion(1) $ (!opcion(2))) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(1),
	datac => opcion(2),
	datad => \Mux2~0_combout\,
	combout => \contador~3_combout\);

-- Location: LCCOMB_X4_Y71_N2
\contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (cont(4) & ((cont(3)) # (cont(5)))) # (!cont(4) & (cont(3) & cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datab => cont(3),
	datad => cont(5),
	combout => \contador~4_combout\);

-- Location: LCCOMB_X4_Y71_N28
\contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~5_combout\ = (cont(2) & (cont(1) & (cont(5) & !\contador~4_combout\))) # (!cont(2) & (!cont(1) & (!cont(5) & \contador~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datab => cont(1),
	datac => cont(5),
	datad => \contador~4_combout\,
	combout => \contador~5_combout\);

-- Location: LCCOMB_X4_Y71_N10
\contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~6_combout\ = (\contador~5_combout\ & ((cont(1) & (\Mux0~1_combout\)) # (!cont(1) & ((!\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => cont(1),
	datac => \Mux4~0_combout\,
	datad => \contador~5_combout\,
	combout => \contador~6_combout\);

-- Location: LCCOMB_X4_Y71_N12
\contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~7_combout\ = (\contador~3_combout\ & ((cont(0)) # (\contador~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador~3_combout\,
	datab => cont(0),
	datad => \contador~6_combout\,
	combout => \contador~7_combout\);

-- Location: LCCOMB_X4_Y71_N0
\contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~8_combout\ = (\Mux1~0_combout\ & (!cont(0) & (\contador~2_combout\))) # (!\Mux1~0_combout\ & ((cont(0) & (\contador~2_combout\ & !\contador~7_combout\)) # (!cont(0) & ((\contador~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => cont(0),
	datac => \contador~2_combout\,
	datad => \contador~7_combout\,
	combout => \contador~8_combout\);

-- Location: LCCOMB_X4_Y71_N26
\cont[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont[5]~15_combout\ = (\contador~8_combout\) # ((\cont[5]~6_combout\ & (!\Mux2~1_combout\ & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont[5]~6_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux4~0_combout\,
	datad => \contador~8_combout\,
	combout => \cont[5]~15_combout\);

-- Location: FF_X4_Y71_N15
\cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[0]~7_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	ena => \ALT_INV_cont[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(0));

-- Location: LCCOMB_X3_Y71_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = cont(0) $ (VCC)
-- \Add1~1\ = CARRY(cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X3_Y71_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (cont(0) & (((!\Mux4~0_combout\ & !\Mux2~1_combout\)) # (!\cont[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont[5]~6_combout\,
	datab => cont(0),
	datac => \Mux4~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X3_Y71_N26
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\Mux7~0_combout\ & (((!\Mux2~1_combout\) # (!\cont[5]~6_combout\)) # (!\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \cont[5]~6_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux7~1_combout\);

-- Location: FF_X3_Y71_N27
\contToaddress_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contToaddress_out(0));

-- Location: LCCOMB_X4_Y71_N6
\contToaddress_out[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contToaddress_out[0]~enfeeder_combout\ = \cont[5]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont[5]~15_combout\,
	combout => \contToaddress_out[0]~enfeeder_combout\);

-- Location: FF_X4_Y71_N7
\contToaddress_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contToaddress_out[0]~enfeeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contToaddress_out[0]~en_q\);

-- Location: LCCOMB_X2_Y71_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = cont(1) $ (VCC)
-- \Add2~1\ = CARRY(cont(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X3_Y71_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (cont(1) & (!\Add1~1\)) # (!cont(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X3_Y71_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\Mux1~0_combout\ & ((\Mux2~1_combout\ & ((\Add1~2_combout\))) # (!\Mux2~1_combout\ & (cont(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => \Mux2~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \Add1~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X3_Y71_N8
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\Mux5~0_combout\ & ((!\Mux1~0_combout\) # (!\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X3_Y71_N9
\contToaddress_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contToaddress_out(1));

-- Location: FF_X4_Y71_N13
\contToaddress_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cont[5]~15_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contToaddress_out[1]~en_q\);

-- Location: LCCOMB_X2_Y71_N12
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (cont(2) & (!\Add2~1\)) # (!cont(2) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!cont(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X3_Y71_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (cont(2) & ((GND) # (!\Add1~3\))) # (!cont(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((cont(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X3_Y71_N0
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\Mux1~0_combout\ & ((\Mux2~1_combout\ & ((\Add1~4_combout\))) # (!\Mux2~1_combout\ & (cont(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => cont(2),
	datac => \Add1~4_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X3_Y71_N2
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\Mux14~0_combout\ & ((!\Mux1~0_combout\) # (!\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X3_Y71_N3
\contToaddress_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contToaddress_out(2));

-- Location: LCCOMB_X4_Y71_N8
\contToaddress_out[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contToaddress_out[2]~enfeeder_combout\ = \cont[5]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont[5]~15_combout\,
	combout => \contToaddress_out[2]~enfeeder_combout\);

-- Location: FF_X4_Y71_N9
\contToaddress_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contToaddress_out[2]~enfeeder_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contToaddress_out[2]~en_q\);

-- Location: LCCOMB_X2_Y71_N4
\contToaddress_out[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contToaddress_out[5]~8_combout\ = (!\Mux1~0_combout\ & ((opcion(2)) # ((!\Mux2~0_combout\) # (!opcion(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(2),
	datab => opcion(1),
	datac => \Mux2~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \contToaddress_out[5]~8_combout\);

-- Location: LCCOMB_X3_Y71_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (cont(3) & (\Add1~5\ & VCC)) # (!cont(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!cont(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X3_Y71_N30
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\contador~3_combout\ & (cont(3))) # (!\contador~3_combout\ & ((\Mux1~0_combout\ & (cont(3))) # (!\Mux1~0_combout\ & ((\Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => \contador~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \Add1~6_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X2_Y71_N6
\contToaddress_out[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contToaddress_out[5]~9_combout\ = (\Mux2~0_combout\ & (!\Mux1~0_combout\ & (opcion(2) $ (opcion(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcion(2),
	datab => opcion(1),
	datac => \Mux2~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \contToaddress_out[5]~9_combout\);

-- Location: LCCOMB_X2_Y71_N14
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (cont(3) & (\Add2~3\ $ (GND))) # (!cont(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((cont(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X2_Y71_N24
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\contToaddress_out[5]~8_combout\ & ((\contToaddress_out[5]~9_combout\ & ((!cont(3)))) # (!\contToaddress_out[5]~9_combout\ & (\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contToaddress_out[5]~9_combout\,
	datab => \contToaddress_out[5]~8_combout\,
	datac => \Add2~4_combout\,
	datad => cont(3),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X2_Y71_N30
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (!\Mux15~0_combout\ & ((!\Mux15~1_combout\) # (!\contToaddress_out[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contToaddress_out[5]~8_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: FF_X2_Y71_N31
\contToaddress_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux15~2_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contToaddress_out(3));

-- Location: FF_X4_Y71_N3
\contToaddress_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cont[5]~15_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contToaddress_out[3]~en_q\);

-- Location: LCCOMB_X3_Y71_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (cont(4) & ((GND) # (!\Add1~7\))) # (!cont(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((cont(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X2_Y71_N26
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cont(4) $ (cont(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datad => cont(3),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y71_N16
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (cont(4) & (!\Add2~5\)) # (!cont(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!cont(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X2_Y71_N0
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\contToaddress_out[5]~9_combout\ & ((\contToaddress_out[5]~8_combout\) # ((!\Add0~0_combout\)))) # (!\contToaddress_out[5]~9_combout\ & (!\contToaddress_out[5]~8_combout\ & ((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contToaddress_out[5]~9_combout\,
	datab => \contToaddress_out[5]~8_combout\,
	datac => \Add0~0_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X2_Y71_N28
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\contToaddress_out[5]~8_combout\ & ((\Mux16~0_combout\ & ((!\Add1~8_combout\))) # (!\Mux16~0_combout\ & (!cont(4))))) # (!\contToaddress_out[5]~8_combout\ & (((!\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datab => \Add1~8_combout\,
	datac => \contToaddress_out[5]~8_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X2_Y71_N29
\contToaddress_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contToaddress_out(4));

-- Location: FF_X4_Y71_N31
\contToaddress_out[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cont[5]~15_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contToaddress_out[4]~en_q\);

-- Location: LCCOMB_X2_Y71_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = cont(5) $ (((cont(4)) # (cont(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datab => cont(5),
	datad => cont(3),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X3_Y71_N20
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (cont(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X2_Y71_N18
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Add2~7\ $ (cont(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont(5),
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X2_Y71_N20
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\contToaddress_out[5]~9_combout\ & (((\contToaddress_out[5]~8_combout\)))) # (!\contToaddress_out[5]~9_combout\ & ((\contToaddress_out[5]~8_combout\ & (cont(5))) # (!\contToaddress_out[5]~8_combout\ & ((\Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contToaddress_out[5]~9_combout\,
	datab => cont(5),
	datac => \contToaddress_out[5]~8_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X2_Y71_N22
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\contToaddress_out[5]~9_combout\ & ((\Mux17~0_combout\ & ((!\Add1~10_combout\))) # (!\Mux17~0_combout\ & (!\Add0~1_combout\)))) # (!\contToaddress_out[5]~9_combout\ & (((!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contToaddress_out[5]~9_combout\,
	datab => \Add0~1_combout\,
	datac => \Add1~10_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X2_Y71_N23
\contToaddress_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~1_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contToaddress_out(5));

-- Location: FF_X4_Y71_N27
\contToaddress_out[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont[5]~15_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contToaddress_out[5]~en_q\);

-- Location: FF_X4_Y71_N1
contTosend_ready : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~8_combout\,
	clrn => \reset_low~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contTosend_ready~q\);

ww_send_ready <= \send_ready~output_o\;

ww_address_out(0) <= \address_out[0]~output_o\;

ww_address_out(1) <= \address_out[1]~output_o\;

ww_address_out(2) <= \address_out[2]~output_o\;

ww_address_out(3) <= \address_out[3]~output_o\;

ww_address_out(4) <= \address_out[4]~output_o\;

ww_address_out(5) <= \address_out[5]~output_o\;
END structure;


