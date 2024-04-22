LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY nand_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END nand_func;

ARCHITECTURE arq_nand_func OF nand_func IS
BEGIN 
  c_out <= a NAND b;
END arq_nand_func;
