
--  demux tb
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY combinationtb IS
END combinationtb;
 
ARCHITECTURE behavior OF combinationtb IS
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT combination
    PORT(
     D0,D1,D2,D3 : in STD_LOGIC;
     Q0,Q1: out STD_LOGIC

        );
    END COMPONENT;
 
   -- Inputs

   signal D0 : std_logic := '0';
   signal D1 : std_logic := '0';
   signal D2 : std_logic := '0';
   signal D3 : std_logic := '0';
   signal Q0 : std_logic := '0';
   signal Q1 : std_logic := '0';
 

 
BEGIN
 
     -- Instantiate the Unit Under Test (UUT)
   uut: combination PORT MAP (
          Q1 => Q1,
          Q0 => Q0,
		  D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3

        );
 
   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      
		wait for 100 ns; 
		D0 <= '0';
		D1 <= '0';
		D2 <= '0';
		D3 <= '0';

		wait for 100 ns; 
		D0 <= '1';
		D1 <= '0';
		D2 <= '0';
		D3 <= '0';
 
		wait for 100 ns; 
		D0 <= '0';
		D1 <= '1';
		D2 <= '0';
		D3 <= '0';
 
		wait for 100 ns;   
		D0 <= '1';
		D1 <= '1';
		D2 <= '0';
		D3 <= '0';

        wait for 100 ns;   
		D0 <= '0';
		D1 <= '0';
		D2 <= '1';
		D3 <= '0';
        wait for 100 ns;   
		D0 <= '1';
		D1 <= '0';
		D2 <= '1';
		D3 <= '0';
        wait for 100 ns;   
		D0 <= '0';
		D1 <= '1';
		D2 <= '1';
		D3 <= '0';
		wait for 100 ns;   
		D0 <= '1';
		D1 <= '1';
		D2 <= '1';
		D3 <= '0';
 
        wait for 100 ns;   
		D0 <= '0';
		D1 <= '0';
		D2 <= '0';
		D3 <= '1';
		
		wait for 100 ns;   
		D0 <= '1';
		D1 <= '0';
		D2 <= '0';
		D3 <= '1';
		
        wait for 100 ns;   
		D0 <= '0';
		D1 <= '1';
		D2 <= '0';
		D3 <= '1';
		wait for 100 ns;   
		D0 <= '1';
		D1 <= '1';
		D2 <= '0';
		D3 <= '1';
		wait for 100 ns;   
		D0 <= '0';
		D1 <= '0';
		D2 <= '1';
		D3 <= '1';
		wait for 100 ns;   
		D0 <= '1';
		D1 <= '0';
		D2 <= '1';
		D3 <= '1';
 		wait for 100 ns;   
		D0 <= '0';
		D1 <= '1';
		D2 <= '1';
		D3 <= '1';
 		wait for 100 ns;   
		D0 <= '1';
		D1 <= '1';
		D2 <= '1';
		D3 <= '1';
 
    
    end process;

    -- process to stop simulation after 600 ns
process
begin
  wait for 1700 ns;
  assert FALSE Report "SImulation Finished" severity FAILURE;
end process;
 
END;
