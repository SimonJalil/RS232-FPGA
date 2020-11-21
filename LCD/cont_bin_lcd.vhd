library ieee;
use ieee.std_logic_1164.all;

entity cont_bin_lcd is
	port (
			clk			:in std_logic;	--Entrada de reloj.
			reset_low	:in std_logic;	--Entrada de reset en bajo.
			ok				:out std_logic	--Salida la cual se usa como flag de termino de cuenta (en este caso 9).
			);
end cont_bin_lcd;

architecture behav of cont_bin_lcd is 

--Señal de conteo.
signal cont	:integer range 0 to 100000000;

--Señal de busd de salida.
signal bus_out	:std_logic := '0';


begin 

	contador: process(clk,reset_low)
	begin
		if (reset_low = '0') then 
			cont <= 0;
			bus_out <= '0';
		elsif (clk'event and clk = '1') then
			if (cont = 100000000) then 
				cont <= 0; 
				bus_out <= '1';
			else 
				cont <= cont + 1; 
				
			end if;
		end if;
	end process;

ok <= bus_out;	

end behav;