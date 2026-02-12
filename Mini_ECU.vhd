library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mini_ECU is
    Port (
        temp  : in  STD_LOGIC_VECTOR(7 downto 0);
        fan   : out STD_LOGIC;
        alarm : out STD_LOGIC
    );
end Mini_ECU;

architecture Behavioral of Mini_ECU is
begin
    process(temp)
        variable temperature : integer;
    begin
        temperature := to_integer(unsigned(temp));

        if temperature < 95 then
            fan   <= '0';
            alarm <= '0';
        elsif temperature < 110 then
            fan   <= '1';
            alarm <= '0';
        else
            fan   <= '1';
            alarm <= '1';
        end if;
    end process;
end Behavioral;
