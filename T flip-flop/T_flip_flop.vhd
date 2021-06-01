
-- Module Name: T_flip_flop - Behavioral
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

entity T_flip_flop is
              port (clk : in std_logic;
                    t: in std_logic;
                    rst : in std_logic;
                    Q: out std_logic;
                    Qnot : out std_logic); 
end T_flip_flop;

architecture Behavioral of T_flip_flop is                  
  begin                                              
   process(clk, rst, t)
   variable op: std_logic:= '0'; 
    
   begin
        if(rst='1')then
        	op :='0';
        elsif(rising_edge(CLK))then
            if(T='1')then
            	op := not op;
            end if;
        end if;
  Q <= not op;
  Qnot <= op;
end process;
end Behavioral;
