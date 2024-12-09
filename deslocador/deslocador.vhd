library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity deslocador is
    Port (
        e       : in  STD_LOGIC_VECTOR(7 downto 0);  
        desloca : in  STD_LOGIC_VECTOR(1 downto 0); 
                                                     
        s       : out STD_LOGIC_VECTOR(7 downto 0)  
    );
end deslocador;

architecture Behavioral of deslocador is
begin
    process(e, desloca)
    begin
        case desloca is
            when "00" =>
                s <= e; 
            when "01" =>
                s <= '0' & e(7 downto 1); 
            when "10" =>
                s <= e(6 downto 0) & '0'; 
            when others =>
                s <= e; 
        end case;
    end process;

end Behavioral;
