Library ieee;
Use ieee.std_logic_1164.all;

Entity HextoDisplay4 is
Port (Hexa : in std_logic_vector (15 downto 0);
		Display : out std_logic_vector (27 downto 0));
End;

Architecture Structural of HextoDisplay4 is
Component DisplayHex is
	Port (Hex : in std_logic_vector (3 downto 0);
			Display : out std_logic_vector (6 downto 0));
End Component;
Begin
	i0 : DisplayHex Port Map (Hexa (15 downto 12), Display (27 downto 21));
	i1 : DisplayHex Port Map (Hexa (11 downto 8), Display (20 downto 14));
	i2 : DisplayHex Port Map (Hexa (7 downto 4), Display (13 downto 7));
	i3 : DisplayHex Port Map (Hexa (3 downto 0), Display (6 downto 0));
End;