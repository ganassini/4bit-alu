LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY or_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END or_func;

ARCHITECTURE arq_or_func OF or_func IS
BEGIN 
  c_out <= a OR b;
END arq_or_func;
