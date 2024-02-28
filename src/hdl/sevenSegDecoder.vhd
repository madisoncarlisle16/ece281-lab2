----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2024 06:20:12 PM
-- Design Name: 
-- Module Name: sevenSegDecoder - sevenSegDecoder_Arch
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

entity sevenSegDecoder is
    Port ( i_D : in STD_LOGIC_VECTOR (3 downto 0);
           o_S : out STD_LOGIC_VECTOR (6 downto 0));
end sevenSegDecoder;

architecture sevenSegDecoder_Arch of sevenSegDecoder is

       
   
begin
o_S(0) <= (not i_D(3) and not i_D(2) and not i_D(1) and i_D(0) )
        or ( i_D(3) and not i_D(2) and i_D(1) and i_D(0))
        or ( i_D(3) and  i_D(2) and not i_D(1))
        or ( i_D(2) and not i_D(1) and not i_D(0));
o_S(1) <= (not i_D(3) and i_D(2) and not i_D(1) and i_D(0) )
        or ( i_D(2) and i_D(1) and not i_D(0))
        or ( i_D(3) and  i_D(1) and i_D(0))
        or ( i_D(3) and i_D(2) and not i_D(0));
o_S(2) <= (not i_D(3) and not i_D(2) and i_D(1) and not i_D(0) )
        or ( i_D(3) and i_D(2) and i_D(1))
        or ( i_D(3) and i_D(2) and not i_D(0));
o_S(3) <= (not i_D(3) and i_D(2) and not i_D(1) and not i_D(0) )
        or ( i_D(3) and not i_D(2) and i_D(1) and not i_D(0))
        or (not i_D(2) and not i_D(1) and i_D(0))
        or ( i_D(2) and i_D(1) and i_D(0));
o_S(4) <= (not i_D(3) and i_D(2) and not i_D(1))
        or ( not i_D(2) and not i_D(1) and i_D(0))
        or (not i_D(3) and i_D(0));
o_S(5) <= '1' when ( (i_D = "0001") or
                     (i_D = "0011") or
                     (i_D = "0010") or
                     (i_D = "0111") or
                     (i_D = "1100") or
                     (i_D = "1101") ) else '0';
o_S(6) <= '1' when ( (i_D = "0000") or
                     (i_D = "0001") or
                     (i_D = "0111") ) else '0';

end sevenSegDecoder_Arch;
