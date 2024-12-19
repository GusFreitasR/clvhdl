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
begin
    process (j0, j1, j2, j3)
    begin
		
		  if((j1='1' and j3='1' and j0='1') or (j0='1' and j1='1' and j2='1') or (j0='1' and j3='1' and j2='1') or (j1='1' and j2='1' and j3='1')) then
			  vd <= '1';
			  vm <= '0';
		  
		  elsif(not((j1='1' or j3='1' or j0='1') and (j0='1' or j1='1' or j2='1') and (j0='1' or j3='1' or j2='1') and (j1='1' or j2='1' or j3='1'))) then
			  vd <= '0';
			  vm <= '1';
		  else
			  vd <= '1';
			  vm <= '1';
		  end if;
    end process;
end Behavioral;
