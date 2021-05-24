
-- Module Name: shiftreg_tb - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftreg_tb is
--  Port ( );
end shiftreg_tb;

architecture Behavioral of shiftreg_tb is
component shiftreg is
Port ( clock: IN STD_LOGIC;
       sin:  IN STD_LOGIC;
       rst: IN STD_LOGIC;
       sel: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
       D: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
       sout: OUT STD_LOGIC;
       Q: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;

signal clock: STD_LOGIC;
signal sin: STD_LOGIC;
signal rst: STD_LOGIC;
signal sel: STD_LOGIC_VECTOR(1 DOWNTO 0);
signal D: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal sout: STD_LOGIC;
signal Q: STD_LOGIC_VECTOR(15 DOWNTO 0);

begin
uut: shiftreg port map(clock => Clock,
                       sin => sin,
                       rst => rst,
                       sel => sel,
                       D => D,
                       sout => sout,
                       Q => Q);

clock_process :process
begin
	clock <= '0';
	wait for 10 ns;
	clock <= '1';
	wait for 10 ns;
end process;

sin_process :process
begin
	sin <= '0';
	wait for 50 ns;
	sin <= '1';
	wait for 50 ns;
end process;

stim_proc: process
begin
	rst <= '1';
	wait for 10 ns;
	rst <= '0';
	wait for 100 ns;
    		
	sel <="00";
    	D <= X"0000";
    	wait for 100 ns;
    
    	sel <="01";
    	D <= X"0261";
    	wait for 100 ns;
    
    	sel <="10";
    	D <= X"6629";
    	wait for 100 ns;
    
    	sel <="11";
    	D <= X"6746";
    	wait for 100 ns;
    
  end process;
end;