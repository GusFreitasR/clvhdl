LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux_if IS PORT (

		x: IN STD_LOGIC;
		a: OUT STD_LOGIC;
		b: OUT STD_LOGIC;
		c: OUT STD_LOGIC;
		d: OUT STD_LOGIC;
		sel: IN STD_LOGIC_VECTOR(1 downto 0)

		);
END demux_if;


ARCHITECTURE demux of demux_if is


BEGIN


	process_1: PROCESS(x, sel)
	
		BEGIN
		
			IF sel = "00" THEN
				a <= x;
				b <= '0';
				c <= '0';
				d <= '0';
			ELSIF sel = "01" THEN
				a <= '0';
				b <= x;
				c <= '0';
				d <= '0';
			ELSIF sel = "10" THEN
				a <= '0';
				b <= '0';
				c <= x;
				d <= '0';
			ELSE
				a <= '0';
				b <= '0';
				c <= '0';
				d <= x;
			END IF;
		END PROCESS process_1;
END demux;
	
	
	
	
	
	
	
	
	
	
	
	
	
