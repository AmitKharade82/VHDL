
-- Module Name: shiftreg - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftreg is port( 
      Clock: IN STD_LOGIC;
      sin:  IN STD_LOGIC;
      rst: IN STD_LOGIC;
      sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      D: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sout: OUT STD_LOGIC;
      Q: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end shiftreg;

architecture Behavioral of shiftreg is
SIGNAL temp: STD_LOGIC_VECTOR(15 DOWNTO 0);

begin
PROCESS(Clock)
BEGIN
    if(rst='1')then
        temp<=(others=>'0');
        sout<='0';
    elsIF (Clock' EVENT AND Clock='1') THEN
    
    	CASE sel IS
    	WHEN "01" => -- load
        	temp<= D;
    
    	WHEN "10" => -- shift right, pad with bit from Serial_in
        	sout<=temp(0);
        	temp<= sin & temp(15 DOWNTO 1);
    
   	WHEN "11" =>
        	sout<=temp(15);
        	temp<=temp(14 downto 0) & sin;
    
    	WHEN OTHERS =>
        	NULL;
    	END CASE;
    END IF;
END PROCESS;
Q <= temp;
END Behavioral;