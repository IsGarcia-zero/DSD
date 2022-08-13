library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity FlipFlopSR is
    port (
        S, R, clk : in std_logic;
        Q, Qbar : out std_logic
    );
end entity FlipFlopSR;
architecture Behavioral of FlipFlopSR is
    begin
    process(clk, S, R) is
        begin
        if(RISING_EDGE(clk)) then
            if(S/=R) then
                Q <= S;
                Qbar <= R;
            elsif(S='1' and R='1') then
                Q <= 'Z';
                Qbar <= 'Z';
            end if;
        end if;
    end process;
end Behavioral;
            