LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY subtrator_completo IS
	PORT(
		a,b,c_in: in std_logic;
		s,c_out: out std_logic
	);
END subtrator_completo;

ARCHITECTURE arq_subtrator_completo OF subtrator_completo IS
BEGIN
	s <= c_in xor a xor b;
	c_out <= (b AND c_in) OR a;
END arq_subtrator_completo;
