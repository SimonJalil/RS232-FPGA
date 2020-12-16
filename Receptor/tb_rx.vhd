library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_rx is 
end tb_rx;

architecture behav of tb_rx is 

	component rx is 
		port (
				clk 			:in std_logic;								
				reset_low 	:in std_logic;								
				rxd 			:in std_logic;								
				--clk_entry	:in std_logic_vector(1 downto 0);	
				rx_byte		:out std_logic_vector(7 downto 0);	
				led			:out std_logic								
				);
	end component;

	signal tb_clk			:std_logic := '0';
	signal tb_reset_low	:std_logic := '1';
	signal tb_rxd 			:std_logic := '1';
	--signal tb_clk_entry	:std_logic_vector(1 downto 0) := "00";
	signal tb_rx_byte 	:std_logic_vector(7 downto 0) := "11111111";
	signal tb_led 			:std_logic;
	
	constant semiperiod	:time 	:= 20ns;
	constant clksXbit 	:integer :=217;
	constant perXbit 		:time		:=5208ns ;
	
--	type tabla is array (0 to 3) of integer;
--	constant CLK_POR_BIT : tabla := (10416, 5208, 1302, 434);
--	
--	type periodos is array (0 to 3) of time;
--	constant PERIODO_BIT	: periodos := (208us,104us,26us,8680ns);
	
	procedure byte_rx (
		data_in				:in std_logic_vector(7 downto 0);
		--clk_select			:in std_logic_vector(1 downto 0);
		signal serial_out	:out std_logic 
	) is 
	begin
		--Envio bit de start
		serial_out <= '0';
		--wait for PERIODO_BIT(to_integer(unsigned(clk_select)));	
		wait for perXbit;
		
		--Envio byte de dato
		for i in 0 to 7 loop 
			serial_out <= data_in(i);
			--wait for PERIODO_BIT(to_integer(unsigned(clk_select)));	
			wait for perXbit;
		end loop;
		
		--Envio bit de stop
		serial_out <= '1';
		--wait for PERIODO_BIT(to_integer(unsigned(clk_select)));	
		wait for perXbit;
	end byte_rx;	

begin 
	--uut: rx port map (clk => tb_clk, reset_low => tb_reset_low, rxd => tb_rxd, clk_entry => tb_clk_entry, rx_byte => tb_rx_byte, led => tb_led);
	uut: rx port map (clk => tb_clk, reset_low => tb_reset_low, rxd => tb_rxd, rx_byte => tb_rx_byte, led => tb_led);
	
	clk_gen: tb_clk <= not tb_clk after semiperiod;
	
	data_gen: process 
	begin 
		--Envio un byte al receptor
		wait until rising_edge(tb_clk);
		--byte_rx(x"37",tb_clk_entry,tb_rxd);
		byte_rx(x"37",tb_rxd);
		wait until rising_edge(tb_clk);
	
		--chequeo si el envio fue correcto
		if tb_rx_byte = x"37" then 
			report "Testeo aprobado" severity note;
		else
			report "Testeo desaprobado" severity note;
		end if;
	
		--assert false report "Tests Complete" severity failure;
	end process;
end behav;
	
--	data_gen: process 
--		begin 
--			tb_rxd <= '1';
--			wait until tb_clk = '1';
--			tb_rxd <= '0';
--			wait until tb_clk = '1';
--			tb_rxd <= '1';
--			wait until tb_clk = '1';
--			
--			for i in 0 to 100000 loop 
--				wait until tb_clk = '1';
--			end loop; 	
--		end process;