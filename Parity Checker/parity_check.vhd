
-- Module Name: parity_check - Behavioral
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

entity parity_check is
             Port ( data_in : in STD_LOGIC_VECTOR (03 downto 0);
                    parity_bit : in STD_LOGIC;
                    parity_checkbit : out STD_LOGIC);
end parity_check;

architecture Behavioral of parity_check is

begin

parity_checkbit <= parity_bit xor((data_in(0)xor data_in(1))xor (data_in(2)xor data_in(3)));

end Behavioral;
