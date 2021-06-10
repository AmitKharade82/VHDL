
-- Module Name: SR_flip_flop_tb - Behavioral
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

entity SR_flip_flop_tb is
--  Port ( );
end SR_flip_flop_tb;

architecture Behavioral of SR_flip_flop_tb is
component SR_flip_flop is 
             port (clk,r,s,rst : in std_logic;
                    Q: out std_logic;
                    Qnot : out std_logic);
end component;

signal clk :  std_logic;
signal r :  std_logic;
signal s :  std_logic;
signal rst :  std_logic;
signal Q:  std_logic;
signal Qnot :  std_logic;

begin
utt: SR_flip_flop port map (clk => clk,
                            r => r,
                            s => s,
                            rst => rst,
                            Q => Q,
                            Qnot => Qnot);

clock_process :process
begin
	clk <= '0';
	wait for 100 ns;
	clk <= '1';
	wait for 100 ns;
end process;
     
stim_proc :process
begin
  rst <= '0';
  wait for 100 ns; 

  rst <= '1';
  wait for 100 ns;
  
  rst <= '0';
  s <= '0';
  r <= '0';
  wait for 100 ns; 
  
  s <= '0';
  r <= '1';
  wait for 100 ns;
  
  s <= '1'; 
  r <= '0';
  wait for 100 ns;

  s <= '0'; 
  r <= '0';
  wait for 100 ns;
  
  s <= '1'; 
  r <= '1';
  wait;
  
end process;
end;