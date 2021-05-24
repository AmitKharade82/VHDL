 
-- Module Name: counter - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
        port (cout :out std_logic_vector (3 downto 0); 
              enable :in std_logic; 
              clk :in std_logic; 
              reset :in std_logic );
end counter;

architecture Behavioral of counter is
signal count :std_logic_vector (3 downto 0);

 begin
 process (clk, reset) 
 begin
 if (reset = '1') then
    count <= (others=>'0');
    elsif (rising_edge(clk) ) then
        if (enable = '1') then 
        count <= count + 1; 
        end if;
 end if;
 end process;
 cout <= count;
end Behavioral;
