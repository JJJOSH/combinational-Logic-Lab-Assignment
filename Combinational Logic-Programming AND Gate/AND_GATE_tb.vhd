LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY AND_GATE_tb IS
END AND_GATE_tb;
ARCHITECTURE AND_GATE_tb OF AND_GATE_tb IS 
    COMPONENT AND_GATE
    PORT(
		INPUT_A ,INPUT_B : IN STD_LOGIC;
		OUTPUT : OUT STD_LOGIC
        );
    END COMPONENT;
   signal INPUT_A , INPUT_B,OUTPUT: std_LOGIC;
BEGIN 
g:AND_GATE PORT MAP ( INPUT_A , INPUT_B , OUTPUT  );
   stim_proc: process
   begin  
     
   INPUT_A <= '0';
   INPUT_B <= '0';

      wait for 50 ns; 
   INPUT_A <= '0';
   INPUT_B <= '1';

      wait for 50 ns; 
   INPUT_A <= '1';
   INPUT_B <= '0';

      wait for 50 ns; 
   INPUT_A <= '1';
   INPUT_B <= '1';

      wait;
   end process;

END;