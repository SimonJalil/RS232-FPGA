library ieee;
use ieee.std_logic_1164.all;
use work.pkg_rom.all;

entity RS_232 is
	port (
			entry			:in std_logic_vector(4 downto 0);	--Entradas para seleccionar la frase a transmitir.
			reset_low	:in std_logic;								--Señal de reset en bajo.
			clk			:in std_logic;								--Señal de reloj.
			clk_select	:in std_logic_vector(1 downto 0);	--Entrada de seleccion de reloj de sistema (baudios).
			salida 		:out std_logic;							--Señal de salida de registro serie.
			
			--Modulo LCD.
			rw				:out std_logic;							--Escritura/lectura.
			rs 			:out std_logic;							--Datos/Instrucciones.
			e				:buffer std_logic;						--Señal de hanilitacion del modulo LCD.
			db 			:out std_logic_vector(7 downto 0)	--Señales de datos para el modulo LCD.
					
			--Estas señales se añadieron para evaluar de manera mas eficiente el test bench y entender que procesos 
			--actuaban de por medio, se pueden eliminar a traves de comentarios, haciendolo ademas con las ultimas 
			--cinco lineas de este codigo.
--			clk_en_uso		:out std_logic;
--			address			:out std_logic_vector(addr_length-1 downto 0);
--			cont_finished	:out std_logic;
--			enviado_MEF1 	:out std_logic;
--			enviar			:out std_logic;
--			ASCII				:out std_logic_vector(10 downto 0)
			);
end RS_232;

architecture behav of RS_232 is

	--Declaro parte A.
	component Punto_A is
		generic (ancho : integer :=11);
		port (
				start_tx		:in std_logic;	--Señal de comienzo de Tx.
				clk 			:in std_logic; --Señal de clock.
				reset_low 	:in std_logic;	--Señal de reset asincronico.
				preset 		:in std_logic;	
				data			:in std_logic_vector (ancho-1 downto 0);	--Dato completo, 11 bits: paridad,start,stop,ASCII.
				tri_state 	:in std_logic;
				serout 		:out std_logic;	--Señal de salida serie.
				finished 	:out std_logic
				);
	end component;
	
	--Declaro parte B.
	component Punto_B is 
		port (
				entradas 	:in std_logic_vector(4 downto 0);
				clk			:in std_logic;
				reset_low	:in std_logic;
				send_MEF1	:in std_logic;
				datos_out 	:out std_logic_vector(10 downto 0);
				preset 		:out std_logic;											
				tri_state 	:out std_logic;											
			
				enviado_cont:out std_logic;
				enviar		:out std_logic;
				direccion	:out std_logic_vector(addr_length-1 downto 0)		
				);
	end component;
	
	--Declaro divisores de frecuencia.
	component divisores is
	port (
		clk			:in std_logic;
		clk_out_0	:out std_logic;	--4800 baud
		clk_out_1	:out std_logic;	--9600 baud
		clk_out_2	:out std_logic;	--38400 baud
		clk_out_3	:out std_logic		--115200 baud
		);
	end component;
	
	--Declaro multiplexer.
	component Mux is
		generic (ent_sel: integer:= 2);
		port (
				mux_input	: in 	std_logic_vector ((2**ent_sel)-1 downto 0);						
				mux_sel		: in std_logic_vector (ent_sel-1 downto 0);
				mux_out 		: out std_logic
				);
	end component;
	
	--Declaro LCD.
	component LCD is
		port (
				clk 			:in std_logic;								
				reset_low	:in std_logic;																
				entradas 	:in std_logic_vector(4 downto 0);	
				rw				:out std_logic;							
				rs 			:out std_logic;														
				e				:buffer std_logic := '0';												
				db			 	:out std_logic_vector(7 downto 0)
				);
	end component;
	
	--Declaro antirrebote.
	component antirrebote is 
		port (
				x		:in std_logic;
				clk 	:in std_logic;
				y		:buffer std_logic
				);
	end component;
	
	--Declaro sincronizador.
	component sincronizador is 
		port(
				asyncin 	:in std_logic; 
				clock 	:in std_logic; 
				reset		:in std_logic;	
				syncin 	:out std_logic		
				);
	end component;
	
	--Declaro señales auxiliares
	signal enviado			:std_logic;												--Señal de caracter ASCII enviado por parte de Punto_A.
	signal dato 			:std_logic_vector(10 downto 0);					--Señal RS232 a transmitir.
	signal enviar_dato	:std_logic;												--Comienzo de transmision de dato ASCII.	
	signal reg_out			:std_logic;												--Salida serie del registro de desplazamiento.
	signal direccion		:std_logic_vector(addr_length-1 downto 0);	--Direccion de memoria ROM.
	signal enviadoXcont	:std_logic;												--Termino de envio de la frase completa.
	signal set				:std_logic;												--Señal para precargar el registro de desplazamiento.
	signal triState 		:std_logic;												--Señal de triState de salida del RS232.
	signal clocks			:std_logic_vector(3 downto 0);					--Señales de reloj proveniente de divisores de frecuencia.
	signal clk_RS_232		:std_logic;												--Señal de clock para RS232.
	signal antirrebTosinc:std_logic_vector(4 downto 0);					--Señales de antirebotes a sincronizadores.
	signal sincToRS232	:std_logic_vector(4 downto 0);					--Señales de sincronizadores a RS232 y LCD.
	
begin 
	
	antirrebotes: for i in 0 to 4 generate
		begin
			antirreb: antirrebote port map(x => entry(i), clk => clk_RS_232, y => antirrebTosinc(i));
		end generate;
	
	sincronizadores: for i in 0 to 4 generate
		begin
			sinc: sincronizador port map(asyncin => antirrebTosinc(i), clock => clk_RS_232, reset => reset_low, syncin => sincToRS232(i));
		end generate; 
	
	Parte_A: Punto_A port map(start_tx => enviar_dato, clk => clk_RS_232, reset_low => reset_low, data => dato, serout => reg_out, finished => enviado, preset => set,tri_state => 
										triState);
	
	Parte_B: Punto_B port map(entradas => sincToRS232, clk => clk_RS_232, reset_low => reset_low, send_MEF1 => enviado, datos_out => dato, enviado_cont => enviadoXcont,
										enviar => enviar_dato, direccion => direccion, preset => set, tri_state => triState);
																	
	Clock: divisores port map(clk => clk, clk_out_0 => clocks(0), clk_out_1 => clocks(1), clk_out_2 => clocks(2), clk_out_3 => clocks(3));
	
	Multiplexer: Mux port map(mux_input => clocks, mux_sel => clk_select, mux_out => clk_RS_232);
	
	mod_lcd: LCD port map(clk => clk, reset_low => reset_low, entradas => sincToRS232, rw => rw, rs => rs, e => e, db => db);
	
	Salida <= reg_out;
	
	--Señales extras para test bench. 
--	clk_en_uso <= clk_RS_232;
--	address <= direccion;
--	cont_finished <= enviadoXcont;
--	enviado_MEF1 <= enviado;
--	enviar <= enviar_dato;
--	ASCII <= dato;
end behav;