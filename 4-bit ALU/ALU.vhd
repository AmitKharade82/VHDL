
-- Module Name: ALU - Behavioral 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
Port ( s : in STD_LOGIC_VECTOR (02 downto 0);
       a : in STD_LOGIC_VECTOR (03 downto 0);
       b : in STD_LOGIC_VECTOR (03 downto 0);
       f : out STD_LOGIC_VECTOR (03 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
process (s,a,b)
begin
case s is
    when "000"=> f <="0000";
    when "001"=> f <=a+b;
    when "010"=> f <=a-b;
    when "011"=> f <=(a and b);
    when "100"=> f <=(a or b);
    when "101"=> f <=(a xor b);
    when "110"=> f <=(a nor b);
    when others=> f <="1111";
end case;
end process;
end Behavioral;

