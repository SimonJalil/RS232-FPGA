library ieee;
use ieee.std_logic_1164.all;

entity FFD is 
	port (
			d				:in std_logic;
			data 			:in std_logic;
			reset_low	:in std_logic;
			preset 		:in std_logic;
			clk 			:in std_logic;
			load_shift	:in std_logic;
			q 				:out std_logic			
			);
end FFD;

architecture behav of FFD is

begin 
	
	ffd: process (clk,reset_low,preset)
	begin
		if (reset_low = '0') then q <= '0';
			elsif (preset = '1') then q <= '1';
				elsif (rising_edge(clk)) then 
					if load_shift = '1' then q <= data;
					else q <= d;
					end if;
			end if;
	end process;
end behav;