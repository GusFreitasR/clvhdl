LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY hex_to_display IS
	PORT(
		hex : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- 4 bits de entrada
		seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) -- 7 segmentos (a-g)
	);
END hex_to_display;

ARCHITECTURE behavior OF hex_to_display IS
BEGIN
	PROCESS(hex)
	BEGIN
		CASE hex IS
			WHEN "0000" => seg <= "1111110"; -- 0
			WHEN "0001" => seg <= "0110000"; -- 1
			WHEN "0010" => seg <= "1101101"; -- 2
			WHEN "0011" => seg <= "1111001"; -- 3
			WHEN "0100" => seg <= "0110011"; -- 4
			WHEN "0101" => seg <= "1011011"; -- 5
			WHEN "0110" => seg <= "1011111"; -- 6
			WHEN "0111" => seg <= "1110000"; -- 7
			WHEN "1000" => seg <= "1111111"; -- 8
			WHEN "1001" => seg <= "1111011"; -- 9
			WHEN "1010" => seg <= "1110111"; -- A
			WHEN "1011" => seg <= "0011111"; -- B
			WHEN "1100" => seg <= "1001110"; -- C
			WHEN "1101" => seg <= "0111101"; -- D
			WHEN "1110" => seg <= "1001111"; -- E
			WHEN "1111" => seg <= "1000111"; -- F
			WHEN OTHERS => seg <= "0000000"; -- Apagado
		END CASE;
	END PROCESS;
END behavior;
