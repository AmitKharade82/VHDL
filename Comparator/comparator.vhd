
-- Module Name: comparator - Behavioral
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

entity comparator is
 Port ( A : in STD_LOGIC_VECTOR (03 downto 0);
        B : in STD_LOGIC_VECTOR (03 downto 0);
        AeqB : out STD_LOGIC;
        AgtB : out STD_LOGIC;
        AltB : out STD_LOGIC);
 end comparator;
architecture Behavioral of comparator is 
begin
    AeqB <= '1' when A=B else '0';
    AgtB <= '1' when A>B else '0';
    AltB <= '1' when A<B else '0';
end Behavioral;
