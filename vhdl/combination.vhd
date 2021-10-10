
library ieee;
use ieee.std_logic_1164.all;

entity combination is
 port(
 
     D0,D1,D2,D3 : in STD_LOGIC;
     Q0,Q1: out STD_LOGIC

  );
end combination;
 
architecture beh of combination is
begin
process (D0,D1,D2,D3) is
begin
if(D0 = '1' and D1 = '0'and D2 = '0'and D3 = '0')then
	Q1 <= D3 or D2;
	Q0 <= (D3 or ((not D2) and D1));
	
elsif(D0 = '0' and D1 = '1'and D2 = '0'and D3 = '0')then
	Q1 <= D3 or D2;
	Q0 <= (D3 or ((not D2) and D1));
	
elsif(D0 = '0' and D1 = '0'and D2 = '1'and D3 = '0')then
	Q1 <= D3 or D2;
	Q0 <= (D3 or ((not D2) and D1));
	
elsif(D0 = '0' and D1 = '0'and D2 = '0'and D3 = '1')then
	Q1 <= D3 or D2;
	Q0 <= (D3 or ((not D2) and D1));
	else
	Q1 <='X';
	Q0 <='X';
	
	end if;


 
end process;
end beh;