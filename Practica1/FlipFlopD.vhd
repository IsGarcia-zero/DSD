library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--Flip Flop D
entity FlipFlopD is
   port (
    D, clock: in std_logic;
    Q, Qn : out std_logic
  ) ;
end FlipFlopD;
architecture archFlipFlopD of FlipFlopD is
begin
    process(clock, D) is
    begin
        if(clock'event and clock = '1') then
            Q <= D;
            Qn <= not D;
        end if;
    end process;
end archFlipFlopD ; -- archFlipFlopD