library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mod_7seg is 
	port(
		x		:in std_logic_vector(15 downto 0);
		clk	:in std_logic;
		clr 	:in std_logic;
		salida:out std_logic_vector(6 downto 0);
		dig 	:out std_logic_vector(3 downto 0);
		dp 	:out std_logic
	);
end mod_7seg;

architecture behav of mod_7seg is
	signal s			:std_logic_vector(1 downto 0);
	signal digit	:std_logic_vector(3 downto 0);
	signal hab		:std_logic_vector(3 downto 0);
	signal clkdiv	:std_logic_vector(19 downto 0);
begin
	s <= clkdiv(19 downto 18);
	hab <= "1111";
	dp <= '0';
	
	--Mux
	process(s,x)
	begin 
		case s is 
			when "00" => digit <= x(3 downto 0);
			when "01" => digit <= x(7 downto 4);
			when "10" => digit <= x(11 downto 8);
			when "11" => digit <= x(15 downto 12);
		end case;
	end process;
	
	--decodificador de 7 segmentos.
	process(digit)
	begin 
		case digit is
			when "0000" => salida <= "0000001";--0
			when "0001" => salida <= "1001111";--1
			when "0010" => salida <= "0010010";--2
			when "0011" => salida <= "0000110";--3
			when "0100" => salida <= "1001100";--4
			when "0101" => salida <= "0100100";--5
			when "0110" => salida <= "0100000";--6
			when "0111" => salida <= "0001101";--7
			when "1000" => salida <= "0000000";--8
			when "1001" => salida <= "0000100";--9
			when "1010" => salida <= "1100000";--A
			when "1011" => salida <= "1100000";--b
			when "1100" => salida <= "0110001";--C
			when "1101" => salida <= "1000010";--d
			when "1110" => salida <= "0110000";--E
			when others => salida <= "0111000";--F 
		end case ;
	end process;
	
	--Seleccion de digito.
	process(s,hab)
	begin 
		dig <= "1111";
		if (hab(conv_integer(s)) = '1') then
			dig(conv_integer(s)) <= '0';
		end if;
	end process;
	
	--Divisor de frecuencia.
	process(clk,clr)
	begin 
		if (clr = '0') then 
			clkdiv <= (others => '0');
		elsif (clk'event and clk = '1') then 
			clkdiv <= clkdiv + 1;
		end if;
	end process;
end behav;
			