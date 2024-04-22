LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY nor_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END nor_func;

ARCHITECTURE arq_nor_func OF nor_func IS
BEGIN
  c_out <= a NOR b;
END arq_nor_func;
