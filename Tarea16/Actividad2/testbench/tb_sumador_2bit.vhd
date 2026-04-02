-- Librerías
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entidad del Testbench
entity tb_sumador_2bit is
end tb_sumador_2bit;

-- Arquitectura
architecture Behavioral of tb_sumador_2bit is
    signal A : std_logic_vector(1 downto 0) := "00";
    signal B : std_logic_vector(1 downto 0) := "00";
    signal S : std_logic_vector(2 downto 0);
begin
    -- Instanciación del módulo
    uut: entity work.sumador_2bit
        port map (
            A => A,
            B => B,
            S => S
        );

    -- Proceso de estímulos
    stim_proc: process
    begin
        -- 0 + 0 = 0
        A <= "00"; B <= "00";
        wait for 10 ns;
        assert (S = "000") report "Error: 0+0" severity error;

        -- 1 + 1 = 2
        A <= "01"; B <= "01";
        wait for 10 ns;
        assert (S = "010") report "Error: 1+1" severity error;

        -- 2 + 1 = 3
        A <= "10"; B <= "01";
        wait for 10 ns;
        assert (S = "011") report "Error: 2+1" severity error;

        -- 3 + 3 = 6
        A <= "11"; B <= "11";
        wait for 10 ns;
        assert (S = "110") report "Error: 3+3" severity error;

        wait;
    end process;
end Behavioral;
