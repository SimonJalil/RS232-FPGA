library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX_TB is
end UART_RX_TB;

architecture behav of UART_RX_TB is

  constant semiperiod : time := 10 ns;
  
  -- Queremos una interfaz de 115200
  -- 25000000 / 115200 = 217 Clocks Por Bit.
  constant clksXbit : integer := 435;

  -- 1/115200:
  constant perXbit : time := 8680 ns;
  
  signal tb_clock		: std_logic := '0';
  signal tb_rx_serial: std_logic := '1';
  signal tb_rx_byte	: std_logic_vector(7 downto 0);
  
  procedure send_byte (
    data_in       		: in  std_logic_vector(7 downto 0);
    signal serial_out 	: out std_logic) is
  begin

    -- Envio el bit de start
    serial_out <= '0';
    wait for perXbit;

    -- Envio el dato 
    for ii in 0 to 7 loop
      serial_out <= data_in(ii);
      wait for perXbit;
    end loop;  -- ii

    -- Envio el bit de stop
    serial_out <= '1';
    wait for perXbit;
  end send_byte;
  
begin

  -- Instancio el receptro UART
  uut : entity work.UART_RX
    generic map (
      clksXbit => clksXbit
      )
    port map (
      clk       => tb_clock,
      rx_serial => tb_rx_serial,
      rx_byte   => tb_rx_byte
      );

  clock_generate: tb_clock <= not tb_clock after semiperiod;
  
  data_gen: process
  begin
    -- Envio un comando UART
    wait until rising_edge(tb_clock);
    send_byte(x"37", tb_rx_serial);
    wait until rising_edge(tb_clock);

    -- Chequeo si el correspondiente byte fue enviado con exito.
    if tb_rx_byte = X"37" then
      report "Test aprobado - Correcta recepcion de byte" severity note;
    else 
      report "Test desaprobado - Incorrecta recepcion de byte" severity note;
    end if;

    assert false report "Tests Completado" severity failure;
    
  end process;
  
end behav;