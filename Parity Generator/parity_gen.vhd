
-- Module Name: parity_gen - Behavioral
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

entity parity_gen is
                Port ( data_in : in STD_LOGIC_VECTOR (03 downto 0);
                       parity_out : out STD_LOGIC);

end parity_gen;

architecture Behavioral of parity_gen is
begin

parity_out<= (data_in(0)xor data_in(1))xor (data_in(2)xor data_in(3));

end Behavioral;
