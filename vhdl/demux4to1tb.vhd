
--  demux tb
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY demux4to1tb IS
END demux4to1tb;
 
ARCHITECTURE behavior OF demux4to1tb IS
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux4to1
    PORT(
     y0,y1,y2,y3 : out STD_LOGIC;
     A,B: in STD_LOGIC;
     Data: in STD_LOGIC
        );
    END COMPONENT;
 
   -- Inputs
   signal Data : std_logic := '0';
   signal y0 : std_logic := '0';
   signal y1 : std_logic := '0';
   signal y2 : std_logic := '0';
   signal y3 : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';
 

 
BEGIN
 
     -- Instantiate the Unit Under Test (UUT)
   uut: demux4to1 PORT MAP (
          Data => Data,
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3,
          A => A,
          B => B
        );
 
   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      
	  wait for 100 ns; 
       Data <= '1';
	
    A <= '0'; B <= '0';
 
      wait for 100 ns; 
 
    A <= '0'; B <= '1';
 
      wait for 100 ns; 
 
    A <= '1'; B <= '0';
 
        wait for 100 ns;   
 
    A <= '1'; B <= '1';  
 
        wait for 100 ns;   
 
    
    end process;

    -- process to stop simulation after 600 ns
process
begin
  wait for 600 ns;
  assert FALSE Report "SImulation Finished" severity FAILURE;
end process;
 
END;
