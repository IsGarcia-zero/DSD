library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity Prueba is
    port (
        btn_clk : in std_logic;
        led: out std_logic
    );
end entity Prueba;
architecture arch of Prueba is
begin
    led <= btn_clk;
end architecture arch;