library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity FlipFlopT is
    port (
        T, clk : in std_logic;
        Q, Qn : out std_logic
    );
end entity FlipFlopT;
architecture FFT of FlipFlopT is
signal Q1 : std_logic;
    begin
    process(clk) is
    begin
        if(clk'event and clk = '1') then
            if(T='1') then
                Q1 <= not Q1;
            else
                Q1 <= Q1;
            end if;
        end if;
    end process;
    Q <= Q1;
    Qn <= not Q1;
end architecture FFT;