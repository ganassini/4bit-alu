LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY and_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END and_func;

ARCHITECTURE arq_and_func OF and_func IS
BEGIN 
  c_out <= a and b;
END arq_and_func;
