LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY converter IS
	PORT(
		hex_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- Entrada hexadecimal (16 bits)
		seg_out : OUT STD_LOGIC_VECTOR(27 DOWNTO 0) -- 4 displays de 7 segmentos (a-g para cada)
	);
END converter;

ARCHITECTURE structural OF converter IS
	COMPONENT hex_to_display
		PORT(
			hex : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL seg0, seg1, seg2, seg3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
BEGIN
	-- Instanciar os 4 dígitos
	digit3: hex_to_display PORT MAP(hex => hex_in(15 DOWNTO 12), seg => seg3);
	digit2: hex_to_display PORT MAP(hex => hex_in(11 DOWNTO 8), seg => seg2);
	digit1: hex_to_display PORT MAP(hex => hex_in(7 DOWNTO 4), seg => seg1);
	digit0: hex_to_display PORT MAP(hex => hex_in(3 DOWNTO 0), seg => seg0);

	-- Combinar as saídas dos segmentos
	seg_out <= seg3 & seg2 & seg1 & seg0;

END structural;
