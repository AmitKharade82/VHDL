
-- Module Name: T_flip_flop_tb - Behavioral
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

entity T_flip_flop_tb is
--  Port ( );
end T_flip_flop_tb;

architecture Behavioral of T_flip_flop_tb is
component T_flipflop is 
       Port (clk : in std_logic;
             t: in std_logic;
             rst : in std_logic;
             Q: out std_logic;
             Qnot : out std_logic);
end component;

signal clk :  std_logic;
signal t:  std_logic;
signal rst :  std_logic;
signal Q:  std_logic;
signal Qnot :  std_logic;

begin
uut: T_flipflop port map (clk => clk,
                          t => t,
                          rst => rst,
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
    rst <= '1' after 20 ns;
    rst <= '0'; 
      
    t <= '0'; 
    wait for 100 ns;
    
    t <= '1';
    wait for 100 ns;
end process;  
end;
