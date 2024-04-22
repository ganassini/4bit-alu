LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY shift_right IS
 PORT(
   a: IN std_logic_vector(3 downto 0);
   s: OUT std_logic_vector(3 downto 0)
 );
END shift_right;
  
ARCHITECTURE arq_shift_right OF shift_right IS
BEGIN
  s(0) <= a(1);
  s(1) <= a(2);
  s(2) <= a(3);
  s(3) <= '0';
END arq_shift_right;
