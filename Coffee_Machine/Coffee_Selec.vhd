Library ieee;
Use ieee.std_logic_1164.all;

Entity Coffee_Selec is
Port (A, B, C, D, E, F, G, H, See : in std_logic;
		Saida : out std_logic_vector (6 downto 0);
		Err, nSel : out std_logic);
End;

Architecture Structural of Coffee_Selec is
Component Coffee_Cod is
	Port (A, B, C, D, E, F, G, H : in std_logic;
		   S : out std_logic_vector (2 downto 0);
			Err, nSel : out std_logic);
End Component;
Component Coffee_Mux is
	Port (Selec : in std_logic_vector (2 downto 0);
			Hex : out std_logic_vector (6 downto 0));
End Component;
Component neg is
	Port (A : in std_logic; 
			nA : out std_logic);
End Component;
Component and_3 is
	Port (A, B, C : in std_logic; 
			S : out std_logic);
End Component;
Component Coffee_On_Mux is
	Port (Hex : in std_logic_vector (6 downto 0);
			See : in std_logic;
			S : out std_logic_vector (6 downto 0));
End Component;
Component and_2 is
	Port (A, B : in std_logic;
			C : out std_logic);
End Component;

	signal Selec : std_logic_vector (2 downto 0);
	signal Erro, nErr, sight, nSele, nnSel : std_logic;
	signal Hex : std_logic_vector (6 downto 0);
Begin

	i0 : Coffee_Cod     Port Map (A, B, C, D, E, F, G, H, Selec, Erro, nSele);
	i1 : Coffee_Mux     Port Map (Selec, Hex);
	i2 : neg            Port Map (Erro, nErr);
	i3 : neg            Port Map (nSele, nnSel);
	i4 : and_3          Port Map (nErr, nnSel, See, sight);
	i5 : Coffee_On_Mux  Port Map (Hex, sight, Saida);
	i6 : and_2          Port Map (Erro, See, Err);
	i7 : and_2          Port Map (nSele, See, nSel);
	
End Structural;