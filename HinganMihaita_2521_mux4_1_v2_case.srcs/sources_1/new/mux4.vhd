library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           y : out STD_LOGIC);
end mux4;



architecture Behavioral of mux4 is

begin
    process(i0, i1, i2, i3, a1, a2)
    
    -- Variabila select_signal concateneaz? a1 ?i a2 pentru a forma semnalul de selectare pe 2 bi?i
    variable select_signal : STD_LOGIC_VECTOR(1 downto 0);
    
    begin
    
    -- Concatenate a1 and a2 to form a 2-bit select signal
        select_signal := a1 & a2;
    
        case (select_signal) is
            when "00" => y <= i0;
            when "01" => y <= i1;
            when "10" => y <= i2;
            when "11" => y <= i3;
            when others => y <= '0';
        end case;
    end process;    
    
end Behavioral;
