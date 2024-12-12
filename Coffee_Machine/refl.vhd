Library ieee;
Use ieee.std_logic_1164.all;

Entity refl is
	Port (E : in std_logic;
			S : out std_logic);
End;

Architecture Dataflow of refl is
Begin
	S <= E;
End Dataflow;