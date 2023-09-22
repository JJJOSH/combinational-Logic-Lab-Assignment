library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity NOT_GATE is 
port
(
INPUT_A: IN STD_LOGIC;
OUTPUT : OUT STD_LOGIC
);

end NOT_GATE;

Architecture behavioral of NOT_GATE is begin

OUTPUT<= NOT INPUT_A ;

end behavioral;

