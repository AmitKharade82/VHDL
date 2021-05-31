
-- Module Name: D_flipflop - Behavioral
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

entity D_flipflop is
  Port (clk : in std_logic;
        rst : in std_logic;
        en : in std_logic;
        Din : in std_logic;
        Q: out std_logic;
        Qnot : out std_logic);
end D_flipflop;

architecture Behavioral of D_flipflop is

begin
process (clk,en,Din,rst)
     
begin
        if(en='0') then
        Q <='0';
        Qnot <='0';
        	elsif(rst='1') then
        	Q <='0';
        	Qnot <='1';
        		elsif(clk'event and clk='1') then
        		Q <= Din;
        		Qnot <= not Din;
        end  if;
   end process;
end Behavioral;
