LIBRARY IEEE;
LIBRARY KAILIB;
USE KAILIB.REGBANK_STATES.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY hexaconv IS PORT (
    state    : IN RegBank_states;
    reg      : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    number   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    display  : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
);
END hexaconv;

ARCHITECTURE behavior OF hexaconv IS

COMPONENT converter PORT (
    state  : IN RegBank_states;
    number : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    leds   : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END COMPONENT;

BEGIN
    i0: converter PORT MAP (state, number(15 DOWNTO 12), display(34 DOWNTO 28));
    i1: converter PORT MAP (state, number(11 DOWNTO 8), display(27 DOWNTO 21));
    i2: converter PORT MAP (state, number(7 DOWNTO 4), display(20 DOWNTO 14));
    i3: converter PORT MAP (state, number(3 DOWNTO 0), display(13 DOWNTO 7));
    i4: converter PORT MAP (state, '0' & reg, display(6 DOWNTO 0));
END behavior;