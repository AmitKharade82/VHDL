----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.05.2021 08:42:32
-- Design Name: 
-- Module Name: FA_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity FA_TB is
   
end FA_TB;

architecture Behavioral of FA_TB is
component FA
Port (  a : in STD_LOGIC;
            b : in STD_LOGIC;
            cin : in STD_LOGIC;
            sum : out STD_LOGIC;
            carry : out STD_LOGIC);
end component;
signal a : std_logic :='0';
signal b : std_logic :='0';
signal cin : std_logic :='0';
signal sum :std_logic;
signal carry :std_logic;
begin
uut: FA port map( a => a,
                  b => b,
                  cin => cin,
                  sum => sum,
                  carry => carry);
stim_proc: process
 begin
     a <= '0';
     b <= '0';
     cin <= '0';
    wait for 100ns;
     a <= '0';
     b <= '0';
     cin <= '1';
    wait for 100ns;
     a <= '0';
     b <= '1';
     cin <= '0';
    wait for 100ns;
     a <= '0';
     b <= '1';
     cin <= '1';
    wait for 100ns;
     a <= '1';
     b <= '0';
     cin <= '0';
    wait for 100ns;
     a <= '1';
     b <= '0';
     cin <= '1';
    wait for 100ns;
     a <= '1';
     b <= '1';
     cin <= '0';
    wait for 100ns;
     a <= '1';
     b <= '1';
     cin <= '1';
    wait;                  
end process;
end;