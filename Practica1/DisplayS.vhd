library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity DisplayS is
    port (
        entradaP: in std_logic;
        a,b , c, d, e, f, g: out std_logic
    );
end entity DisplayS;
architecture nya of DisplayS is
    signal display : std_logic_vector(0 to 6);
begin
    process(entradaP)
    begin
        case (entradaP) is
            when '0' => display <= "0000001";
            when '1' => display <= "1001111";
        end case;
    end process;
    a <= display(0);
    b <= display(1);
    c <= display(2);
    d <= display(3);
    e <= display(4);
    f <= display(5);
    g <= display(6);
end architecture nya;