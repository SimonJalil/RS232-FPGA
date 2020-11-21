library ieee;
use ieee.std_logic_1164.all;
use work.pkg_rom.all;

entity tb_Memoria_ROM is
end tb_Memoria_ROM;

architecture behav of tb_Memoria_ROM is 

	--Declaro componenete a testear.
	component Memoria_ROM is 
	port (
			clk		:in std_logic;
			address 	:in std_logic_vector(addr_length-1 downto 0);
			data_out	:out std_logic_vector(data_legth_ok-1 downto 0)
			);
	end component;

	--Señales de test bench 
	signal clk_tb			:std_logic;
	signal address_tb 	:std_logic_vector(addr_length-1 downto 0);
	signal data_out_tb	:std_logic_vector (data_legth_ok-1 downto 0);

begin 
	
		
	uut: Memoria_ROM  port map (clk => clk_tb, address => address_tb, data_out => data_out_tb);
		
	data_gen: process 
		begin 
		
			--Ingreso la direccion x"00" para obtener el primer dato de la memoria rom a la salida.
			--En el proyecto se encuentra una tabla con las distintas direcciones y correspondientes caracteres almacenados en cada una de ellas.
			clk_tb <= '0';
			address_tb <= "000000";
			wait for 50us;
			
			
			clk_tb <= '1';
			wait for 50us;
			wait for 50us;
			
			--Provamos con otra direccion.
			clk_tb <= '0';
			address_tb <= "000001";
			wait for 50us;
			
			
			clk_tb <= '1';
			wait for 50us;
			wait for 50us;
			
			--Provamos con la ultima direccion.
			clk_tb <= '0';
			address_tb <= "111111";
			wait for 50us;
			
			--Volvemos a comenzar.
			clk_tb <= '1';
			wait for 50us;
			wait for 50us;
		
		end process;		
	
	

end architecture behav;

