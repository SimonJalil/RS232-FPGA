library ieee;
use ieee.std_logic_1164.all;

entity divisores is
	port (
		clk			:in std_logic;
		clk_out_0	:out std_logic;	--4800 baud
		clk_out_1	:out std_logic;	--9600 baud
		clk_out_2	:out std_logic;	--38400 baud
		clk_out_3	:out std_logic		--115200 baud
		);
end divisores;

architecture behav of divisores is

--Constantes a los que debe llegar el contador para dividir la frecuencia especificada.
constant max_count_0: integer := 5208; --4800 baud 
constant max_count_1: integer := 2604; --9600 baud
constant max_count_2: integer := 651;  --38400 baud
constant max_count_3: integer := 217;  --15200 baud


--Señales de conteo
signal count_0: integer range 0 to max_count_0;
signal count_1: integer range 0 to max_count_1;
signal count_2: integer range 0 to max_count_2;
signal count_3: integer range 0 to max_count_3;


--Señales auxiliares de salida
signal clk_state_0 : std_logic := '0';
signal clk_state_1 : std_logic := '0';
signal clk_state_2 : std_logic := '0';
signal clk_state_3 : std_logic := '0';


begin 
	--DIVISOR DE FRECUENCIA 4800HZ 
		clock_0: process(clk, clk_state_0, count_0)
	begin
		if clk'event and clk='1' then
			if count_0 < max_count_0 then 
				count_0 <= count_0+1;
			else
				clk_state_0 <= not clk_state_0;
				count_0 <= 0;
			end if;
		end if;
	end process;
	
	salida_0: process (clk_state_0)
	begin
		clk_out_0 <= clk_state_0;
	end process;
	
	
	--DIVISOR DE FRECUENCIA 9600HZ 
		clock_1: process(clk, clk_state_1, count_1)
	begin
		if clk'event and clk='1' then
			if count_1 < max_count_1 then 
				count_1 <= count_1+1;
			else
				clk_state_1 <= not clk_state_1;
				count_1 <= 0;
			end if;
		end if;
	end process;
	
	salida_1: process (clk_state_1)
	begin
		clk_out_1 <= clk_state_1;
	end process;


	--DIVISOR DE FRECUENCIA 38400HZ 
		clock_2: process(clk, clk_state_2, count_2)
	begin
		if clk'event and clk='1' then
			if count_2 < max_count_2 then 
				count_2 <= count_2+1;
			else
				clk_state_2 <= not clk_state_2;
				count_2 <= 0;
			end if;
		end if;
	end process;
	
	salida_2: process (clk_state_2)
	begin
		clk_out_2 <= clk_state_2;
	end process;


	--DIVISOR DE FRECUENCIA 115200HZ 
		clock_3: process(clk, clk_state_3, count_3)
	begin
		if clk'event and clk='1' then
			if count_3 < max_count_3 then 
				count_3 <= count_3+1;
			else
				clk_state_3 <= not clk_state_3;
				count_3 <= 0;
			end if;
		end if;
	end process;
	
	salida_3: process (clk_state_3)
	begin
		clk_out_3 <= clk_state_3;
	end process;

end behav;