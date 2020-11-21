library ieee;
use ieee.std_logic_1164.all;

entity FSM_Reg_Despl is
	port (
			start_tx		:in std_logic;		--Señal de comienzo de transmision de caracter ASCII.
			cont_ok		:in std_logic;		--Señal de flag de finalizacion del contador binario.
			clk			:in std_logic;		--Señal de reloj.
			rst_low		:in std_logic;		--Señal de reset en bajo.
			l_s			:out std_logic;	--Salida que indica al registro la carga paralela de datos.
			start_cont	:out std_logic;	--Salida de habilitacion del contador binario. 
			rst_cont		:out std_logic;	--Salida de reset del contador binario.
			finished_tx :out std_logic		--Salida para indicar termino de la transmision de caracter ASCII.
			);
end FSM_Reg_Despl;

architecture behav of FSM_Reg_Despl is

	--Declaro los estados de la FSM.
	type FSM_states is (idle,load_shift,cont_down,finished);
	
	--Declaro las señales de la FSM.
	signal current_state, next_state : FSM_states;
	
	--Establezco el estilo de codificacion.
	attribute syn_encoding: string;
	attribute syn_encoding of FSM_States : type is "one hot";
	
begin 
	
	--Proceso de estado presente.
	cs_pr: process (clk,rst_low) 
	begin 
		if rst_low = '0' then 
			current_state <= idle;
		elsif (rising_edge(clk)) then 
			current_state <= next_state;
		end if;
	end process;
	
	--Proceso de proximo estado.
	nxp: process(current_state,start_tx,cont_ok)
	begin 
		case current_state is
		
			when idle => 
				if (start_tx = '1') then 
					next_state <= load_shift;
				else 
					next_state <= idle;
				end if;
			
			when load_shift => 
				next_state <= cont_down;
			
			when cont_down =>
				if cont_ok = '1' then
					next_state <= finished;
				else 
					next_state <= cont_down;
				end if;
			
			when finished => 
				next_state <= idle;
				
		end case;
	end process;
	
	--Proceso de salida Moore.
	moore_pr: process (current_state)
	begin 
		--Valores por default.
		l_s			<= '0';	
		start_cont 	<= '0';	
		rst_cont		<= '1';
		finished_tx <= '0';	
		case current_state is 
			when idle => 
				rst_cont <= '0';
			when load_shift => 
				l_s <= '1';
			when cont_down =>
				start_cont <= '1';
			when finished => 
				finished_tx <= '1';
			when others => null;
		end case;
	end process;
	
end behav;