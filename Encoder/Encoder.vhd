
-- Module Name: Encoder - Behavioral
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

entity Encoder is
port ( sel : in std_logic_vector (7 downto 0);
       code :out std_logic_vector (2 downto 0));
end Encoder;

architecture Behavioral of Encoder is

begin
code <= "000" when sel(0) = '1' else
        "001" when sel(1) = '1' else
        "010" when sel(2) = '1' else
        "011" when sel(3) = '1' else
        "100" when sel(4) = '1' else
        "101" when sel(5) = '1' else
        "110" when sel(6) = '1' else
        "111" when sel(7) = '1' else
        "---";
end Behavioral;
