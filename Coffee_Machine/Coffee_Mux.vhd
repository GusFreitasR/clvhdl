Library ieee;
Use ieee.std_logic_1164.all;

Entity Coffee_Mux is
Port (Selec : in std_logic_vector (2 downto 0);
		Hex : out std_logic_vector (6 downto 0));
End;

Architecture Dataflow of Coffee_Mux is
Begin
	With Selec select
		Hex <= "0001000" when "001",
				 "0000011" when "010",
				 "1000110" when "011",
				 "0100001" when "100",
				 "0000110" when "101",
				 "0001110" when "110",
				 "0010000" when "111",
				 "0001001" when others;
End Dataflow;