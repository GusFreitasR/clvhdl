Library ieee;
Use ieee.std_logic_1164.all;

Entity neg is
	Port (A : in std_logic; 
			nA : out std_logic);
End;

Architecture Behavioral of neg is 
Begin
	nA <= not A;
	
End Behavioral;