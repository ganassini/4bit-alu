LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mux_overflow IS
  PORT(
    overflow: IN std_logic;
    F: IN std_logic_vector(3 downto 0); 
    s: OUT std_logic
  );
END mux_overflow;

ARCHITECTURE arq_mux_overflow OF mux_overflow IS
BEGIN 
  
  with F select

    s <= overflow when "0000",
              '0' when others;
END arq_mux_overflow;
