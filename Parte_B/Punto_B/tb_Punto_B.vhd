library ieee;
use ieee.std_logic_1164.all;
use work.pkg_rom.all;

entity tb_Punto_B is
end tb_Punto_B;

architecture behav of tb_Punto_B is

	component Punto_B is 
		port (
				entradas 	:in std_logic_vector(4 downto 0);
				clk			:in std_logic;
				reset_low	:in std_logic;
				send_MEF1	:in std_logic;
				datos_out 	:out std_logic_vector(10 downto 0);
				
				enviado_cont:out std_logic;
				enviar		:out std_logic;
				direccion	:out std_logic_vector(addr_length-1 downto 0)
				);
	end component;

	--Declaro señales auxiliares.
	signal tb_entradas 	: std_logic_vector(4 downto 0) := "00000";
	signal tb_clk 			:std_logic := '0';
	signal tb_reset_low	:std_logic := '0';
	signal tb_send_MEF1	:std_logic := '0';
	
	signal tb_datos_out 	:std_logic_vector(10 downto 0);
	signal tb_enviado_cont		:std_logic;
	signal tb_enviar 		:std_logic;
	signal tb_direccion 	:std_logic_vector(addr_length-1 downto 0);

	constant semiperiod : time := 50us;
	
begin 
	
	clk_gen: tb_clk <= not tb_clk after semiperiod;
	
	uut: Punto_B port map (entradas => tb_entradas, clk => tb_clk, reset_low => tb_reset_low, send_MEF1 => tb_send_MEF1, datos_out => tb_datos_out, 
									enviado_cont => tb_enviado_cont, enviar => tb_enviar, direccion => tb_direccion);
	
	data_gen: process 
		begin
			
			--Damos una entrada correspondiente a la ultima frase.
			tb_entradas <= "01000";
			tb_reset_low <= '1';
			for i in 0 to 15 loop
				wait until tb_clk = '1';
			end loop;
			
			--La MEF que controla al registro envia el caracter...
			tb_send_MEF1 <= '1';
			wait until tb_clk = '1';
			
			
--			--Y una vez finalizado, enviamos una entrada invalida.
--			tb_entradas <= "00011";
--			wait until tb_clk = '1';
--			wait until tb_clk = '1';
--			wait until tb_clk = '1';
			
			--Reseteamos y comenzamos de vuelta.
			tb_reset_low <= '0';
			wait until tb_clk = '1';
			
		end process;
end behav;