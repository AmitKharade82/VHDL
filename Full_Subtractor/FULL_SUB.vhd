-- Module Name: FULL_SUB - Behavioral
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

entity FULL_SUB is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           diff : out STD_LOGIC;
           borrow : out STD_LOGIC);
end FULL_SUB;

architecture Behavioral of FULL_SUB is

begin
diff <= a xor b xor c;
borrow <= (a and(not b))or(c and (a xor b));
end Behavioral;
