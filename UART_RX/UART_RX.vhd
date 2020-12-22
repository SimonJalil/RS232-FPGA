library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX is
  generic (
    clksXbit : integer := 217     
    );
  port (
    clk       : in  std_logic;
    rx_serial : in  std_logic;
    rx_byte   : out std_logic_vector(7 downto 0)
    );
end UART_RX;


architecture behav of UART_RX is

  type FSM_states is (idle, start, data_bit, stop, espera);
  signal state	: FSM_states := idle;
  
  attribute syn_encoding	:string;
  attribute syn_encoding of FSM_states : type is "one hot";

  signal baud_cont 	: integer range 0 to clksXbit-1 := 0;
  signal bit_cont 	: integer range 0 to 7 := 0;  
  signal rx			   : std_logic_vector(7 downto 0) := (others => '0');
  
begin

  proc : process (clk)
  begin
    if rising_edge(clk) then
        
      case state is

        when idle =>
          baud_cont <= 0;
          bit_cont <= 0;

          if rx_serial = '0' then       
            state <= start;
          else
            state <= idle;
          end if;
			 
        when start =>
          if baud_cont = (clksXbit-1)/2 then
            if rx_serial = '0' then
              baud_cont <= 0;  
              state   <= data_bit;
            else
				  state <= idle;
            end if;
          else
            baud_cont <= baud_cont + 1;
            state   <= start;
          end if;

        when data_bit =>
          if baud_cont < clksXbit-1 then
            baud_cont <= baud_cont + 1;
            state   <= data_bit;
          else
            baud_cont            <= 0;
            rx(bit_cont) <= rx_serial;
            
            if bit_cont < 7 then
              bit_cont <= bit_cont + 1;
              state   <= data_bit;
            else
              bit_cont <= 0;
              state   <= stop;
            end if;
          end if;
			 
        when stop =>
          if baud_cont < clksXbit-1 then
            baud_cont <= baud_cont + 1;
            state   <= stop;
          else
            baud_cont <= 0;
            state   <= espera;
          end if;
          
        when espera =>
          state <= idle;
       
        when others =>
          state <= idle;

      end case;
    end if;
  end process;

  rx_byte <= rx;
  
end behav;
