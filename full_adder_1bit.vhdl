library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_1bit is
port(
  A:    in std_logic;
  B:    in std_logic;
  Ci:   in std_logic;
  Co:   out std_logic;
  Sum:  out std_logic);
end full_adder_1bit;

architecture full_adder_1bit_arch of full_adder_1bit is
begin
  Sum  <= (not Ci and (A xor B)) or (Ci and (A xnor B));
  Co   <= (A and B) or (Ci and (A xor B));
end full_adder_1bit_arch;
