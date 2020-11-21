library ieee;
use ieee.std_logic_1164.all;

entity cont_bin is
	port (
			start_cont	:in std_logic;	--Entrada de habilitacion de conteo.
			clk			:in std_logic;	--Entrada de reloj.
			rst_low		:in std_logic;	--Entrada de reset en bajo.
			cont_ok		:out std_logic	--Salida la cual se usa como flag de termino de cuenta (en este caso 9).
			);
end entity;

architecture behav of cont_bin is 

--Señal de conteo.
signal cont	:integer range 0 to 10 :=0;

--Señal de busd de salida.
signal bus_out	:std_logic := '0';


begin 

	contador: process(clk,rst_low,start_cont)
	begin
		if (rst_low = '0') then 
			cont <= 0;
			bus_out <= '0';
		elsif (clk'event and clk = '1' and start_cont = '1') then
			if cont = 9 then 
				cont <= 0; 
				bus_out <= '1';
			else 
				cont <= cont + 1; 
			end if;
		end if;
	end process;

cont_ok <= bus_out;	

end behav;