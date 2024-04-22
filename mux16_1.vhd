LIBRARY	IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mux16_1 IS
  PORT(
    e0,e1,e2,e3,e4,e5,e6,e7,e8,e9: IN std_logic_vector(3 downto 0);
    F: IN std_logic_vector(3 downto 0); 
    s: OUT std_logic_vector(3 downto 0)
  );
END mux16_1;

ARCHITECTURE arq_mux16_1 of mux16_1 is
BEGIN 
 with F select

   	s <= e0 when "0000",
   	     e1 when "0001",
	     e2 when "0010",
	     e3 when "0011",
	     e4 when "0100",
	     e5 when "0101",
	     e6 when "0110",
	     e7 when "0111",
	     e8 when "1000",
	     e9 when "1001",
 (others =>'0') when others;
END arq_mux16_1;
