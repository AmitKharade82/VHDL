
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter is 
   port (cout :out std_logic_vector (3 downto 0); 
         enable :in std_logic; 
         clk :in std_logic; 
         reset :in std_logic );
end component;

signal enable : std_logic; 
signal clk : std_logic; 
signal reset : std_logic;
signal cout : std_logic_vector (3 downto 0); 

begin
uut: counter port map(cout => cout,
                      enable => enable,
                      clk => clk,
                      reset => reset);
                     
clock_process :process
begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process;
     
stim_proc: process
begin        
	 reset <= '1';
	 enable <= '0';
	 wait for 20 ns;    
 
	 reset <= '0';    
	 enable <= '1';
	 wait;
 end process;
end Behavioral;