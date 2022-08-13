library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity Mux is
  port (
    qjk, qnjk, qt, qnt, qd, qnd, qsr, qnsr, s0, s1: in std_logic;
    salida, salidaNegada: out std_logic
  ) ;
end Mux;
architecture recargas of Mux is
  signal MUX, MUXN: std_logic;
begin
  
  process(s0,s1 , qjk, qnjk, qt, qnt, qd, qnd, qsr, qnsr)
  begin
    if(s0='0' and s1='0') then
      MUX <= qjk;
      MUXN <= qnjk;
    elsif(s0='0' and s1='1') then
      MUX <= qt;
      MUXN <=qnt;
    elsif(s0='1' and s1='0') then
      MUX <= qd;
      MUXN <= qnd;
    elsif(s0='1' and s1='1') then
      MUX <= qsr;
      MUXN <= qnsr;
    end if;
  end process;
  salida <= MUX;
  salidaNegada <= MUXN;
end architecture recargas;