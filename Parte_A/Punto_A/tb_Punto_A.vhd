library ieee;
use ieee.std_logic_1164.all;


entity tb_Punto_A is
end tb_Punto_A;

architecture behav of tb_Punto_A is

	--Declaro componente a testear.
	component Punto_A is 
		generic (ancho : integer :=11);
		port (
				start_tx		:in std_logic;
				clk 			:in std_logic;
				reset_low 	:in std_logic;
				preset		:in std_logic;
				data			:in std_logic_vector (ancho-1 downto 0);
				tri_state 	:in std_logic;
				serout 		:out std_logic;
				finished 	:out std_logic
				);
	end component;
	
	--Definicion de constantes.
	constant clk_semiperiod :time := 50us;
	constant ancho 			:integer :=11;
	
	--Señal de test bench.
	signal start_tx_tb 	:std_logic := '0';
	signal clk_tb			:std_logic := '0';
	signal reset_low_tb	:std_logic := '0';
	signal preset_tb		:std_logic := '0';
	signal data_tb			:std_logic_vector(ancho-1 downto 0);
	signal tri_state_tb	:std_logic :='1';
	signal serout_tb		:std_logic;
	signal finished_tb 	:std_logic;
	
	
	
begin 
	
	clk_tb <= not clk_tb after clk_semiperiod;
	
	uut: Punto_A port map (start_tx => start_tx_tb, clk => clk_tb, reset_low => reset_low_tb, preset => preset_tb, data => data_tb, tri_state => tri_state_tb,
									serout => serout_tb,finished => finished_tb);
	
	data_gen: process
		begin 
		
			--Ingresamos una palabra de 11 bits simulando al dato a transmitir, con el canal de salida bloqueado por el bus tri-state.
			data_tb <= "11100000000";
			wait until clk_tb = '1';
			
			--Habilitamos su funcionamiento incluyendo su salida tri-state, y pre-seteando el registro.
			reset_low_tb <= '1';
			tri_state_tb <= '0';
			preset_tb <= '1';
			wait until clk_tb = '1';
			
			--Comenzamos transmision de caracter ASCII.
			start_tx_tb <= '1';
			preset_tb <= '0';
			wait until clk_tb = '1';
			
			start_tx_tb <= '0';
			wait until serout_tb = '1';
			
			--Esperamos aproximadamente 11 clocks.
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
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			wait until clk_tb = '1';
			
			--Reseteamos y comenzamos de cero.
			reset_low_tb <= '0';
			wait until clk_tb = '1';
			
		
		end process;

end behav;