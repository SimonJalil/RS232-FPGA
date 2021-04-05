library ieee;
use ieee.std_logic_1164.all;
use work.pkg_rom.all;

entity tb_RS_232 is
end tb_RS_232;

architecture behav of tb_RS_232 is 
	
	--Declaro componente a testear.
	component RS_232 is
		port (  
				entry				:in std_logic_vector(4 downto 0);
				reset_low		:in std_logic;
				clk				:in std_logic;
				clk_select		:in std_logic_vector(1 downto 0);
				rx_serial 		:in std_logic;	
				salida 			:out std_logic;
					
				rw					:out std_logic;							
				rs 				:out std_logic;							
				e					:buffer std_logic;						
				db 				:out std_logic_vector(7 downto 0);	
			
				clk_en_uso		:out std_logic;
				address			:out std_logic_vector(addr_length-1 downto 0);
				cont_finished	:out std_logic;
				enviado_MEF1 	:out std_logic;
				enviar			:out std_logic;
				ASCII				:out std_logic_vector(10 downto 0)
				);
	end component;

	--Declaro señales auxiliares de test bench.
	signal tb_entry 			:std_logic_vector(4 downto 0) := "00001";
	signal tb_reset_low 		:std_logic := '1';
	signal tb_clk 				:std_logic := '0';
	signal tb_clk_select		:std_logic_vector(1 downto 0) :="11";
	signal tb_rx_serial 		:std_logic;
	
	signal tb_rw				:std_logic;
	signal tb_rs 				:std_logic;
	signal tb_e 				:std_logic;
	signal tb_db				:std_logic_vector(7 downto 0);
	
	signal tb_salida 			:std_logic;
	signal tb_clk_en_uso 	:std_logic;
	signal tb_address			:std_logic_vector(addr_length-1 downto 0);
	signal tb_cont_finished	:std_logic;
	signal tb_enviado_MEF1 	:std_logic;
	signal tb_enviar 			:std_logic;
	signal tb_ASCII			:std_logic_vector(10 downto 0);
	
	constant semiperiod :time := 50us;
	
begin 

	clk_gen: tb_clk <= not tb_clk after semiperiod;

	uut: RS_232 port map(entry => tb_entry, reset_low => tb_reset_low, clk => tb_clk, clk_select => tb_clk_select, salida => tb_salida, 
								rx_serial => tb_rx_serial,
								rw => tb_rw, rs => tb_rs, e => tb_e, db => tb_db,
								clk_en_uso => tb_clk_en_uso, address => tb_address, cont_finished => tb_cont_finished, enviado_MEF1 =>tb_enviado_MEF1,enviar => tb_enviar, ASCII => tb_ASCII);
	
	data_gen: process 
		begin 
		
			--Esperamos 11 clk para que el registro tome todos los valores de los FFD en 1.
			for i in 0 to 11 loop
				wait until tb_clk_en_uso <= '1';
			end loop;
			
			--Seleccionamos como entrada la primera frase.
			tb_entry <= "00001";
			wait until tb_clk_en_uso <= '1';
			
			--Esperamos a que el sistema envie la primera frase. 
			wait until tb_cont_finished <= '1';
			
			--Seleccionamos como entrada la segunda frase.
			tb_entry <= "00010";
			wait until tb_clk_en_uso <= '1';
			
			--Esperamos a que el sistema envie la segunda frase.
			wait until tb_cont_finished = '1';
			
			--Seleccionamos como entrada la tercera frase.
			tb_entry <= "00100";
			wait until tb_clk_en_uso <= '1';
			
			--Esperamos a que el sistema envie la tercera frase.
			wait until tb_cont_finished = '1';
			
			--Seleccionamos como entrada la cuarta frase.
			tb_entry <= "01000";
			wait until tb_clk_en_uso <= '1';
			
			--Esperamos a que el sistema envie la cuarta frase.
			wait until tb_cont_finished = '1';
			
			--Seleccionamos como entrada todas las frases.
			tb_entry <= "10000";
			wait until tb_clk_en_uso <= '1';
			
			--Esperamos a que el sistema envie hasta la ultima frase.
			wait until tb_cont_finished = '1';
			
			--Seleccionamos como entrada una condicion indeseada para ver su funcionamiento.
			tb_entry <= "11000";
			wait until tb_clk_en_uso <= '1';
			
			--Observamos que sucede con las salidas y las señales.
			for i in 0 to 60 loop
				wait until tb_clk_en_uso <= '1';
			end loop;
			
			--Reiniciamos y comenzamos de vuelta.
			tb_reset_low <= '0';
			wait until tb_clk_en_uso <= '1';
			tb_reset_low <= '1';
			wait until tb_clk_en_uso <= '1';
		end process;		
end behav;
