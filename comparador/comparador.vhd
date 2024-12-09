LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY comparador IS
	PORT(
		a, b : IN STD_LOGIC_VECTOR (4 DOWNTO 0); 
		result : OUT STD_LOGIC_VECTOR (2 DOWNTO 0) 
	);
END comparador;

ARCHITECTURE behavior OF comparador IS

	
	COMPONENT comparator_1b
		PORT(
			a, b: IN STD_LOGIC;
			i: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			s: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL stage_4, stage_3, stage_2, stage_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);

BEGIN

	comp_4: comparator_1b PORT MAP(
		a => a(4),
		b => b(4),
		i => "100", 
		s => stage_4
	);

	-- Instância para o próximo bit
	comp_3: comparator_1b PORT MAP(
		a => a(3),
		b => b(3),
		i => stage_4,
		s => stage_3
	);

	-- Repetição para os próximos bits
	comp_2: comparator_1b PORT MAP(
		a => a(2),
		b => b(2),
		i => stage_3,
		s => stage_2
	);

	comp_1: comparator_1b PORT MAP(
		a => a(1),
		b => b(1),
		i => stage_2,
		s => stage_1
	);

	-- Instância para o bit menos significativo
	comp_0: comparator_1b PORT MAP(
		a => a(0),
		b => b(0),
		i => stage_1,
		s => result
	);

END behavior;
