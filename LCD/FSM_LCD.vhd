library ieee;
use ieee.std_logic_1164.all;

entity FSM_LCD is 
	generic(clk_divisor: integer := 100000);					--50Mhz a 500Hz.
	port(
			clk 			:in std_logic;								--Reloj del sistema.
			reset_low	:in std_logic;								--Reinicio activo en bajo.
			cont_ok		:in std_logic;								--Entrada del contador binario.
			entradas 	:in std_logic_vector(4 downto 0);	--Entradas de seleccion de oraciones.
			rw				:out std_logic;							--Escritura/lectura.
			rs 			:out std_logic;							--Datos/Instrucciones.
			reset_cont 	:out std_logic;							--Reset en bajo del contador binario.
			e				:buffer std_logic := '0';				--Señal de habilitacion del modulo LCD.								
			db			 	:out std_logic_vector(7 downto 0)	--Señales de datos para el LCD.								--
			);
end FSM_LCD;

architecture behav of FSM_LCD is 

	--Estados de la FSM y sus respectivas señales.
	type FSM_states is (	FunctionSet1, FunctionSet2, FunctionSet3, FunctionSet4,DisplayControl,EntryMode,SetAddress,
								ClearDisplay1,ClearDisplay2,ClearDisplay3,ClearDisplay4, ClearDisplay5,
								ReturnHome1, ReturnHome2, ReturnHome3, ReturnHome4,
								Write1, Write2, Write3, Write4, Write5, Write6, Write7, Write8, Write9, Write10, Write11, Write12, Write13, Write14, Write15, 
								Write16, Write17, Write18, Write19, Write20, Write21, Write22, Write23, Write24, Write25, Write26, Write27, Write28, Write29,
								Write30, Write31, Write32, Write33, Write34, Write35, Write36, Write37);
	
	signal current_state, next_state : FSM_states;
	
	--Estilo de codificacion.
	attribute syn_encoding :string;
	attribute syn_encoding of FSM_states :type is "one hot";
		
begin 
	
	--Generador de clock.
	clock: process(clk)
		variable cont: integer range 0 to clk_divisor;
		begin 
			if(clk'event and clk = '1') then
				cont := cont + 1;
				if(cont = clk_divisor) then 
					e <= not e;
					cont := 0;
				end if;
			end if;
		end process;
		
	--Proceso de estado presente.
	cs_proc: process(e)
		begin
			if (reset_low = '0') then 
			current_state <= FunctionSet1;
		elsif (rising_edge(e)) then 
			current_state <= next_state;
		end if;
	end process;
			
	--Proceso de proximo estado.
	nx_proc: process(current_state, entradas, cont_ok) 
		variable flag 		:bit := '0';
		variable contador :integer range 0 to 1000 := 0;
		begin 
			case current_state is
				when FunctionSet1 =>
					next_state <= FunctionSet2;
				when FunctionSet2 => 
					next_state <= FunctionSet3;
				when FunctionSet3 => 
					next_state <= FunctionSet4;
				when FunctionSet4 => 
					next_state <= ClearDisplay1;
				when ClearDisplay1 => 
					next_State <= DisplayControl;
				when DisplayControl => 
					next_state <= EntryMode;
				when EntryMode => 
					next_state <= ClearDisplay2;
				when ClearDisplay2 => 
					case entradas is 
						when "00001" => 
							next_state <= Write1;
						when "00010" =>
							next_state <= Write24;
						when "00100" => 
							next_state <= Write29;
						when "01000" => 
							next_state <= Write34;
						when "10000" => 
							flag := '1';
							next_state <= Write1;
						when others => 
							next_state <= ClearDisplay2;
					end case;
				when Write1 => 
					next_state <= Write2;
				when Write2 =>
					next_state <= Write3;
				when Write3 => 
					next_state <= Write4;
				when Write4 => 
					next_state <= Write5;
				when Write5 => 
					next_state <= Write6;
				when Write6 => 
					next_state <= Write7;
				when Write7 => 
					next_state <= Write8;
				when Write8 => 
					next_state <= Write9;
				when Write9 => 
					next_state <= Write10;
				when Write10 => 
					next_state <= Write11;
				when Write11 => 
					next_state <= Write12;
				when Write12 => 
					next_state <= Write13;
				when Write13 => 
					next_state <= SetAddress;
				when SetAddress =>
					next_state <= Write14;
				when Write14 => 
					next_state <= Write15;
				when Write15 =>
					next_state <= Write16;
				when Write16 => 
					next_state <= Write17;
				when Write17 =>
					next_state <= Write18;
				when Write18 =>
					next_state <= Write19;
				when Write19 => 
					next_state <= Write20;
				when Write20 =>
					next_state <= Write21;
				when Write21 =>
					next_state <= Write22;
				when Write22 => 
					next_state <= Write23;
				when Write23 => 
					next_state <= ReturnHome1;
				when ReturnHome1 => 
					if (cont_ok = '1') then 
						if (flag = '1') then 
							next_state <= ClearDisplay3;
						else 
							next_state <= ClearDisplay2;
						end if;
					else
						next_state <= ReturnHome1;
					end if;
				when ClearDisplay3 =>
					next_state <= Write24;
				when Write24 => 
					next_state <= Write25;
				when Write25 =>
					next_state <= Write26;
				when Write26 => 
					next_state <= Write27;
				when Write27 =>
					next_state <= Write28;
				when Write28 => 
					next_state <= ReturnHome2;
				when ReturnHome2 => 
					if (cont_ok = '1') then 
						if (flag = '1') then 
							next_state <= ClearDisplay4;
						else 
							next_state <= ClearDisplay2;
						end if;
					else
						next_state <= ReturnHome2;
					end if;
				when ClearDisplay4 => 
					next_state <= Write29;
				when Write29 => 
					next_state <= Write30;
				when Write30 => 
					next_state <= Write31;
				when Write31 => 
					next_state <= Write32;
				when Write32 => 
					next_state <= Write33;
				when Write33 => 
					next_state <= ReturnHome3;
				when ReturnHome3 => 
					if (cont_ok = '1') then 
						if (flag = '1') then 
							next_state <= ClearDisplay5;
						else 
							next_state <= ClearDisplay2;
						end if;
					else
						next_state <= ReturnHome3;
					end if;
				when ClearDisplay5 =>
					next_state <= Write34;
				when Write34 =>
					next_state <= Write35;
				when Write35 => 
					next_state <= Write36;
				when Write36 => 
					next_state <= Write37;
				when Write37 => 
					next_state <= ReturnHome4;
				when ReturnHome4 =>
					flag := '0';
					if (cont_ok = '1') then 
						next_state <= ClearDisplay2;
					else 
						next_state <= ReturnHome4;
					end if;
				when others =>
					next_state <= FunctionSet1;
			end case;
		end process;
	
	--Proceso de salida Moore.
	moore_proc: process (current_state)
		begin 
			rw <= '0';
			rs <= '0';
			reset_cont <= '0';
			db <= x"00";
			case current_state is
				when FunctionSet1 => 
					db <= x"34";
				when FunctionSet2 => 
					db <= x"34";
				when FunctionSet3 => 
					db <= x"34";
				when FunctionSet4 => 
					db <= x"34";
				when ClearDisplay1 => 
					db <= x"01";
				when DisplayControl => 
					db <= x"0c";
				when EntryMode => 
					db <= x"06";
				when ClearDisplay2 => 
					db <= x"01";
				when Write1 =>
					rs <= '1';
					db <= x"4c";
				when Write2 => 
					rs <= '1';
					db <= x"61";
				when Write3 => 
					rs <= '1';
					db <= x"62";
				when Write4 => 
					rs <= '1';
					db <= x"6f";
				when Write5 => 
					rs <= '1';
					db <= x"72";
				when Write6 =>
					rs <= '1';
					db <= x"61";
				when Write7 => 
					rs <= '1';
					db <= x"74";
				when Write8 =>
					rs <= '1';
					db <= x"6f";
				when Write9 =>
					rs <= '1';
					db <= x"72";
				when Write10 => 
					rs <= '1';
					db <= x"69";
				when Write11 => 
					rs <= '1';
					db <= x"6f";
				when Write12 => 
					rs <= '1';
					db <= x"20";
				when Write13 =>
					rs <= '1';
					db <= x"34";
				when SetAddress => 
					db <= x"c0";
				when Write14 => 
					rs <= '1';
					db <= x"43";
				when Write15 => 
					rs <= '1';
					db <= x"6f";
				when Write16 => 
					rs <= '1';
					db <= x"6d";
				when Write17 => 
					rs <= '1';
					db <= x"70";
				when Write18 => 
					rs <= '1';
					db <= x"6c";
				when Write19 => 
					rs <= '1';
					db <= x"65";
				when Write20 => 
					rs <= '1';
					db <= x"74";
				when Write21 => 
					rs <= '1';
					db <= x"61";
				when Write22 => 
					rs <= '1';
					db <= x"64";
				when Write23 => 
					rs <= '1';
					db <= x"6f";
				when ReturnHome1 => 	
					reset_cont <= '1';
					db <= x"80";
				when ClearDisplay3 => 
					db <= x"01";
				when Write24 => 
					rs <= '1';
					db <= x"53";
				when Write25 => 
					rs <= '1';
					db <= x"69";
				when Write26 => 
					rs <= '1';
					db <= x"6d";
				when Write27 => 
					rs <= '1';
					db <= x"6f";
				when Write28 => 
					rs <= '1';
					db <= x"6e";
				when ReturnHome2 => 
					reset_cont <= '1';
					db <= x"80";
				when ClearDisplay4 => 
					db <= x"01";
				when Write29 =>
					rs <= '1';
					db <= x"50";
				when Write30 => 
					rs <= '1';
					db <= x"61";
				when Write31 => 
					rs <= '1';
					db <= x"62";
				when Write32 => 
					rs <= '1';
					db <= x"6c";
				when Write33 => 
					rs <= '1';
					db <= x"6f";
				when ReturnHome3 =>
					reset_cont <= '1';
					db <= x"80";
				when ClearDisplay5 => 
					db <= x"01";
				when Write34 =>
					rs <= '1';
					db <= x"46";
				when Write35 =>
					rs <= '1';
					db <= x"50";
				when Write36 => 
					rs <= '1';
					db <= x"47";
				when Write37 =>
					rs <= '1';
					db <= x"41";
				when ReturnHome4 => 
					reset_cont <= '1';
					db <= x"80";
				when others => 
					null;
			end case;
		end process;
end behav;