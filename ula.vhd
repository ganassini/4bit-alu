library IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ula IS 
  PORT(
    a, b : IN std_logic_vector(3 downto 0);
    F: IN std_logic_vector(3 downto 0);
    s : OUT std_logic_vector(41 downto 0);
    zero: OUT std_logic_vector(0 downto 0);
    negativo: OUT std_logic;
    c4: OUT std_logic
  );
END ula;

ARCHITECTURE arq_ula OF ula IS

signal sinaloverflow: std_logic;
signal sinal0: std_logic_vector(3 downto 0);
signal sinal1: std_logic_vector(3 downto 0);
signal sinal2: std_logic_vector(3 downto 0);
signal sinal3: std_logic_vector(3 downto 0);
signal sinal4: std_logic_vector(3 downto 0);
signal sinal5: std_logic_vector(3 downto 0);
signal sinal6: std_logic_vector(3 downto 0);
signal sinal7: std_logic_vector(3 downto 0);
signal sinal8: std_logic_vector(3 downto 0);
signal sinal9: std_logic_vector(3 downto 0);
signal entrada_seg7: std_logic_vector(3 downto 0);

COMPONENT somador4bits IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    s: OUT std_logic_vector(3 downto 0);
    c4: OUT std_logic
  );
END COMPONENT;

COMPONENT mux_overflow IS
  PORT(
    overflow: IN std_logic;
    F: IN std_logic_vector(3 downto 0); 
    s: OUT std_logic
  );
END COMPONENT;

COMPONENT mux16_1 IS 
  PORT(
    e0,e1,e2,e3,e4,e5,e6,e7,e8,e9: IN std_logic_vector(3 downto 0);
    F: IN std_logic_vector(3 downto 0); 
    s: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT seg7 IS
  PORT(
    entrada: IN std_logic_vector(3 downto 0);
    zero: OUT std_logic_vector(0 downto 0);
    s: OUT std_logic_vector (41 downto 0)
  );
END COMPONENT;

COMPONENT and_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT xnor_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT xor_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT or_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT nor_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT nand_func IS
  PORT(
    a, b: IN std_logic_vector(3 downto 0);
    c_out: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

COMPONENT shift_left IS
  PORT(
    a: IN std_logic_vector(3 downto 0);
    s: OUT std_logic_vector(3 downto 0)	
  );
END COMPONENT;

COMPONENT shift_right IS
  PORT(
    a: IN std_logic_vector(3 downto 0);
    s: OUT std_logic_vector(3 downto 0)	
  );
END COMPONENT;
  
COMPONENT subtrator4bits IS 
  PORT(
    a,b: IN std_logic_vector(3 downto 0);
    s: OUT std_logic_vector(3 downto 0)
  );
END COMPONENT;

BEGIN
  soma: somador4bits
    PORT MAP (a=>a, b=>b, s=>sinal0, c4=>sinaloverflow);

  and_funcao: and_func
    PORT MAP (a=>a, b=>b, c_out=>sinal1);

  xnor_funcao: xnor_func
    PORT MAP (a=>a, b=>b, c_out=>sinal2);

  xor_funcao: xor_func
    PORT MAP (a=>a, b=>b, c_out=>sinal3);

  or_funcao: or_func
    PORT MAP (a=>a, b=>b, c_out=>sinal4);

  nor_funcao: nor_func
    PORT MAP (a=>a, b=>b, c_out=>sinal5);

  nand_funcao: nand_func
    PORT MAP (a=>a, b=>b, c_out=>sinal6);

  shift_lefte: shift_esquerda
    PORT MAP (a=>a, s=>sinal8);

  shift_righte: shift_direita
    PORT MAP (a=>a, s=>sinal9);

  subtrator: subtrator4bits
    PORT MAP (a=>a, b=>b, s=>sinal7 );

  mux: mux16_1
    PORT MAP (e0=>sinal0,e1=>sinal1,e2=>sinal2,e3=>sinal3,e4=>sinal4,e5=>sinal5,e6=>sinal6,e7=>sinal7,e8=>sinal8,e9=>sinal9, F=>F, s=>entrada_seg7);

  mux_over: mux_overflow
    PORT MAP (overflow=>sinaloverflow, s=>c4, F=>F);

  saida_dos_led: seg7
    PORT MAP (entrada=>entrada_seg7, s=>s, zero=>zero);

  negativo <= entrada_seg7(3);
END arq_ula;
