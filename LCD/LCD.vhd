library ieee;
use ieee.std_logic_1164.all;

entity LCD is
	port(	
			clk 			:in std_logic;								
			reset_low	:in std_logic;																
			entradas 	:in std_logic_vector(4 downto 0);	
			byte			:in std_logic_vector(7 downto 0);
			
			rw				:out std_logic;							
			rs 			:out std_logic;														
			e				:buffer std_logic := '0';												
			db			 	:out std_logic_vector(7 downto 0)
			);
end LCD;

architecture behav of LCD is
	
	component FSM_LCD is 
		port(
				clk 			:in std_logic;								
				reset_low	:in std_logic;								
				cont_ok		:in std_logic;								
				entradas 	:in std_logic_vector(4 downto 0);	
				byte			:in std_logic_vector(7 downto 0);
				
				rw				:out std_logic;							
				rs 			:out std_logic;							
				reset_cont 	:out std_logic;							
				e				:buffer std_logic := '0';												
				db			 	:out std_logic_vector(7 downto 0)		
				);
	end component;
	
	component cont_bin_lcd is 
		port(
				clk			:in std_logic;	
				reset_low	:in std_logic;	
				ok				:out std_logic	
				);
	end component;
	
	signal contTofsm :std_logic;
	signal fsmTocont 	:std_logic;
	
begin 
	
	fsm: FSM_LCD port map(clk => clk, reset_low => reset_low, cont_ok => contTofsm, entradas => entradas, byte => byte, rw => rw, rs => rs, reset_cont => fsmTocont, e => e, db => db);
	
	cont: cont_bin_lcd port map(clk => clk, reset_low => fsmTocont, ok => contTofsm);

end behav;