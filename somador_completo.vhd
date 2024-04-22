LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY somador_completo IS
  PORT(
    a, b, c_in: IN std_logic;
    s, c_out: OUT std_logic
  );
END somador_completo;

ARCHITECTURE arq_somador_completo OF somador_completo IS
BEGIN 
  s <= c_in XOR a XOR b;
  c_out <= (a AND b) OR (a AND c_in) OR (b AND c_in);
END arq_somador_completo;
