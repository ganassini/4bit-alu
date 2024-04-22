LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY xor_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END xor_func;

ARCHITECTURE arq_xor_func OF xor_func IS
BEGIN
  c_out <= a XOR b;
END arq_xor_func;
