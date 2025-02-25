LIBRARY IEEE;
LIBRARY KAILIB;
USE KAILIB.REGBANK_STATES.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY interface IS
    GENERIC ( 
        word_size: INTEGER := 16
    );
    PORT (
        display: OUT STD_LOGIC_VECTOR(34 DOWNTO 0);
        clock, pickReg, startReading, startWriting: IN STD_LOGIC;
        input: IN STD_LOGIC_VECTOR(word_size-1 DOWNTO 0)
    );
END interface;

ARCHITECTURE behavior OF interface IS

COMPONENT banco_registradores 
PORT(
        clock, pickReg, startReading, startWriting: IN STD_LOGIC;
        inputBank: IN STD_LOGIC_VECTOR(word_size-1 DOWNTO 0);
        outputReg: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        outputState: OUT RegBank_states;
        outputBank: OUT STD_LOGIC_VECTOR(word_size-1 DOWNTO 0)    
);
END COMPONENT;

COMPONENT hexaconv 
PORT(
    state: IN RegBank_states;
    reg: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    number: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    display: OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
);
END COMPONENT;

SIGNAL result: STD_LOGIC_VECTOR(word_size-1 DOWNTO 0) := (OTHERS => '0');
SIGNAL interface_reg: STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
SIGNAL interface_state: RegBank_states;

BEGIN
    
    reg_bank_inst : banco_registradores
    PORT MAP(
        clock => clock,
        pickReg => pickReg,
        startReading => startReading,
        startWriting => startWriting,
        inputBank => input,
        
        outputReg => interface_reg,
        outputState => interface_state,
        outputBank => result
    );
    
    hexconv_inst : hexaconv
    PORT MAP(
        state => interface_state,
        reg => interface_reg,
        number => result,
        display => display
    );
    
END behavior;
