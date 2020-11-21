library ieee;
use ieee.std_logic_1164.all;

entity tb_LCD is
end tb_LCD;

architecture behav of tb_LCD is 
	component LCD is 
		port(
				clk 			:in std_logic;								
				reset_low	:in std_logic;								
				entradas 	:in std_logic_vector(4 downto 0);	
				rw				:out std_logic;							
				rs 			:out std_logic;							
				e				:buffer std_logic;						
				db			 	:out std_logic_vector(7 downto 0)			
				);
		end component;

	signal tb_clk			:std_logic := '0';
	signal tb_reset_low	:std_logic := '1';
	signal tb_entradas	:std_logic_vector(4 downto 0);
	signal tb_rw			:std_logic;
	signal tb_rs 			:std_logic;
	signal tb_e				:std_logic := '0';
	signal tb_db 			:std_logic_vector(7 downto 0);
	
	constant semiperiod 	:time :=10us;
	
begin 
	uut: LCD port map(clk => tb_clk, reset_low => tb_reset_low, entradas => tb_entradas, rw => tb_rw, rs => tb_rs, e => tb_e, db => tb_db);
	
	clk_gen: tb_clk <= not tb_clk after semiperiod;
	
	data_gen: process 
		begin 
			tb_entradas <= "10000";
			wait until tb_clk = '1';
--			for i in 0 to 8 loop
--				wait until tb_clk = '1';
--			end loop;
--			
--			tb_entradas <= "00001";
--			wait until tb_clk = '1';
			
			
--			tb_entradas <= "00010";
--			for i in 0 to 8 loop
--				wait until tb_clk = '1';
--			end loop;
		
		end process;

end behav;