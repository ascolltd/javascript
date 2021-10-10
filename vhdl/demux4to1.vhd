library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux4to1 is
 port(
 
     y0,y1,y2,y3 : out STD_LOGIC;
     A,B: in STD_LOGIC;
     Data: in STD_LOGIC
  );
end demux4to1;
 
architecture bv of demux4to1 is
begin
process (Data,A,B) is
begin
  if (A ='0' and B = '0') then
      y0 <= Data;
	  y1 <= 'X';
	  y2 <= 'X';
	  y3 <= 'X';
	  end if;
  if (A ='0' and B = '1') then
  	  y0 <= 'X';
      y1 <= Data;
	  y2 <= 'X';
	  y3 <= 'X';
	  end if;
  if (A ='1' and B = '0') then
  	  y0 <= 'X';
	  y1 <= 'X';	  
	  y3 <= 'X';
      y2 <= Data;
	  end if;
  if (A ='1' and B = '1') then
  	  y0 <= 'X';
	  y1 <= 'X';	  
	  y2 <= 'X';
      y3 <= Data;

	  end if;

end process;
end bv;