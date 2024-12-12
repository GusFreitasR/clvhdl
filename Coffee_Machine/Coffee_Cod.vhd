Library ieee;
Use ieee.std_logic_1164.all;

Entity Coffee_Cod is
Port (A, B, C, D, E, F, G, H : in std_logic;
		S : out std_logic_vector (2 downto 0);
		Err, nSel : out std_logic);
End;

Architecture Dataflow of Coffee_Cod is
Begin
	S(2) <= D or E or F or G;
	S(1) <= B or C or F or G;
	S(0) <= A or C or E or G;
	Err <= (A and (B or C or D or E or F or G or H)) or (B and (C or D or E or F or G or H))
			 or (C and (D or E or F or G or H)) or (D and (E or F or G or H)) or (E and (F or G or H))
			 or (F and (G or H)) or (G and H);
	nSel <= (not A) and (not B) and (not C) and (not D) and (not E) and (not F) and (not G) and (not H); 
	
End Dataflow;