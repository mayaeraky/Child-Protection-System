LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY NEWCLK IS PORT(
CLK:IN STD_LOGIC;
 CLOCK:OUT STD_LOGIC);
 END NEWCLK;

ARCHITECTURE FUNCTION1 OF NEWCLK IS
-- SIGNAL COUNT:INTEGER:=1;
SIGNAL TMP:STD_LOGIC;
BEGIN
FREQ_DIV:PROCESS(CLK)
VARIABLE COUNT: INTEGER;
BEGIN
--IF(RESET='1')THEN 
--COUNT:=1;
--TMP<='0';
IF RISING_EDGE(CLK) THEN 
IF(COUNT=150000000) THEN
TMP<=NOT(TMP);
COUNT:=1;
ELSE
COUNT:= COUNT+1;
END IF;
END IF;
END PROCESS;
CLOCK<=TMP;
END FUNCTION1;