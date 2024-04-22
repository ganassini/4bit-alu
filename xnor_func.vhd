LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY xnor_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END xnor_func;

ARCHITECTURE arq_xnor_func OF xnor_func IS
BEGIN
  c_out <= a XNOR b;
END arq_xnor_func;
