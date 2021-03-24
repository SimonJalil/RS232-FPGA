library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx is 
	port (
			clk 			:in std_logic;								--Entrada de clk.
			clr		 	:in std_logic;								--Entrada de clr.
			rx 			:in std_logic;								--Entrada del receptor.
			sel 			:in std_logic_vector(2 downto 0);	--Entrada de seleccion del mux paralelo.
			salida		:out std_logic_vector(6 downto 0);	--Salida de byte recibido.
			byte_out 	:out std_logic_vector(7 downto 0);	--Extraccion del byte para LCD
			dig 			:out std_logic_vector(3 downto 0)
			--led			:out std_logic								--led indicador de transmision (cuando esta apagado esta recibiendo).
			);
	end rx;

architecture behav of rx is 
	type arreglo is array (3 downto 0) of integer;
	constant baudios	:arreglo := (5209,2605,652,218);
	
	type arreglo2 is array (3 downto 0) of std_logic_vector(7 downto 0);
	signal v	:arreglo2;
	
	component mux_paralelos is 
	port(
		sel: in std_logic_vector (2 downto 0);
		in1, in2, in3, in4, in5, in6, in7, in8: in std_logic_vector (7 downto 0);
		out_8mx: out std_logic_vector (7 downto 0)
	);
	end component mux_paralelos;

	component UART_RX is 
		generic(
			clksXbit : integer := 5209   
			);
		port (
			clk       : in  std_logic;
			rx_serial : in  std_logic;
			rx_byte   : out std_logic_vector(7 downto 0)
			);
		end component;
	
	component mod_7seg is 
		port(
			x		:in std_logic_vector(15 downto 0);
			clk	:in std_logic;
			clr 	:in std_logic;
			salida:out std_logic_vector(6 downto 0);
			dig 	:out std_logic_vector(3 downto 0);
			dp 	:out std_logic
			);
	end component;

	signal byte :std_logic_vector(7 downto 0);
	
begin
	uart: UART_RX port map(clk => clk, rx_serial => rx, rx_byte => byte);
--	t: for i in 0 to 3 generate 
--		uart: UART_RX 	generic map(clksXbit => baudios(i))
--					port map(clk => clk, rx_serial => rx, rx_byte => v(i));
--	end generate t;
	
--	arreglo_mux: mux_paralelos port map(sel => sel, in1 => v(0), in2 => v(1), in3 => v(2), in4 => v(3),
--													in5 => "ZZZZZZZZ", in6 => "ZZZZZZZZ", in7 => "ZZZZZZZZ",
--													in8 => "ZZZZZZZZ",out_8mx => byte); 
--													
--	mux: with sel select 
--				byte <= 	v(1) when "001",
--							v(2) when "010",
--							v(3) when "011",
--							v(0) when others;
	
	seg: mod_7seg port map(x(15 downto 8) => "ZZZZZZZZ", x(7 downto 0) => byte, clk => clk, clr => clr, salida => salida, dig => dig);
	
	byte_out <= byte;
end behav;