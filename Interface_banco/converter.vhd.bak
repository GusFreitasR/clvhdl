LIBRARY IEEE;
LIBRARY KAILIB;
USE KAILIB.REGBANK_STATES.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY converter IS 
    PORT (
        state  : IN RegBank_states;
        number : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        leds   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END converter;

ARCHITECTURE behavior OF converter IS
BEGIN
    PROCESS (state, number)
    BEGIN
        CASE state IS
            WHEN IDLE =>
                leds <= "1111110"; -- Representação do estado IDLE no display
            
            WHEN OTHERS =>
                CASE number IS
                    WHEN "0000" => leds <= "0000001"; -- 0
                    WHEN "0001" => leds <= "1001111"; -- 1
                    WHEN "0010" => leds <= "0010010"; -- 2
                    WHEN "0011" => leds <= "0000110"; -- 3
                    WHEN "0100" => leds <= "1001100"; -- 4
                    WHEN "0101" => leds <= "0100100"; -- 5
                    WHEN "0110" => leds <= "0100000"; -- 6
                    WHEN "0111" => leds <= "0001111"; -- 7
                    WHEN "1000" => leds <= "0000000"; -- 8
                    WHEN "1001" => leds <= "0000100"; -- 9
                    WHEN "1010" => leds <= "0001000"; -- A
                    WHEN "1011" => leds <= "1100000"; -- b
                    WHEN "1100" => leds <= "0110001"; -- C
                    WHEN "1101" => leds <= "1000010"; -- d
                    WHEN "1110" => leds <= "0110000"; -- E
                    WHEN "1111" => leds <= "0111000"; -- F
                    WHEN OTHERS => leds <= "1111111"; -- Estado inválido
                END CASE;
        END CASE;
    END PROCESS;
END behavior;
