library IEEE;
use IEEE.std_logic_1164.all;

entity frecuencia_5Hz is
	port(
		reloj : in std_logic;
		reset : in std_logic;
		sal : out std_logic
	);
	
end frecuencia_5Hz;

architecture Contador of frecuencia_5Hz is

	signal salida : std_logic;
	 --Para frecuencia es (50Mhz/5Hz) - 1 = 9999999. Donde 5Hz es la frecuencia que se quiere obtener y 50MHz es la frecuencia del FPGA
	signal cuenta : integer range 0 to 9999999 := 0;
	
begin

	DivisorFrecuencia : process(reloj, reset) begin
	
		if reset = '0' then
			salida <= '0';
			cuenta <= 0;
			
		elsif rising_edge(reloj) then
			if cuenta = 9999999 then
				cuenta <= 0;
				salida <=not salida;
				
			else
				cuenta <= cuenta + 1;
			end if;
		end if;
	end process;
	
sal <= salida;
	
end Contador;