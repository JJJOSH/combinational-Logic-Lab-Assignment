library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Generic_AND is 

 

port
(
I_1 , I_2, I_3 , I_4 :IN STD_LOGIC;
O_1 : OUT STD_LOGIC
);

end Generic_AND;

Architecture behavioral of Generic_AND is 


Component AND_GATE
port
(
INPUT_A ,INPUT_B : IN STD_LOGIC;
OUTPUT : OUT STD_LOGIC
);

end Component;

signal Signal_1 , Signal_2 : std_logic;

begin

Gate1: AND_GATE port map( I_1 , I_2 , Signal_1);
Gate2: AND_GATE port map (I_3 , I_4 , Signal_2);
Gate3: AND_GATE port map ( Signal_1 , Signal_2 , O_1);

end;
