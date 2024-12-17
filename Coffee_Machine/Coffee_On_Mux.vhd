Library ieee;
Use ieee.std_logic_1164.all;

Entity Coffee_On_Mux is
Port (Hex : in std_logic_vector (6 downto 0);
		See : in std_logic;
		S : out std_logic_vector (6 downto 0)); 		
End;

Architecture Dataflow of Coffee_On_Mux is
Begin
	With See select
		S <= Hex when '1',
			  "1111111" when others;
End Dataflow;