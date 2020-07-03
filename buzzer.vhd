LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY buzzer IS PORT(
OUTPUT,switch1,output2: IN STD_LOGIC;
buzzer2:OUT STD_LOGIC);
end buzzer;

architecture function5 of buzzer is
signal outss:std_logic;
begin
outss<=(not output and not output2 and switch1);
WITH outss SELECT
buzzer2<= '1' WHEN '1',
			 '0' WHEN OTHERS;
END FUNCTION5;