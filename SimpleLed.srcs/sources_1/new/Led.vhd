library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity blinking_leds is
    Port ( clk : in STD_LOGIC;
           leds : out STD_LOGIC_VECTOR (3 downto 0));
end blinking_leds;

architecture Behavioral of blinking_leds is
signal cycle_counter : std_logic_vector(0 to 3);
begin

process(clk) is
begin
    if(rising_edge(clk)) then
        cycle_counter <= cycle_counter + 1;
    end if;
end process;

leds <= cycle_counter;

end Behavioral;
