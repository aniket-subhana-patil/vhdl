library ieee;
use ieee.std_logic_1164.all;
entity greaterrthan2bit is
PORT( a,b : in std_logic_vector( 1 downto 0); c: out std_logic);
end greaterrthan2bit;

architecture arch of greaterrthan2bit is 
	signal eq1, eq2, eq3 : std_logic;
	begin
		eq1 <= not b(0) and not  b(1) and a(1);
		eq2 <= not b(0) and a(0);
		eq3 <=  not b(1) and a(0) and a(1);
		
		c<= eq1 or eq2 or eq3;
end arch;
	