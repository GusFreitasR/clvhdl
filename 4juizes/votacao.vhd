library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity votacao is
    Port (
        j0, j1, j2, j3 : in STD_LOGIC; 
        vd, vm : out STD_LOGIC        
    );
end votacao;

architecture Behavioral of votacao is
    signal total_votos : integer range 0 to 4; 
	 signal votos_concat : STD_LOGIC_VECTOR(3 downto 0); 
begin
    process (j0, j1, j2, j3)
    begin
		  votos_concat <= j0 & j1 & j2 & j3;
        total_votos <= to_integer(unsigned(votos_concat));
        if total_votos > 2 then
            vd <= '1';
            vm <= '0';
        elsif total_votos = 2 then
            vd <= '1';
            vm <= '1';
        else
            vd <= '0';
            vm <= '1';
        end if;
    end process;
end Behavioral;