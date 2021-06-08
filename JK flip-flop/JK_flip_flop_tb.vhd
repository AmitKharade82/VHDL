
-- Module Name: JK_flip_flop_tb - Behavioral
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

entity JK_flip_flop_tb is
--  Port ( );
end JK_flip_flop_tb;

architecture Behavioral of JK_flip_flop_tb is
component JK_flip_flop is 
           port (clk,J,K,prs,clr : in std_logic;
                 Q: out std_logic;
                 Qnot : out std_logic);
end component;

signal clk:  std_logic;
signal J:  std_logic;
signal K:  std_logic;
signal prs:  std_logic;
signal clr :  std_logic;
signal Q:  std_logic;
signal Qnot :  std_logic;
begin

utt: JK_flip_flop port map (clk => clk,
                            J => J,
                            K => K,
                            prs => prs,
                            clr => clr,
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
    wait for 100 ns;   
    prs <= '1';
    clr <= '0';
    wait for 100 ns;
    
    prs <= '0';
    wait for 100 ns;
    
    J <= '1';
    K <= '0';
    wait for 200 ns;
    
    J <= '0';
    K <= '1';
    wait for 200 ns;
    
    J <= '0';
    K <= '0';
    wait for 200 ns;
    
    J <= '1';
    K <= '1';
    wait for 200 ns;
    
    clr <= '1';
    wait for 100 ns;
end process;
end;
