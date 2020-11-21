library ieee;
use ieee.std_logic_1164.all;

entity Punto_A is
	generic (ancho : integer :=11);
	port (
			start_tx		:in std_logic;										--Señal de comienzo de Tx.
			clk 			:in std_logic; 									--Señal de clock.
			reset_low	 	:in std_logic;										--Señal de reset asincronico.
			preset 		:in std_logic;										--Entrada asicronica de seteo de FFD's.
			data			:in std_logic_vector (ancho-1 downto 0);	--Dato completo, 11 bits: paridad,start,stop,ASCII.
			tri_state 	:in std_logic;										--Buffer tri-state a la salida.	
			serout 		:out std_logic;									--Señal de salida serie.
			finished 	:out std_logic
			);
end Punto_A;

architecture behav of Punto_A is

	--Declaro Contador binario.
	component cont_bin is
		port(
				start_cont	:in std_logic;
				clk			:in std_logic;
				rst_low		:in std_logic;
				cont_ok		:out std_logic
				);
	end component;

	--Declaro Registro de Desplazamiento.
	component Reg_Despl is
		generic (ancho : integer :=11);
		port(
				serin			:in std_logic;
				clk			:in std_logic;
				rst_low	 	:in std_logic;
				preset 		:in std_logic;
				data 			:in std_logic_vector(ancho-1 downto 0);
				load_shift	:in std_logic;
				serout		:out std_logic
				);
	end component;
	
	--Declaro FSM controladora del registro.
	component FSM_Reg_Despl is
		port(
				start_tx		:in std_logic;
				cont_ok		:in std_logic;
				clk			:in std_logic;
				rst_low		:in std_logic;
				l_s			:out std_logic;
				start_cont	:out std_logic;
				rst_cont		:out std_logic;
				finished_tx	:out std_logic
				);
	end component;
	
	--Declaracion de señales.
	signal l_s_bus				:std_logic;
	signal serout_bus			:std_logic;
	signal start_cont_bus 	:std_logic;
	signal cont_ok_bus		:std_logic;
	signal reset_cont			:std_logic;

	
begin
		
	Cont: cont_bin port map (start_cont => start_cont_bus, clk => clk, rst_low => reset_cont, cont_ok => cont_ok_bus);
	
	Reg: Reg_Despl port map (preset => preset, serin => '1' , clk => clk, rst_low => reset_low, data => data, load_shift => l_s_bus, serout => serout_bus );
	
	FSM: FSM_Reg_Despl port map (start_tx => start_tx, cont_ok => cont_ok_bus, clk => clk, rst_low => reset_low, l_s => l_s_bus, start_cont => start_cont_bus,
											rst_cont => reset_cont,finished_tx => finished);
	
	serout <= serout_bus when tri_state = '0' else 'Z';

end behav;
