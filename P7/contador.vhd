library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Contador is
    port (
        metal: in std_logic;
        a, b, c, d: out std_logic
    );
end entity Contador;
architecture Contador of Contador is
    signal aux : std_logic_vector(0 to 3) := "0000";
    begin
    process(metal)
    begin
        if (rising_edge(metal) and metal='1') then
            aux <= aux + 1;
        end if;
        end process;
        a <= aux(0);
        b <= aux(1);
        c <= aux(2);
        d <= aux(3);
end architecture Contador;

