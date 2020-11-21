library ieee;
use ieee.std_logic_1164.all;

entity FSM_Memoria is
	port (
			botones			:in std_logic_vector(4 downto 0);	--Interruptores fisicos que seleccionan la frase a transmitir
			clk				:in std_logic;								--Señal de reloj.
			send_MEF1		:in std_logic;								--Señal que avisa que la transmision de un caracter ha finalizado.
			send_OK			:in std_logic;								--Señal que indica que el envio de la frase se ha completado.
			reset_low		:in std_logic;								--Señal de reset en bajo.
			opciones			:out std_logic_vector(4 downto 0);	--Señal que indica que frase se selecciono.
			clk_cont 		:out std_logic;							--Señal de reloj del contador.
			clk_mem			:out std_logic;							--Señal de reloj de la memoria ROM.
			start_tx 		:out std_logic;							--Señal de comienzo de transmision de un caracter.
			reset_cont 		:out std_logic;							--Señal de reset de contador.
			preset 			:out std_logic;							--Señal de seteo asincronico para el registro de desplazamiento.
			tri_state 		:out std_logic								--Señal tri_state de salida del proyecto RS-232.
			);
end FSM_Memoria;

architecture behav of FSM_Memoria is 
	--Declaro estados de la FSM.
	type FSM_states is (idle, ready, entrada_0, entrada_1, entrada_2, entrada_3, entrada_4, contador, memoria, start, espera);	
	
	--Declaro las señales de la FSM.
	signal current_state, next_state : FSM_states;
	
	--Establezco el estilo de codificacion.
	attribute syn_encoding :string;
	attribute syn_encoding of FSM_states : type is "one_hot";

begin 

	--Proceso de estado presente.
	cs_pr: process (clk,reset_low) 
		begin 
			if reset_low = '0' then 
				current_state <= idle;
			elsif (rising_edge(clk)) then 
				current_state <= next_state;
			end if;
		end process;
		
	--Proceso de proximo estado.
	nxs_pr: process (current_state, send_MEF1, send_OK, botones) 
		begin 
			case current_state is 
				when idle =>
					next_state <= ready;
				when ready =>
					case 	botones is
						when "00001" => next_state <= entrada_0;
						when "00010" => next_state <= entrada_1;
						when "00100" => next_state <= entrada_2;
						when "01000" => next_state <= entrada_3;
						when "10000" => next_state <= entrada_4;
						when others => next_state <= ready;
					end case;
				when entrada_0 =>
					next_state <= contador;
				when entrada_1 => 
					next_state <= contador;
				when entrada_2 => 
					next_state <= contador;
				when entrada_3 => 
					next_state <= contador;
				when entrada_4 => 
					next_state <= contador;
				when contador => 
					next_state <= memoria;
				when memoria => 
					next_state <= start;
				when start => 
					if (send_MEF1 = '0') then 
						next_state <= espera;
					elsif(send_OK = '0') then 
						next_state <= contador;
					else 
						next_state <= ready;
					end if;
				when espera => 
					if (send_MEF1 = '0') then 
						next_state <= espera;
					elsif(send_OK = '0') then 
						next_state <= contador;
					else
						next_state <= ready;
					end if;
				when others => next_state <= idle;
			end case;
		end process;
		
	--Proceso de salida Moore.
	moore_pr: process (current_state)
		begin 
			--Valores por default de salidas.
			opciones <= "00000";
			clk_cont	<= '0';
			clk_mem <= '0';
			start_tx <= '0';
 			reset_cont <= '1';
			preset <= '0';
			tri_state <= '0';
			case current_state is 
				when idle =>
					preset <= '1';
					tri_state <= '1';
				when ready =>
					reset_cont <= '0';
				when entrada_0 =>
					opciones(0) <= '1';
				when entrada_1 =>
					opciones(1) <= '1';
				when entrada_2 =>
					opciones(2) <= '1';
				when entrada_3 => 
					opciones(3) <= '1';
				when entrada_4 => 
					opciones(4) <= '1';
				when contador =>
					clk_cont <= '1';
				when memoria => 
					clk_mem <= '1';
				when start =>
					start_tx <= '1';
			when others => null;
			end case;
		end process;
	
end behav;