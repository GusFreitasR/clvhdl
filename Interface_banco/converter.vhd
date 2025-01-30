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
                leds <= "1111111"; -- Representação do estado IDLE no leds
            
            WHEN OTHERS =>
                CASE number IS
							When "0000" =>
								leds <= "1000000"; -- 0
							When "0001" =>
								leds <= "1111001"; -- 1
							When "0010"=>
								leds <= "0100100"; -- 2
							When "0011" =>
								leds <= "0110000"; -- 3
							When "0100" =>
								leds <= "0011001"; -- 4
							When "0101" =>
								leds <= "0010010"; -- 5
							When "0110" =>
								leds <= "0000010"; -- 6
							When "0111" =>
								leds <= "1111000"; -- 7
							When "1000" =>
								leds <= "0000000"; -- 8
							When "1001" =>
								leds <= "0010000"; -- 9
							When "1010" =>
								leds <= "0001000"; -- A
							When "1011" =>
								leds <= "0000011"; -- b
							When "1100" =>
								leds <= "1000110"; -- C
							When "1101" =>
								leds <= "0100001"; -- d
							When "1110" =>
								leds <= "0000110"; -- E
							When "1111" =>
								leds <= "0001110"; -- F
							When Others =>
								leds <= "1111111";
                END CASE;
        END CASE;
    END PROCESS;
END behavior;
