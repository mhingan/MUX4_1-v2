----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2024 08:28:42 PM
-- Design Name: 
-- Module Name: test_mux4 - Behavioral
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

entity test_mux4 is
--  Port ( );
end test_mux4;

architecture Behavioral of test_mux4 is

component mux4 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           y : out STD_LOGIC);
end component mux4;

signal i0,i1,i2,i3,a1,a2,y:std_logic;

begin

U_test1: mux4 port map (i0, i1, i2, i3, a1, a2, y);

process
    begin
        a1 <= '0'; wait for 16 ns;
        a1 <= '1'; wait for 16 ns;
    end process;

process    
    begin
        a2 <= '0'; wait for 8 ns;
        a2 <= '1'; wait for 8 ns;
    end process;
    
process    
    begin
        i0 <= '0'; wait for 4 ns;
        i0 <= '1'; wait for 4 ns;
    end process;
    
process    
    begin
        i1 <= '0'; wait for 2 ns;
        i1 <= '1'; wait for 2 ns;
    end process;
    
process    
    begin
        i2 <= '0'; wait for 1 ns;
        i2 <= '1'; wait for 1 ns;
    end process;
    
process    
    begin
        i3 <= '0'; wait for 0.5 ns;
        i3 <= '1'; wait for 0.5 ns;
    end process;

end Behavioral;
