LIBRARY IEEE;
LIBRARY KAILIB;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE KAILIB.REGBANK_STATES.ALL;

ENTITY banco_registradores IS 
    GENERIC (
        reg_amount : INTEGER := 8;
        word_size  : INTEGER := 16
    );
    PORT (
        clock, pickReg, startReading, startWriting : IN  STD_LOGIC;
        inputBank  : IN  STD_LOGIC_VECTOR(word_size-1 DOWNTO 0);
        
        outputReg  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        outputState: OUT RegBank_states;
        outputBank : OUT STD_LOGIC_VECTOR(word_size-1 DOWNTO 0)
    );
END banco_registradores;

ARCHITECTURE behavior OF banco_registradores IS

    SIGNAL state : RegBank_states := IDLE;

    TYPE register_array IS ARRAY (0 TO reg_amount-1) OF STD_LOGIC_VECTOR(word_size-1 DOWNTO 0);
    SIGNAL registers : register_array := (OTHERS => (OTHERS => '0'));

    SIGNAL selected_reg : INTEGER;

BEGIN
    PROCESS (clock)
    BEGIN
        IF RISING_EDGE(clock) THEN
            CASE state IS
                WHEN IDLE => 
                    outputState <= IDLE;
                    
                    IF pickReg = '0' THEN
                        state <= pickingReg;
                    ELSIF startReading = '0' THEN
                        state <= reading;
                    ELSIF startWriting = '0' THEN
                        state <= writing;
                    END IF;

                WHEN pickingReg => 
                    selected_reg <= TO_INTEGER(UNSIGNED(inputBank(2 DOWNTO 0)));
                    outputReg    <= inputBank(2 DOWNTO 0);
                    outputState  <= pickingReg;
                    
                    IF startReading = '0' THEN
                        state <= reading;
                    ELSIF startWriting = '0' THEN
                        state <= writing;
                    END IF;

                WHEN writing =>
                    registers(selected_reg) <= inputBank;
                    outputBank              <= inputBank;
                    outputState             <= writing;
                    
                    IF pickReg = '0' THEN
                        state <= pickingReg;
                    ELSIF startReading = '0' THEN
                        state <= reading;
                    END IF;

                WHEN reading =>
                    outputBank  <= registers(selected_reg); 
                    outputState <= reading;
                    
                    IF pickReg = '0' THEN
                        state <= pickingReg;
                    ELSIF startWriting = '0' THEN
                        state <= writing;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;
END behavior;
