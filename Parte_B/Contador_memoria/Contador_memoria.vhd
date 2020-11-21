library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;


entity Contador_memoria is 
	port (
			entradas		:in std_logic_vector(4 downto 0);	--Señales que seleccionan la frase a buscar en memoria.
			clk 			:in std_logic;								--Señal de reloj.
			reset_low	:in std_logic;								--Señal de reset en bajo.
			send_ready	:out std_logic;							--Señal de finalizacion del contador.
			address_out	:out std_logic_vector (5 downto 0)	--Salida que representa la direccion del caracter en memoria ROM.
			);
end Contador_memoria;

architecture behav of Contador_memoria is 

	--Señales de conteo.
	signal cont	:integer range 0 to 38;
	
			
	--Señal de seleccion de opcion de palabras.
	signal opcion	:std_logic_vector(4 downto 0);
	signal proceso	:std_logic_vector(4 downto 0);
		
	--Señales auxiliar de salida 
	signal contTosend_ready		:std_logic;
	signal contToaddress_out 	:std_logic_vector (5 downto 0);
		
begin 

	--En este apartado a traves de latchs se selecciona el tipo de opcion del contador en base a las entradas.
	opciones: for i in 0 to 4 generate
		opcion(i) <= '1' when entradas(i) = '1' else '0' when (reset_low = '0');
	end generate opciones;
	
	--En esta seccion se asegura en base a un with select que no se hayan seleccionado al mismo instante dos opciones. 
	--Es una manera de asegurarse que se seleccione una opcion del contador.
	with opcion select 
		proceso <=	"00001" when "00001",
						"00010" when "00010",
						"00100" when "00100",
						"01000" when "01000",
						"10000" when "10000",
						"00000" when others;
	
	
	--El contador opera de la siguiente manera:
	--En base a una opcion el contador debe arrojar a la salida la direccion de memoria correspondiente al caracter.
	--Como previamente se conoce la ubicacion de cada caracter en memoria y ademas el inicio y final de cada frase,
	--el contador proporciona el lugar de memoria del primer caracter inicio de cada frase hasta su caracter final, lo cual en
	--ese instante se activa una bandera de finalizacion por parte del contador.
	contador: process (clk,reset_low)	
		begin
			if (reset_low = '0') then 
				cont <= 0;	
				contTosend_ready <= '0';
				contToaddress_out <= "111111";
			elsif (clk'event and clk = '1') then  
				if((cont = 24 and proceso = "00001") or (cont = 5 and proceso = "00010") or (cont = 5 and proceso = "00100") or (cont = 4 and proceso = "01000") or (cont = 38 and proceso = "10000")) then 
					contTosend_ready <= '1';
					contToaddress_out <= "100110"; --Direccion de memoria correspondiente al caracter punto '.'. 
				else 
					contTosend_ready <= '0';
					case proceso is 
						when "00001" => 	contToaddress_out <= conv_std_logic_vector(cont,6);
												cont <= cont + 1;
						when "00010" =>	contToaddress_out <= conv_std_logic_vector(cont+24,6);
												cont <= cont + 1;
						when "00100" => 	contToaddress_out <= conv_std_logic_vector(cont+29,6);
												cont <= cont + 1;
						when "01000" => 	contToaddress_out <= conv_std_logic_vector(cont+34,6);
												cont <= cont + 1;
						when "10000" => 	contToaddress_out <= conv_std_logic_vector(cont,6);
												cont <= cont + 1;
						when others  =>   contToaddress_out <= "ZZZZZZ";
					end case;
				end if;	
			end if;
		end process;
	
	send_ready <= contTosend_ready;
	address_out	<= contToaddress_out;

end behav;
	