library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_rom is
	constant data_length 	: natural := 8;	--Constante de longitud de dato.
	constant data_legth_ok	: natural := 11;	--Constante de longitud de datos, incluido el bit paridad, start y stop.
	constant addr_length 	: natural := 6;	--Constante de longitud de direccion.
	constant mem_size 		: natural := 2**addr_length;	--Constante de tamaño de memoria.
	
	
	--DATOS MEMORIA ROM
	subtype rom_word is std_logic_vector(data_length-1 downto 0);
	
	type mem_type is array (mem_size-1 downto 0) of rom_word;
	
	constant mem : mem_type :=
		(	 0 => x"4c",--L
			 1 => x"61",--a
			 2 => x"62",--b
			 3 => x"6f",--o
			 4 => x"72",--r
			 5 => x"61",--a
			 6 => x"74",--t
			 7 => x"6f",--o
			 8 => x"72",--r
			 9 => x"69",--i
			10 => x"6f",--o
			11 => x"20",--
			12 => x"34",--4
			13 => x"20",--
			14 => x"43",--C
			15 => x"6f",--o
			16 => x"6d",--m
			17 => x"70",--p
			18 => x"6c",--l
			19 => x"65",--e
			20 => x"74",--t
			21 => x"61",--a
			22 => x"64",--d
			23 => x"6f",--o
			
			24 => x"53",--S
			25 => x"69",--i
			26 => x"6d",--m
			27 => x"6f",--o
			28 => x"6e",--n
			
			29 => x"50",--P
			30 => x"61",--a
			31 => x"62",--b
			32 => x"6c",--l
			33 => x"6f",--o
			
			34 => x"46",--F
			35 => x"50",--P
			36 => x"47",--G
			37 => x"41",--A
			38 => x"2E",--.
			
			others => x"00"
		);
	
	function bit_paridad_par (dato: in bit_vector) return bit;
	
end package;


package body pkg_rom is


	--Funcion parodad par, la misma opera de la siguiente manera:
	--Dicha funcion tiene como entrada un dato de tipo bit_vector mientras que la misma arroja como dato un bit.
	--La funcion realiza un loop en todo el rango del bit_vector y realiza la funcion XOR entre cada uno de ellos con un bit de testeo el cual,
	--para obtener un bit de paridad par, el bit de testeo debe ser '1' al inicio del programa, si se desea obtener un bit de paridad impar el bit de testeo
	--debe ser '0'.
	function bit_paridad_par (dato: in bit_vector) return bit is 
			variable bit_test : bit;
		begin 
			bit_test := '1';
			for i in dato'range loop
				bit_test := bit_test xor dato(i);
			end loop;
		return bit_test;
	end function;
	
end package body pkg_rom;


