library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity FlipFlopJK is
    port (
        clk, J, K: in std_logic;
        Q, Qn: out std_logic
    );
end entity FlipFlopJK;
architecture FFJK of FlipFlopJK is
    signal Q1, Q2: std_logic;
    signal input: std_logic_vector(0 to 1);
begin
    input <= J & K;
    process(clk) is
    begin
        if(clk'event and clk = '1') then
            case input is
                when "10" => Q1 <= '1';
                when "01" => Q1 <= '0';
                when "00" => Q1 <= Q2;
                when "11" => Q1 <= not Q2;
                when others => null;
            end case;
        end if;
    end process;
    Q <= Q1;
    Qn <= not Q1;
    Q2 <= Q1;
end architecture FFJK;