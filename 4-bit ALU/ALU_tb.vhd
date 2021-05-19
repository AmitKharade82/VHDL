
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
--  Port ( );
end ALU_tb;
architecture Behavioral of ALU_tb is

component ALU is
Port ( s : in STD_LOGIC_VECTOR (02 downto 0);
       a : in STD_LOGIC_VECTOR (03 downto 0);
       b : in STD_LOGIC_VECTOR (03 downto 0);
       f : out STD_LOGIC_VECTOR (03 downto 0));
end component;

signal s : std_logic_vector (02 downto 0);
signal a : std_logic_vector (03 downto 0);
signal b : std_logic_vector (03 downto 0);
signal f : std_logic_vector (03 downto 0);

begin
uut: ALU port map(s => s,
                  a => a,
                  b => b,
                  f => f);


stim_proc: process
begin
wait for 100 ns;
a <= "0101";
b <= "1010";
        s <="000";
        wait for 100 ns;
        
	    s <="001";
        wait for 100 ns;
        
	    s <="010";
        wait for 100 ns;
        
	    s <="011";
        wait for 100 ns;
        
	    s <="100";
        wait for 100 ns;
        
	    s <="101";
        wait for 100 ns;
        
	    s <="110";
        wait for 100 ns;
        
	    s <="111";
        wait for 100 ns;
end process;
end;
