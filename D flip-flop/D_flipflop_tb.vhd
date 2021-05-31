
-- Module Name: D_flipflop_tb - Behavioral
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

entity D_flipflop_tb is
--  Port ( );
end D_flipflop_tb;

architecture Behavioral of D_flipflop_tb is
component D_flipflop is 
       Port (clk : in std_logic;
             rst : in std_logic;
             en : in std_logic;
             Din : in std_logic;
             Q: out std_logic;
             Qnot : out std_logic );
end component;

signal clk :  std_logic;
signal rst :  std_logic;
signal en :  std_logic;
signal Din :  std_logic;
signal Q: std_logic;
signal Qnot :  std_logic;

begin
uut: D_flipflop port map (clk => clk,
                          rst => rst,
                          en => en,
                          Din => Din,
                          Q => Q,
                          Qnot => Qnot);

clock_process :process
begin
	clk <= '0';
	wait for 50 ns;
	clk <= '1';
	wait for 50 ns;
end process;
     
stim_proc: process
begin   
    en <= '0';
    rst <= '1';
    wait for 100 ns;
    
    en <= '1';
    rst <= '0';
    wait for 100 ns;   
      
    Din <= '0'; 
    wait for 100 ns;
    
    Din <= '1';
    wait for 100 ns;
end process;  
end;