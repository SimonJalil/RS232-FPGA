library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_rom.all;


entity Memoria_ROM is
	port (
			clk		:in std_logic;												--Señal de reloj de la memoria ROM.
			address 	:in std_logic_vector(addr_length-1 downto 0);	--Señal de entrada correspondiente a la direccion del caracter a buscar.
			data_out	:out std_logic_vector(data_legth_ok-1 downto 0) --Dato ASCII junto con el bit start, stop y paridad par.
			);
end Memoria_ROM;

architecture behav of Memoria_ROM is

	--Señales auxiliares.
	signal dato_ok				:std_logic_vector(data_legth_ok-1 downto 0);

begin
		--La memoria ROM opera de la siguiente manera:
		--Cuando hay prescencia de flanco positivo de reloj, la memoria arroja a la salida el dato completo (bit start,dato ASCII, bit paridad par, bit stop),
		--Pero antes se convierte el dato a bit_vector de manera de poder acoplarle los bits corrspondientes de paridad par , start y stop, una vez hecho esto,
		--se vuelve a convertir a std_logic_vector y se brinda a la salida.
		rom_proc : process (clk)
		begin
			if (rising_edge(clk) and clk = '1') then
				dato_ok <=to_stdlogicvector('0' & to_bitvector(mem(to_integer(unsigned(address)))) & bit_paridad_par(to_bitvector(mem(to_integer(unsigned(address))))) & '1');
			end if;
	end process rom_proc;
	data_out <= dato_ok;
end architecture behav;