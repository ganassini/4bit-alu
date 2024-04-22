LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY shift_left IS
  PORT(
    a: IN std_logic_vector(3 downto 0);
    s: OUT std_logic_vector(3 downto 0)
  );
END shift_left;
  
ARCHITECTURE arq_shift_left OF shift_left IS
BEGIN
  s(0) <= '0';
  s(1) <= a(0);
  s(2) <= a(1);
  s(3) <= a(2);
END arq_shift_left;
