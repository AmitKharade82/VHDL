
-- Module Name: parity_gen_tb - Behavioral
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

entity parity_gen_tb is
--  Port ( );
end parity_gen_tb;

architecture Behavioral of parity_gen_tb is
component parity_gen is
                     Port ( data_in : in STD_LOGIC_VECTOR (03 downto 0);
                            parity_out : out STD_LOGIC);
end component;

signal data_in :  STD_LOGIC_VECTOR (03 downto 0);
signal parity_out :  STD_LOGIC ;

begin
utt: parity_gen port map(data_in => data_in,
                         parity_out => parity_out);

stim_proc: process
begin

        data_in <= "0000";
        wait for 100 ns;
        
        data_in <= "0001";
        wait for 100 ns;
        
        data_in <= "0010";
        wait for 100 ns;
        
        data_in <= "0011";
        wait for 100 ns;
        
        data_in <= "0100";
        wait for 100 ns;
        
        data_in <= "0101";
        wait for 100 ns;
                
        data_in <= "0110";
        wait for 100 ns;
                        
        data_in <= "0111";
        wait for 100 ns;
        
        data_in <= "1000";
        wait for 100 ns;
        
        data_in <= "1001";
        wait for 100 ns;
        
        data_in <= "1010";
        wait for 100 ns;
                
        data_in <= "1011";
        wait for 100 ns;
                        
        data_in <= "1100";
        wait for 100 ns;
                                
        data_in <= "1101";
        wait for 100 ns;
        
        data_in <= "1110";
        wait for 100 ns;
                
        data_in <= "1111";
        wait for 100 ns;
                                                              
end process;
end;
