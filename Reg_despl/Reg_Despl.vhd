library ieee;
use ieee.std_logic_1164.all;

entity Reg_Despl is
	generic (ancho : integer :=11);
	port (
			serin			:in std_logic;										--Entrada serial por donde se establecera un 1 logico constante.
			clk			:in std_logic;										--Entrada de reloj.
			rst_low	 	:in std_logic;										--Entrada asincronica de reset en bajo.
			preset 		:in std_logic;										--Entrada asicronica de seteo de FFD's.
			data 			:in std_logic_vector(ancho-1 downto 0);	--Entrada paralela de datos.
			load_shift	:in std_logic;										--Entrada la cual permite cargar los datos en paralelo a cada uno de los ffd.
			serout		:out std_logic 									--Salida serie del registro.
			);
end Reg_Despl;

architecture behav of Reg_Despl is

	--Declaro componente FFD con reset asincronico y carga sincronica.
	component FFD is 
		port(
				d				:in std_logic;
				data 			:in std_logic;
				reset_low	:in std_logic;
				preset 		:in std_logic;
				clk 			:in std_logic;
				load_shift	:in std_logic;
				q 				:out std_logic		
				);
	end component;
	
	--Señal interna entre FFD de registr.
	signal intercon :std_logic_vector(0 to ancho-1);
	
	--Señal auxiliar de salida.
	signal bus_out :std_logic;
	
begin 
	
	reg_despl: 	for i in 0 to ancho-1 generate
						--Para el primer ffd conecto a su entrada la entrada serie del registro.
						primero: if(i = 0) generate
										priff: FFD port map (preset => preset, clk => clk, reset_low => rst_low, load_shift => load_shift, d => serin, data => data(i), q => intercon(i));
									end generate;
						--En los ffd siguientes conecto a su entrada, la salida del ffd anterior.
						medios: 	if (i /= 0 and i /= ancho-1) generate 
										medff: FFD port map (preset => preset, clk => clk, reset_low => rst_low, load_shift => load_shift, d=> intercon(i-1), data => data(i), q => intercon(i));
									end generate;
						--En el utlimo la salida se conecta con la salida serie del registro. 
						ultimo: 	if(i = ancho-1) generate
										ultff: FFD port map (preset => preset, clk => clk, reset_low => rst_low, load_shift => load_shift, d => intercon (i-1),data => data(i), q=> bus_out);
									end generate;
	end generate reg_despl;
	
	serout <= bus_out;
	
end behav;