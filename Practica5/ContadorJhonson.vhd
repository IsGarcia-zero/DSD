library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity ContadorJhonson is
    port (
        clk: in std_logic;
        Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8: out std_logic
    );
end entity ContadorJhonson;
architecture jhon of ContadorJhonson is
    signal Q: std_logic_vector(0 to 7) := "00000000";
begin
    process(clk)
    begin
        if clk = '1' then
            Q(1) <= Q(0);
            Q(2) <= Q(1);
            Q(3) <= Q(2);
            Q(4) <= Q(3);
            Q(5) <= Q(4);
            Q(6) <= Q(5);
            Q(7) <= Q(6);
            Q(0) <= not Q(7);
        end if;
    end process;
    Q1 <= Q(0);
    Q2 <= Q(1);
    Q3 <= Q(2);
    Q4 <= Q(3);
    Q5 <= Q(4);
    Q6 <= Q(5);
    Q7 <= Q(6);
    Q8 <= Q(7);    
end architecture jhon;