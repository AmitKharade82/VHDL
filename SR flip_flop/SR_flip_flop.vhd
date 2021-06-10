
-- Module Name: SR_flip_flop - Behavioral
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

entity SR_flip_flop is
          port (clk,r,s,rst : in std_logic;
                Q: out std_logic;
                Qnot : out std_logic);
end SR_flip_flop;

architecture Behavioral of SR_flip_flop is

begin
process(s,r,clk,rst)
begin
    if(rst='1') then
        Q<='0';
        Qnot<='0';
    elsif(rising_edge(clk)) then
        if(s/=r) then
            Q<=s;
            Qnot<=r;
        elsif (s='1' and r='1') then
            Q<='Z';
            Qnot<='Z';
        end if;
    end if;
end process;
end;