LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY meio_somador IS
  PORT(
    a, b: IN std_logic;
    s, c_out: OUT std_logic
  );
END meio_somador;

ARCHITECTURE arq_meio_somador OF meio_somador IS
BEGIN 
  s <= (NOT(a) AND b) OR (a AND NOT(b));
  c_out <= a AND b;
END arq_meio_somador;
