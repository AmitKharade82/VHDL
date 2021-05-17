
-- Module Name: Decoder_tb - Behavioral
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

entity Decoder_tb is
--  Port ( );
end Decoder_tb;

architecture Behavioral of Decoder_tb is
component Decoder is
        port (sel: in std_logic_vector (2 downto 0);
              res: out std_logic_vector (7 downto 0));
end component;
signal sel : std_logic_vector (02 downto 0);
signal res : std_logic_vector (07 downto 0);

begin
uut: Decoder port map(sel => sel,
                      res => res);
stim_proc: process
begin
wait for 100 ns;
        sel <="000";
        wait for 100 ns;
        
	sel <="001";
        wait for 100 ns;
        
	sel <="010";
        wait for 100 ns;
        
	sel <="011";
        wait for 100 ns;
        
	sel <="100";
        wait for 100 ns;
        
	sel <="101";
        wait for 100 ns;
        
	sel <="110";
        wait for 100 ns;
        
	sel <="111";
        wait for 100 ns;
end process;
end;
