library ieee;
use ieee.std_logic_1164.all;

entity tb_FSM_Reg_Despl is
end tb_FSM_Reg_Despl;

architecture behav of tb_FSM_Reg_Despl is 

	component FSM_Reg_Despl is 
	port(
			start_tx		:in std_logic;
			cont_ok		:in std_logic;
			clk			:in std_logic;
			reset_low	:in std_logic;
			l_s			:out std_logic;
			start_cont	:out std_logic
			);
	end component;

	signal start_tx_tb 	:std_logic := '0';
	signal cont_ok_tb 	:std_logic := '0';
	signal clk_tb			:std_logic := '0';
	signal reset_low_tb 	:std_logic := '0';
	signal l_s_tb			:std_logic;
	signal start_cont_tb	:std_logic;
	
	constant clk_semiperiod : time := 50us;
	
begin 
	
	clk_tb <= not clk_tb after clk_semiperiod;
	
	uut: FSM_Reg_Despl port map (start_tx => start_tx_tb, cont_ok => cont_ok_tb, clk => clk_tb, reset_low => reset_low_tb, l_s => l_s_tb, start_cont => start_cont_tb );
	
	data_gen: process
	begin 
	
		wait until clk_tb = '1';
		
		--Deshabilitamos el reset para dar paso al estado IDLE.
		reset_low_tb <= '1';
		wait until clk_tb = '1';
		
		--Pasamos al estado de LOAD/SHIFT activando start_tx.
		start_tx_tb <= '1';
		wait until clk_tb = '1';
		
		--Se activa la salida LOAD/SHIFT.
		start_tx_tb <= '0';
		wait until clk_tb = '1';
		
		--Esperamos los 11 clk del contador.
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		
		--Se activa la entrada de cont_ok.
		cont_ok_tb <= '1';
		wait until clk_tb = '1';
		
		--Pasamos al estado de finished.
		cont_ok_tb <= '0';
		wait until clk_tb = '1';
		
		--Volvemos a IDLE.
		wait until clk_tb = '1';
		wait until clk_tb = '1';
		
		--Se aplica un reset y volvemos a comenzar.
		reset_low_tb <= '0';
		wait until clk_tb = '1';
		
	end process;
end behav;