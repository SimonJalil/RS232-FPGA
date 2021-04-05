library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx is 
	port (
			clk 			:in std_logic;								--Entrada de clk.
			clr		 	:in std_logic;								--Entrada de clr.
			rx 			:in std_logic;								--Entrada del receptor.
			sel 			:in std_logic_vector(1 downto 0);	--Entrada de seleccion del mux paralelo.
			
			byte_out 	:out std_logic_vector(7 downto 0)	--Extraccion del byte para LCD
			);
end rx;

architecture behav of rx is 
	type arreglo is array (3 downto 0) of integer;
	constant baudios	:arreglo := (10417,5209,1303,435);
	
	type arreglo2 is array (3 downto 0) of std_logic_vector(7 downto 0);
	signal v	:arreglo2;
	
	component UART_RX is 
		generic(
			clksXbit : integer  
			);
		port (
			clk       : in  std_logic;
			rx_serial : in  std_logic;
			rx_byte   : out std_logic_vector(7 downto 0)
			);
		end component;

	signal byte :std_logic_vector(7 downto 0);
	
begin
	--uart: UART_RX port map(clk => clk, rx_serial => rx, rx_byte => byte);
	t: for i in 0 to 3 generate 
		uart: UART_RX 	generic map(clksXbit => baudios(i))
					port map(clk => clk, rx_serial => rx, rx_byte => v(i));
	end generate t;
	
	mux: with sel select 
				byte <= 	v(2) when "01",
							v(1) when "10",
							v(0) when "11",
							v(3) when others;
	
	byte_out <= byte;
end behav;