library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
entity contador is
    port (
        frec, rstp : in std_logic;
        l1, l2, l3, l4, l5, l6, l7, l8: out std_logic
    );
end entity contador;
architecture cont of contador is
    signal led_aux : std_logic_vector(0 to 7) := "00000000";
begin
    process(frec)
    begin
        if frec = '1' then
            led_aux <= led_aux + 1;
        end if;
    end process;
    l1 <= led_aux(0);
    l2 <= led_aux(1);
    l3 <= led_aux(2);
    l4 <= led_aux(3);
    l5 <= led_aux(4);
    l6 <= led_aux(5);
    l7 <= led_aux(6);
    l8 <= led_aux(7);
end architecture cont;