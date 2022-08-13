library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity DisplayS is
    port (
        e11, e21, e31, e41, e51, e61, e71, e81: in std_logic;
        a1,b1 , c1, d1, e1, f1, g1: out std_logic;
        a2,b2 , c2, d2, e2, f2, g2: out std_logic
    );
end entity DisplayS;
architecture nya of DisplayS is
    signal display1 : std_logic_vector(0 to 6);
    signal display2 : std_logic_vector(0 to 6);
    signal entrada1 : std_logic_vector(0 to 3);
    signal entrada2 : std_logic_vector(0 to 3);
begin
    entrada1 <= (e11, e21, e31, e41);
    entrada2 <= (e51, e61, e71, e81);
    process(entrada1, entrada2)
    begin
        case (entrada1) is
            when "0000" => display1 <= "0000001";--0
            when "0001" => display1 <= "1001111";--1
            when "0010" => display1 <= "0010010";--2
            when "0011" => display1 <= "0000110";--3
            when "0100" => display1 <= "1001100";--4
            when "0101" => display1 <= "0100100";--5
            when "0110" => display1 <= "0100000";--6
            when "0111" => display1 <= "0001111";--7
            when "1000" => display1 <= "0000000";--8
            when "1001" => display1 <= "0000100";--9
            when "1010" => display1 <= "0001000";--A
            when "1011" => display1 <= "0000000";--B
            when "1100" => display1 <= "0110001";--C
            when "1101" => display1 <= "0000001";--D
            when "1110" => display1 <= "0110000";--E
            when "1111" => display1 <= "0111000";--F
        end case;
        case (entrada2) is
            when "0000" => display2 <= "0000001";--0
            when "0001" => display2 <= "1001111";--1
            when "0010" => display2 <= "0010010";--2
            when "0011" => display2 <= "0000110";--3
            when "0100" => display2 <= "1001100";--4
            when "0101" => display2 <= "0100100";--5
            when "0110" => display2 <= "0100000";--6
            when "0111" => display2 <= "0001111";--7
            when "1000" => display2 <= "0000000";--8
            when "1001" => display2 <= "0000100";--9
            when "1010" => display2 <= "0001000";--A
            when "1011" => display2 <= "0000000";--B
            when "1100" => display2 <= "0110001";--C
            when "1101" => display2 <= "0000001";--D
            when "1110" => display2 <= "0110000";--E
            when "1111" => display2 <= "0111000";--F
        end case;
    end process;
    a1 <= display1(0);
    b1 <= display1(1);
    c1 <= display1(2);
    d1 <= display1(3);
    e1 <= display1(4);
    f1 <= display1(5);
    g1 <= display1(6);
    a2 <= display2(0);
    b2 <= display2(1);
    c2 <= display2(2);
    d2 <= display2(3);
    e2 <= display2(4);
    f2 <= display2(5);
    g2 <= display2(6);
end architecture nya;