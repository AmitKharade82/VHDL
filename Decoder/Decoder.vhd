 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
port (sel: in std_logic_vector (2 downto 0);
      res: out std_logic_vector (7 downto 0));
end Decoder;

architecture Behavioral of Decoder is
begin
res <= "00000001" when sel = "000" else
       "00000010" when sel = "001" else
       "00000100" when sel = "010" else
       "00001000" when sel = "011" else
       "00010000" when sel = "100" else
       "00100000" when sel = "101" else
       "01000000" when sel = "110" else
       "10000000";
end Behavioral;
