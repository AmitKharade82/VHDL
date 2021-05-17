 
-- Module Name: Encoder_tb - Behavioral
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

entity Encoder_tb is
--  Port ( );
end Encoder_tb;

architecture Behavioral of Encoder_tb is
component Encoder 
        port(sel : in std_logic_vector (7 downto 0);
             code :out std_logic_vector (2 downto 0));
end component;
signal sel : std_logic_vector (07 downto 0);
signal code : std_logic_vector (02 downto 0);
begin
uut: Encoder port map(sel => sel,
                      code => code);
stim_proc: process
begin
	wait for 100 ns;

	sel <="00000000";
	wait for 100 ns;

	sel <="00000001";
	wait for 100 ns;

	sel <="00000010";
	wait for 100 ns;

	sel <="00000100";
	wait for 100 ns;

	sel <="00001000";
	wait for 100 ns;

	sel <="00010000";
	wait for 100 ns;

	sel <="00100000";
	wait for 100 ns;

	sel <="01000000";
	wait for 100 ns; 

	sel <="10000000";
	wait for 100 ns;
end process;
end;