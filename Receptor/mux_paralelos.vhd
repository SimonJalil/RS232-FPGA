library  ieee;
use      ieee.std_logic_1164.all;
use 	   ieee.numeric_std.all;

entity mux_paralelos is 
port(
	--Seleccion de datos.
	sel: in std_logic_vector (2 downto 0);
	--Entrada de datos.
	in1, in2, in3, in4, in5, in6, in7, in8: in std_logic_vector (7 downto 0);
	--Salida.
	out_8mx: out std_logic_vector (7 downto 0)
);
end mux_paralelos;

architecture behav of mux_paralelos is


component mux is
generic (ent_sel: integer:= 3);
	port(
			mux_input	: in 	std_logic_vector ((2**ent_sel)-1 downto 0);						
			mux_sel		: in std_logic_vector (ent_sel-1 downto 0);
			mux_out 		: out std_logic	
			);
		
end component;


type arreglo is array (7 downto 0) of std_logic_vector (7 downto 0);
signal mi_arreglo: arreglo;

begin
	t:for i in out_8mx'range generate
		mi_arreglo(i) <= in1(i) & in2(i) & in3(i) & in4(i) & in5(i) & in6(i) & in7(i) & in8(i);
		
		
		u1: mux port map(
			mux_input => mi_arreglo(i),
			mux_out => out_8mx(i),
			mux_sel => sel		
		);
	end generate t;
	
end behav;