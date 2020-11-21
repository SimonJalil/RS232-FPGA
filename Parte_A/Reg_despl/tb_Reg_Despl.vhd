library ieee;
use ieee.std_logic_1164.all;

entity tb_Reg_Despl is
end tb_Reg_Despl;

architecture behav of tb_Reg_Despl is

	--Componente a testear.
	component Reg_Despl is 
		generic (ancho : integer :=11);
		port (
				serin			:in std_logic;
				clk			:in std_logic;
				reset_low 	:in std_logic;
				preset 		:in std_logic;										
				data 			:in std_logic_vector(0 to ancho-1);
				load_shift	:in std_logic;
				serout		:out std_logic
				);
	end component;

	constant ancho :integer :=11;
	
	--Defino señales de tb.
	signal serin_tb		:std_logic	:='1';
	signal clk_tb			:std_logic	:='0';
	signal reset_low_tb 	:std_logic	:='0';
	signal preset_tb 		:std_logic  :='0';
	signal data_tb			:std_logic_vector(0 to ancho-1);
	signal load_shift_tb	:std_logic	:='0';
	signal serout_tb		:std_logic;
	
	constant clk_semiperiod : time := 50us;
	
	
begin 
	uut: Reg_Despl port map (serin => serin_tb, clk => clk_tb, reset_low => reset_low_tb, preset => preset_tb, data => data_tb, load_shift => load_shift_tb, serout => serout_tb);
	
	clk_tb <= not clk_tb after clk_semiperiod;
	
	data_gen_process: process 
		begin
			--Aplico el reset de manera de tener a la salida todo en bajo. Añado como entrada de datola siguiente palabra de 11 bits:
			data_tb <= "10101010101";
			wait until clk_tb = '1';
			
			--Luego cargo el registro con la entrada preset dehabilitando el reset.
			preset_tb <= '1';
			reset_low_tb <= '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			
			--Luego en el siguiente ciclo de reloj desactivo preset.
			preset_tb <= '0';
			wait until clk_tb = '1';
			
			
			--Ahora acierto la señal LOAD para cargar los datos anteriormente fijados.
			load_shift_tb <= '1';
			wait until clk_tb = '1';
			
			--Desabilito para dar paso a los datos por la salida serie y espero por aproximadamente 11 flancos de reloj para apreciar la salida.
			load_shift_tb <= '0';
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
			
			--Limpio el registro y comienzo de nuevo.
			reset_low_tb <= '0';
			wait until clk_tb = '1';
		end process;
	
end architecture behav;