library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity maior_de_tres is
    Port (
        A, B, C : in STD_LOGIC_VECTOR(7 downto 0); -- Entradas de 8 bits
        Maior : out STD_LOGIC_VECTOR(7 downto 0)  -- Saída com o maior valor
    );
end maior_de_tres;

architecture Behavioral of maior_de_tres is
begin
    process (A, B, C)
    begin
        if unsigned(A) >= unsigned(B) and unsigned(A) >= unsigned(C) then
            Maior <= A;
        elsif unsigned(B) >= unsigned(A) and unsigned(B) >= unsigned(C) then
            Maior <= B;
        else
            Maior <= C;
        end if;
    end process;
end Behavioral;