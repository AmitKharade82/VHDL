
-- Create Date: 24.05.2021 22:39:11
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

entity parity_check_tb is
--  Port ( );
end parity_check_tb;

architecture Behavioral of parity_check_tb is
component parity_check is 
            Port ( data_in : in STD_LOGIC_VECTOR (03 downto 0);
                    parity_bit : in STD_LOGIC;
                    parity_checkbit : out STD_LOGIC);
end component;

signal data_in :  STD_LOGIC_VECTOR (03 downto 0);
signal parity_bit :  STD_LOGIC;
signal parity_checkbit :  STD_LOGIC;

begin
utt: parity_check port map  (data_in => data_in,
                             parity_bit => parity_bit,
                             parity_checkbit => parity_checkbit);

stim_proc: process
    begin
          data_in <= "0000";
          parity_bit <= '0';
          wait for 100 ns;
                                       
          data_in <= "0001";
          parity_bit <= '0';
          wait for 100 ns;
                                       
          data_in <= "0010";
          parity_bit <= '1';
          wait for 100 ns;
                                      
          data_in <= "0011";
          parity_bit <= '1';
          wait for 100 ns;
                                       
          data_in <= "0100";
          parity_bit <= '0';
          wait for 100 ns;
                                       
          data_in <= "0101";
          parity_bit <= '0';
          wait for 100 ns;
                                               
          data_in <= "0110";
          parity_bit <= '1';
          wait for 100 ns;
                                                       
          data_in <= "0111";
          parity_bit <= '1';
          wait for 100 ns;
                                       
          data_in <= "1000";
          parity_bit <= '0';
          wait for 100 ns;
                                       
          data_in <= "1001";
          parity_bit <= '0';
          wait for 100 ns;
                                       
          data_in <= "1010";
          parity_bit <= '1';
          wait for 100 ns;
                                               
          data_in <= "1011";
          parity_bit <= '1';
          wait for 100 ns;
                                                       
          data_in <= "1100";
          parity_bit <= '0';
          wait for 100 ns;
                                                               
          data_in <= "1101";
          parity_bit <= '0';
          wait for 100 ns;
                                       
          data_in <= "1110";
          parity_bit <= '1';
          wait for 100 ns;
                                               
          data_in <= "1111";
          parity_bit <= '1';
          wait for 100 ns;
                                                                                             
end process;
end;
