library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx is 
	port (
			clk 			:in std_logic;								--Entrada de clk.
			reset_low 	:in std_logic;								--Entrada de reset en bajo.
			rxd 			:in std_logic;								--Entrada del receptor.
			clk_entry	:in std_logic_vector(1 downto 0);	--Entradas de clk.
			rx_byte		:out std_logic_vector(7 downto 0);	--Salida de byte recibido.
			led			:out std_logic								--led indicador de transmision (cuando esta apagado esta transmitiendo).
			);
	end rx;

architecture behav of rx is 

	type FSM_states is (idle, start, data_bit, stop);
	signal current_state, next_state :FSM_states;
	
	type tabla is array (0 to 3) of integer;
	
	attribute syn_encoding	:string;
	attribute syn_encoding of FSM_states : type is "one hot";
	
	constant TABLA_DIVISORES : tabla := (5208, 2604, 650, 216);	--4800baud, 9600baud, 38400baud, 115200baud.

	signal baud_cont 	:integer range 0 to 5209 := 0;
	signal bit_cont	:integer range 0 to 8 := 0;
 	
	signal rxbuff	:std_logic_vector(7 downto 0);
	
begin 

	cs_proc: process (clk, reset_low)
		begin 
			if (reset_low = '0') then 
				current_state <= idle;
			elsif (rising_edge(clk)) then
				current_state <= next_state;
			end if;
		end process;
	
	nx_proc: process(current_state)
		begin 
			case current_state is 
				when idle =>
					if (rxd = '1') then 
						next_state <= idle;
					else 
						next_state <= start;
					end if;
				when start => 
					--if(baud_cont >= TABLA_DIVISORES(to_integer(unsigned(clk_entry)))/2) then 
					if(baud_cont >= 5208) then
						baud_cont <= 0;
						if (rxd = '1') then
							next_state <= idle;
						else
							next_state <= data_bit;
						end if;
					else 
						baud_cont <= baud_cont + 1;
						next_state <= start;
					end if;
				when data_bit =>
					--if (baud_cont < TABLA_DIVISORES(to_integer(unsigned(clk_entry)))) then 
					if (baud_cont < 5208) then 
						baud_cont <= baud_cont + 1;
						next_state <= data_bit;
					else 
						baud_cont <= 0;
						rxbuff(bit_cont) <= rxd;
						if (bit_cont < 8) then 
							bit_cont <= bit_cont + 1;
							next_state <= data_bit;
						else 
							bit_cont <= 0;
							next_state <= stop;
						end if;
					end if;
				when stop => 
					--if (baud_cont < TABLA_DIVISORES(to_integer(unsigned(clk_entry)))) then
					if (baud_cont < 5208) then
						baud_cont <= baud_cont + 1;
						next_state <= stop;
					else 
						baud_cont <= 0;
						next_state <= idle;
					end if;
				when others =>
					next_state <= idle;
			end case;
		end process;
	
	moore_pr: process (current_state)
		begin 
			led <= '1';
			case current_state is 
				when start =>
					led <= '0';
				when data_bit =>
					led <= '0';
				when stop => 
					led <= '0';
				when others => 
					null;
			end case;
		end process;
	
	rx_byte <= rxbuff;
end behav;