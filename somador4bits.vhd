LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY somador4bits IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    s: OUT std_logic_vector(3 downto 0);
    c4: OUT std_logic
  );
END somador4bits;

ARCHITECTURE arq_somador4bits OF somador4bits IS

signal c: std_logic_vector(2 downto 0);

COMPONENT meio_somador
  PORT(
    a, b: IN std_logic;
    s, c_out: OUT std_logic
  );
END COMPONENT;

COMPONENT somador_completo
  PORT(
    a, b, c_in: IN std_logic;
    s, c_out: OUT std_logic
  );
END COMPONENT;

BEGIN
  soma1: meio_somador
    PORT MAP(a => a(0), b => b(0), s => s(0), c_out => c(0));
    
  soma2: somador_completo
    PORT MAP(a => a(1), b => b(1), c_in => c(0), s => s(1), c_out => c(1));
    
  soma3: somador_completo
    PORT MAP(a => a(2), b => b(2), c_in => c(1), s => s(2), c_out => c(2));
    
  soma4: somador_completo
    PORT MAP(a => a(3), b => b(3), c_in => c(2), s => s(3), c_out => c4);
END arq_somador4bits;
