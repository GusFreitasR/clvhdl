
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux_when_else IS PORT (
	x: IN STD_LOGIC;
	a,b,c,d : OUT STD_LOGIC;
	sel: IN STD_LOGIC_VECTOR(1 downto 0)
	);
END demux_when_else;

ARCHITECTURE demux OF demux_when_else IS

BEGIN
	a <= x WHEN sel = "00" ELSE '0';
	b <= x WHEN sel = "01" ELSE '0';
	c <= x WHEN sel = "10" ELSE '0';
	d <= x WHEN sel = "11" ELSE '0';
END demux;