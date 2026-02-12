library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Mini_ECU is
end tb_Mini_ECU;

architecture sim of tb_Mini_ECU is
    signal temp : STD_LOGIC_VECTOR(7 downto 0);
    signal fan, alarm : STD_LOGIC;
begin
    uut: entity work.Mini_ECU port map(temp => temp, fan => fan, alarm => alarm);

    stim_proc: process
    begin
        temp <= "01010000"; -- 80
        wait for 20 ns;
        temp <= "01100100"; -- 100
        wait for 20 ns;
        temp <= "01111000"; -- 120
        wait;
    end process;
end sim;
