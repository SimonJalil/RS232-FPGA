library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx is 
	generic (
		clksXbit	:integer := 5209
	);
	port (
			clk 			:in std_logic;								--Entrada de clk.
			clr		 	:in std_logic;								--Entrada de clr.
			rx 			:in std_logic;								--Entrada del receptor.
			salida		:out std_logic_vector(6 downto 0);	--Salida de byte recibido.
			dig 			:out std_logic_vector(3 downto 0)
			--led			:out std_logic								--led indicador de transmision (cuando esta apagado esta recibiendo).
			);
	end rx;

architecture behav of rx is 

	component UART_RX is 
		generic (
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
	
	seg: mod_7seg port map(x(15 downto 8) => "ZZZZZZZZ", x(7 downto 0) => byte, clk => clk, clr => clr, salida => salida, dig => dig);

end behav;