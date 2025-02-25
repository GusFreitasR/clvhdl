LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux_case IS PORT (

		x: IN STD_LOGIC;
		a: OUT STD_LOGIC;
		b: OUT STD_LOGIC;
		c: OUT STD_LOGIC;
		d: OUT STD_LOGIC;
		sel: IN STD_LOGIC_VECTOR(1 downto 0)

		);
END demux_case;

ARCHITECTURE demux of demux_case is


BEGIN 

	process_1: PROCESS(x, sel)
		BEGIN
			CASE sel IS 
				WHEN "00" =>
					a <= x; b <= '0'; c <= '0'; d <= '0';
				WHEN "01" =>
					a <= '0'; b <= x; c <= '0'; d <= '0';
				WHEN "10" =>
					a <= '0'; b <= '0'; c <= x; d <= '0';
				WHEN OTHERs =>
					a <= '0'; b <= '0'; c <= '0'; d <= x;
			END CASE;
		END PROCESS process_1;
		
		
END demux;

