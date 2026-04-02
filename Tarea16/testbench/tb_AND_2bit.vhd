-- Librerías necesarias
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad del Testbench (sin puertos)
entity tb_AND_2bit is
end tb_AND_2bit;

-- Arquitectura conductual del Testbench
architecture Behavioral of tb_AND_2bit is
    -- Señales internas para conectar al módulo AND
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Y : std_logic;
begin
    -- Instanciación del módulo AND (Unit Under Test)
    uut: entity work.AND_2bit
        port map (
            A => A,
            B => B,
            Y => Y
        );

    -- Proceso de generación de estímulos y verificación
    stim_proc: process
    begin
        -- Caso 0 AND 0
        A <= '0'; B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Error: 0 AND 0" severity error;

        -- Caso 0 AND 1
        A <= '0'; B <= '1';
        wait for 10 ns;
        assert (Y = '0') report "Error: 0 AND 1" severity error;

        -- Caso 1 AND 0
        A <= '1'; B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Error: 1 AND 0" severity error;

        -- Caso 1 AND 1
        A <= '1'; B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Error: 1 AND 1" severity error;

        -- Finaliza la simulación
        wait;
    end process;
end Behavioral;
