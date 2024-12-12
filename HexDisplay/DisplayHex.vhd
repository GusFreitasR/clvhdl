Library ieee;
Use ieee.std_logic_1164.all;

Entity DisplayHex is
Port ( Hex 		: in std_logic_vector (3 downto 0);
       Display : out std_logic_vector (6 downto 0));
end DisplayHex;

Architecture Decod of DisplayHex is
begin
	Process (Hex)
	begin
		Case Hex is
			When "0000" =>
				Display <= "1000000"; -- 0
			When "0001" =>
				Display <= "1111001"; -- 1
			When "0010"=>
				Display <= "0100100"; -- 2
			When "0011" =>
				Display <= "0110000"; -- 3
			When "0100" =>
				Display <= "0011001"; -- 4
			When "0101" =>
				Display <= "0010010"; -- 5
			When "0110" =>
				Display <= "0000010"; -- 6
			When "0111" =>
				Display <= "1111000"; -- 7
			When "1000" =>
				Display <= "0000000"; -- 8
			When "1001" =>
				Display <= "0010000"; -- 9
			When "1010" =>
				Display <= "0001000"; -- A
			When "1011" =>
				Display <= "0000011"; -- b
			When "1100" =>
				Display <= "1000110"; -- C
			When "1101" =>
				Display <= "0100001"; -- d
			When "1110" =>
				Display <= "0000110"; -- E
			When "1111" =>
				Display <= "0001110"; -- F
			When Others =>
				Display <= "1111111";
		End Case;
	End Process;
end Decod;