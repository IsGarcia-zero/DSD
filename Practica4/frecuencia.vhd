library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity frecuencia is
    port (
        clk, rst : in std_logic;
        salidaLed : out std_logic
    );
end entity frecuencia;
architecture rtl of frecuencia is
    signal  contador: integer range 0 to 49999999 :=0;    
    signal  salida_media: std_logic;  
    begin
            Divisor_frecuencia: process(clk,rst) 
                    begin
                    if rst ='0' 
                    then
                    salida_media<='0';
                    contador <= 0;  
                    elsif rising_edge(clk) then 
                    if contador = 49999999  then
                        contador<=0;
                        salida_media<= not salida_media;
                    else
                        contador<= contador+1;
                    end if;
                    end if;
                    end process;
                    salidaLed<=salida_media;
end architecture rtl;