library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--Divisor de frecuencia a 5Hz
entity Frecuencias is
    port (
        clk, rst : in std_logic;
        salidaLed : out std_logic
    );
end entity Frecuencias;
architecture rtl of Frecuencias is
    signal  contador: integer range 0 to 9999999 :=0;    --aquí se declara el wire!!
    signal  salida_media: std_logic;  --aqui se declara el wire!
    begin
            Divisor_frecuencia: process(clk,rst) 
                    begin
                    if rst ='0' 
                    then
                    salida_media<='0';
                    contador <= 0;  -- se resetea el contador
                    elsif rising_edge(clk) then -- puede ser clk'event 
                    if contador = 9999999  then
                        contador<=0;
                        salida_media<= not salida_media;
                    else
                        contador<= contador+1;
                    end if;
                    end if;
                    end process;
                    salidaLed<=salida_media;
end architecture rtl;