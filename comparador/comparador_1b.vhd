LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY comparator_1b IS
	PORT(
			a, b: IN STD_LOGIC;
			i: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			s: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		);
END comparator_1b;


ARCHITECTURE behavior OF comparator_1b IS
BEGIN
	s(2) <= i(2) AND (a XNOR b);
	s(1) <= i(1) OR (a AND (NOT b) AND i(2));
	s(0) <= i(0) OR (NOT a AND b AND i(2));
END behavior;