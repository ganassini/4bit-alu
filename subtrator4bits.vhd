LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY subtrator4bits IS
  PORT(
    a,b: IN std_logic_vector(3 downto 0);      
    s: OUT std_logic_vector(3 downto 0)                    
  );
END subtrator4bits;

ARCHITECTURE arq_subtrator4bits OF subtrator4bits IS

signal c: std_logic_vector(2 downto 0);

COMPONENT somador_completo
  PORT(
    a,b,c_in: IN std_logic;
    s,c_out: OUT std_logic
  );
END COMPONENT;

BEGIN 
  subtrai1: somador_completo
    PORT MAP(a=>a(0), b=>not b(0), c_in => '1',s=>s(0), c_out=>c(0));
    
  subtrai2: somador_completo
    PORT MAP(a=>a(1), b=>not b(1), c_in=>c(0), s=>s(1), c_out=>c(1));
    
  subtrai3: somador_completo
    PORT MAP(a=>a(2), b=>not b(2), c_in=>c(1), s=>s(2), c_out=>c(2));
    
  subtrai4: somador_completo
    PORT MAP(a=>a(3), b=>not b(3), c_in=>c(2), s=>s(3));
END arq_subtrator4bits;
