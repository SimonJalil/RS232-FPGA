library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux is
	generic (ent_sel: integer:= 2);
	port (
			mux_input	: in 	std_logic_vector ((2**ent_sel)-1 downto 0);						
			mux_sel		: in std_logic_vector (ent_sel-1 downto 0);
			mux_out 		: out std_logic
			);
end Mux;

architecture behav of Mux is 
begin
	mux_out <= mux_input (to_integer(unsigned(mux_sel))); 
end behav;