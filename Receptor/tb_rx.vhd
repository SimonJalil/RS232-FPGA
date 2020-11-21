library ieee;
use ieee.std_logic_1164.all;

entity tb_rx is 
end tb_rx;

architecture behav of tb_rx is 

	component rx is 
		port (
				clk 			:in std_logic;								
				reset_low 	:in std_logic;								
				rxd 			:in std_logic;								
				clk_entry	:in std_logic_vector(1 downto 0);	
				rx_byte		:out std_logic_vector(7 downto 0);	
				led			:out std_logic								
				);
	end component;

	signal tb_clk			:std_logic := '0';
	signal tb_reset_low	:std_logic := '1';
	signal tb_rxd 			:std_logic;
	signal tb_clk_entry	:std_logic_vector(1 downto 0) := "00";
	signal tb_rx_byte 	:std_logic_vector(7 downto 0);
	signal tb_led 			:std_logic;
	
	constant semiperiod :time := 104166ns;		--4800baud.
	--constant semiperiod :time := 52083ns;	--9600baud.
	--constant semiperiod :time := 13020ns;	--38400baud.
	--constant semiperiod :time := 4340ns;		--115200baud;
	
begin 
	uut: rx port map (clk => tb_clk, reset_low => tb_reset_low, rxd => tb_rxd, clk_entry => tb_clk_entry, rx_byte => tb_rx_byte, led => tb_led);
	
	clk_gen: tb_clk <= not tb_clk after semiperiod;
	
	data_gen: process 
		begin 
			tb_rxd <= '1';
			wait until tb_clk = '1';
			tb_rxd <= '0';
			wait until tb_clk = '1';
			tb_rxd <= '1';
			wait until tb_clk = '1';
			
			for i in 0 to 100000 loop 
				wait until tb_clk = '1';
			end loop; 	
		end process;
end behav;