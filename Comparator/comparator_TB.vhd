-- Module Name: comparator_TB - Behavioral
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

entity comparator_TB is
--  Port ( );
end comparator_TB;

architecture Behavioral of comparator_TB is
component comparator 
    port( A : in STD_LOGIC_VECTOR (03 downto 0);
       	  B : in STD_LOGIC_VECTOR (03 downto 0);
          AeqB : out STD_LOGIC;
          AgtB : out STD_LOGIC;
          AltB : out STD_LOGIC);
 end component;       
    signal A : STD_LOGIC_VECTOR (03 downto 0);
    signal B : STD_LOGIC_VECTOR (03 downto 0);
    signal AeqB : STD_LOGIC;
    Signal AgtB : STD_LOGIC;
    signal AltB : STD_LOGIC;
 begin
--entity instantiation
UUT : comparator port map(A => A,
                          B => B,
                          AeqB => AeqB,
                          AgtB => AgtB,
                          AltB => AltB);

--definition of simulation process
stim_proc : process
begin
 wait for 100 ns;
 A<="0010"; --A=2
 B<="1001"; --B=9
 wait for 100 ns;
 
 A<="1001";  --A=9
 B<="0010";  --B=2
 wait for 100 ns;
 
 A<="1010";  --A=10
 B<="1010";  --B=10
 wait;
end process;
end;
