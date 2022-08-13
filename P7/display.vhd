library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity Display is
    port (
        e1, e2, e3, e4 : in std_logic;
        a, b, c, d, e, f, g: out std_logic
    );
end entity Display;
architecture ds of Display is
    signal aux: std_logic_vector(0 to 3);
    signal displayr: std_logic_vector(0 to 6);
begin
    aux <= (e1, e2, e3, e4);
    process(aux)
    begin
        case aux is
            when "0000" => displayr <= "0000001";--0
            when "0001" => displayr <= "1001111";--1
            when "0010" => displayr <= "0010010";--2
            when "0011" => displayr <= "0000110";--3
            when "0100" => displayr <= "1001100";--4
            when "0101" => displayr <= "0100100";--5
            when "0110" => displayr <= "0100000";--6
            when "0111" => displayr <= "0001111";--7
            when "1000" => displayr <= "0000000";--8
            when "1001" => displayr <= "0000100";--9
            when "1010" => displayr <= "0001000";--A
            when "1011" => displayr <= "0000000";--B
            when "1100" => displayr <= "0110001";--C
            when "1101" => displayr <= "0000001";--D
            when "1110" => displayr <= "0110000";--E
            when "1111" => displayr <= "0111000";--F
        end case;
    end process;
    a <= displayr(0);
    b <= displayr(1);
    c <= displayr(2);
    d <= displayr(3);
    e <= displayr(4);
    f <= displayr(5);
    g <= displayr(6);
end architecture ds;