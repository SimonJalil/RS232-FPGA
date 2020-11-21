library ieee;
use ieee.std_logic_1164.all;

entity tb_FSM_Memoria is 
end tb_FSM_Memoria;

architecture behav of tb_FSM_Memoria is 

	component FSM_Memoria is 
		port (
				botones			:in std_logic_vector(4 downto 0);
				clk				:in std_logic;
				send_MEF1		:in std_logic;
				send_OK			:in std_logic;	
				reset_low		:in std_logic;
				
				opciones			:out std_logic_vector(4 downto 0);
				clk_cont 		:out std_logic;
				clk_mem			:out std_logic;
				start_tx 		:out std_logic;
				reset_cont		:out std_logic;
				preset 			:out std_logic;
				tri_state 		:out std_logic
				);
	end component;
	
	--Señales auxiliares de test-bench
	signal tb_botones		:std_logic_vector(4 downto 0);
	signal tb_clk 			:std_logic := '0';
	signal tb_send_MEF1	:std_logic := '0';
	signal tb_send_OK		:std_logic := '0';
	signal tb_reset_low	:std_logic;
	
	signal tb_opciones	:std_logic_vector(4 downto 0);
	signal tb_clk_cont 	:std_logic;
	signal tb_clk_mem		:std_logic;
	signal tb_start_tx 	:std_logic;
	signal tb_reset_cont :std_logic;
	signal tb_preset 		:std_logic;
	signal tb_tri_state 	:std_logic;
		
	--Constantes.
	constant semiperiod	:time := 50us;
	
begin 
	clk_gen: tb_clk <= not tb_clk after semiperiod;
	
	uut: FSM_Memoria port map(botones => tb_botones, clk => tb_clk, send_MEF1 => tb_send_MEF1, send_OK => tb_send_OK, reset_low => tb_reset_low, 
										opciones => tb_opciones, clk_cont => tb_clk_cont, clk_mem => tb_clk_mem, start_tx => tb_start_tx, reset_cont => tb_reset_cont,
										preset => tb_preset, tri_state => tb_tri_state);
	
	data_gen: process 
		begin 
			
			--Comienza el proceso con una entrada "00001"
			tb_reset_low <= '1';
			tb_botones <= "00001";
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			
			--La maquina de estado del registro envia el caracter ASCII pero el contador no ha terminado la frase por lo tanto sigue envviando caracteres.
			tb_send_MEF1 <= '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			
			--Activamos la señal proveniente del contador indicando que la frase ha sido enviada en su totalidad, de manera que vuelve a preguntar por las entradas fisicas.
			tb_send_OK <= '1';
			wait until tb_clk = '1';
			
			--Probamos una condicion indeseada.
			tb_botones <= "00011";
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			wait until tb_clk = '1';
			
			--Reiniciamos y comenzamos de nuevo.
			tb_reset_low <= '0';
			wait until tb_clk = '1';
			
			
			
		
		end process;
end behav;