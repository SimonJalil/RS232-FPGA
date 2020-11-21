library ieee;
use ieee.std_logic_1164.all;

entity tb_Contador_memoria is
end tb_Contador_memoria;

architecture behav of tb_Contador_memoria is 

	--Componente a testear.
	component Contador_memoria is 
		port (
				entradas		:in std_logic_vector(4 downto 0);
				clk 			:in std_logic;
				reset_low	:in std_logic;
				send_ready	:out std_logic;
				address_out	:out std_logic_vector (5 downto 0)
				);
	end component;
	
	--Señales auxiliares de testeo.
	signal tb_entradas		:std_logic_vector(4 downto 0);
	signal tb_clk				:std_logic	:= '0';
	signal tb_reset_low 		:std_logic	:= '0';
	signal tb_send_ready 	:std_logic;
	signal tb_address_out	:std_logic_vector(5 downto 0);  

	--Constantes
	constant semiperiod	:time	:= 50us;
	
begin 
	
	clock_gen: tb_clk <= not tb_clk after semiperiod;
	
	uut: Contador_memoria port map(entradas => tb_entradas, clk => tb_clk, reset_low => tb_reset_low, send_ready => tb_send_ready, address_out => tb_address_out);
	
	data_gen: process 
		begin 
			
			--Colocamos como entrada la correspondiente a lo que seria la primera frase de proyecto: "Laboratorio 4 completado"
			tb_entradas <= "00001";
			wait until tb_clk = '1';
			
			tb_reset_low <= '1';
			wait until tb_clk = '1';
			
			--Esperamos 24 clks los correspondientes a los caracteres de la frase.
			for i in 0 to 24 loop
				wait until tb_clk = '1';
			end loop;
			
			--Reseteamos.
			tb_reset_low <= '0';
			wait until tb_clk <= '1';
			wait until tb_clk <= '1';
			
			--Colocamos como entradas los datos correspondientes a lo que seria la segunda frase del proyecto: "Simon".
			tb_entradas <= "00010";
			wait until tb_clk = '1';
			
			tb_reset_low <= '1';
			
			--Esperamos lo correspondiente a los caracteres en la frase.
			for i in 0 to 6 loop
				wait until tb_clk = '1';
			end loop;
			
			--Colocamos como entrada una condicion de falla.
			tb_entradas <= "00011";
			tb_reset_low <= '1';
			wait until tb_clk <= '1';
				
			--Esperamos para ver que sucede a la salida, lo cual deberia ser "111111"
			for i in 0 to 6 loop
				wait until tb_clk = '1';
			end loop;
				
			--Colocamos como entradas los datos correspondientes a lo que seria la tercera frase del proyecto: "Pablo".
			tb_entradas <= "00100";
			wait until tb_clk = '1';
			
			tb_reset_low <= '1';
			
		--Esperamos lo correspondiente a los caracteres en la frase.
		for i in 0 to 6 loop
			wait until tb_clk = '1';
		end loop;
		
		--Reseteamos.
		tb_reset_low <= '0';
		wait until tb_clk = '1';
	
	end process;
end behav;