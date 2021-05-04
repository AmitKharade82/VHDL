 -- Module Name: FULL_SUB_TB - Behavioral
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

entity FULL_SUB_TB is

end FULL_SUB_TB;

architecture Behavioral of FULL_SUB_TB is
component FULL_SUB
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           diff : out STD_LOGIC;
           borrow : out STD_LOGIC);
end component;
           signal a : std_logic :='0';
           signal b : std_logic :='0';
           signal c : std_logic :='0';
           signal diff :std_logic;
           signal borrow :std_logic;

begin
uut: FULL_SUB port map( a => a,
                  b => b,
                  c => c,
                  diff => diff,
                  borrow => borrow);
stim_proc: process
begin
     a <= '0';
     b <= '0';
     c <= '0';
    wait for 100ns;
     a <= '0';
     b <= '0';
     c <= '1';
    wait for 100ns;
     a <= '0';
     b <= '1';
     c <= '0';
    wait for 100ns;
     a <= '0';
     b <= '1';
     c <= '1';
    wait for 100ns;
     a <= '1';
     b <= '0';
     c <= '0';
    wait for 100ns;
     a <= '1';
     b <= '0';
     c <= '1';
    wait for 100ns;
     a <= '1';
     b <= '1';
     c <= '0';
    wait for 100ns;
     a <= '1';
     b <= '1';
     c <= '1';
    wait;                  
end process;
end;
