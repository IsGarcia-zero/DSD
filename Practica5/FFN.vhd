library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--Flip Flop D
entity FFN is
    port (
    D, clock: in std_logic;
    Qn, sl : out std_logic
    ) ;
end FFN;
architecture archFlipFlopDN of FFN is
begin
    process(clock, D) is
    begin
        if(clock = '1') then
            Qn <= not D;
            sl <= D;
        end if;
    end process;
end archFlipFlopDN ; -- archFlipFlopD