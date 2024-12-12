Library ieee;
Use ieee.std_logic_1164.all;

Entity and_3 is
	Port (A, B, C : in std_logic; 
			S : out std_logic);
End;

Architecture Behavioral of and_3 is 
Begin
	S <= A and B and C;
	
End Behavioral;