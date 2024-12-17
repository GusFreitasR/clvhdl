Library ieee;
Use ieee.std_logic_1164.all;

Entity and_2 is
	Port (A, B : in std_logic;
			C : out std_logic);
End;

Architecture Dataflow of and_2 is
Begin
	C <= A and B;
End Dataflow;