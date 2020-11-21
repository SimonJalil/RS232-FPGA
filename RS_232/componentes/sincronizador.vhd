library ieee;
use ieee.std_logic_1164.all;

entity sincronizador is
	port (
		asyncin 	:in std_logic; -- Entrada asincronica. 
		clock 	:in std_logic; -- Entrada Clock.
		reset		:in std_logic;	-- Entrada asincronica de Reset
		syncin 	:out std_logic	-- Salida sincronizada.	
	);
end sincronizador;

architecture behav of sincronizador is

signal meta :std_logic;

begin 
	
	sync_proc : process (clock,reset)
	begin 
		 
		if(rising_edge (clock) and reset = '1') then 
			meta <= asyncin;
			syncin <= meta; 
		end if;
		
		if (reset = '0') then 
			syncin <= '0';
			meta	 <= '0';
		end if;
	end process; 
end behav;