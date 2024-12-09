LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY calculadora IS
PORT (
    A, B      : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    OP        : IN STD_LOGIC; 
    S         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Luz1, Luz2: OUT STD_LOGIC 
);
END calculadora;

ARCHITECTURE behavioral OF calculadora IS
    COMPONENT somador_subtrator
    PORT (
        a         : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        b         : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        operacao  : IN STD_LOGIC;
        resultado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        carry_out : OUT STD_LOGIC
    );
    END COMPONENT;

    SIGNAL carry_out_local : STD_LOGIC; 
BEGIN
    
    somador_subtrator_inst: somador_subtrator PORT MAP(
        a => A,
        b => B,
        operacao => OP,
        resultado => S,
        carry_out => carry_out_local
    );

    -- Luzes indicadoras
    Luz1 <= NOT OP; -- Acende para soma (OP = '0')
    Luz2 <= OP; -- Acende para subtração (OP = '1')

END behavioral;
