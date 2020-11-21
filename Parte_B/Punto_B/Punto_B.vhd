library ieee;
use ieee.std_logic_1164.all;
use work.pkg_rom.all;

entity Punto_B is 
	port(
			entradas 	:in std_logic_vector(4 downto 0);					--Entradas fisicas que seleccionan la frase a enviar.
			clk			:in std_logic;												--Señal de reloj.
			reset_low	:in std_logic;												--Señal de reset en bajo.
			send_MEF1	:in std_logic;												--Señal de enviado de caracter ASCII por parte de la MEF 1. 
			datos_out 	:out std_logic_vector(10 downto 0);					--Señal de dato completo a enviar.
			preset 		:out std_logic;											--Señal asincronica de seteo del registro.
			tri_state 	:out std_logic;											--Señal de tri_state de salida en el punto A.
			
	
			--Estas señales se utilizaron para hacer un analisis mas exhaustivo en el test bench.
			--Si se desea se pueden comentar, haciendolo ademas con las ultimas tres lineas de este codigo.
			enviado_cont:out std_logic;
			enviar		:out std_logic;
			direccion	:out std_logic_vector(addr_length-1 downto 0)			
			);
end Punto_B;

architecture behav of Punto_B is 

	--Declaro componentes.
	component Memoria_ROM is 
		port(
				clk		:in std_logic;
				address 	:in std_logic_vector(addr_length-1 downto 0);
				data_out	:out std_logic_vector(data_legth_ok-1 downto 0)
				);
	end component;
 
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
				reset_cont 		:out std_logic;
				preset 			:out std_logic;							
				tri_state 		:out std_logic								
				);
	end component;
	
	component Contador_Memoria is 
		port (
				entradas		:in std_logic_vector(4 downto 0);
				clk 			:in std_logic;
				reset_low	:in std_logic;
				send_ready	:out std_logic;
				address_out	:out std_logic_vector (5 downto 0)
				);
	end component;
	
	--Declaro señales
	signal contTofsm 			: std_logic;											--Señal de termino del contador. O sea, termino la frase.
	signal fsmTocont 			: std_logic_vector(4 downto 0);					--Señales que indican la oracion a enviar.
	signal clk_contador		:std_logic;												--Señal de clock de la memoria y el contador.
	signal clk_memoria 		:std_logic;
	signal start				:std_logic;
	signal reset_cont			:std_logic;												--Señal de reset del contador.
	signal contTomem			:std_logic_vector(addr_length-1 downto 0);	--Señal de direccion del contador a memoria.
	
begin 

	Memoria: Memoria_ROM port map (clk => clk_memoria, address => contTomem, data_out => datos_out);
	
	FSM: FSM_Memoria port map(botones => entradas, clk => clk, send_MEF1 => send_MEF1, send_OK => contTofsm, reset_low => reset_low, opciones => fsmTocont,
										clk_cont => clk_contador, clk_mem => clk_memoria, start_tx => start, reset_cont => reset_cont, preset => preset, tri_state => tri_state);
	
	Contador: Contador_Memoria port map(entradas => fsmTocont, clk => clk_contador, reset_low => reset_cont, send_ready => contTofsm, address_out => contTomem);
	
	enviar <= start;
	direccion <= contTomem;
	enviado_cont <= contTofsm;
	
end behav;