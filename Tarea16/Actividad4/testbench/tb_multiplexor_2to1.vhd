library IEEE;
use IEEE.std_logic_1164.all;

entity tb_multiplexor_2to1 is
end tb_multiplexor_2to1;

architecture Behavioral of tb_multiplexor_2to1 is
    -- Señales internas
    signal A, B, SEL, Y : std_logic := '0';
begin
    -- Instanciación del multiplexor (Design)
    uut: entity work.multiplexor_2to1
        -- Puedes cambiar la arquitectura usada: Conductual o Dataflow
        -- architecture Behavioral_Conductual
        port map(
            A   => A,
            B   => B,
            SEL => SEL,
            Y   => Y
        );

    -- Proceso de estímulos
    stim_proc: process
    begin
        -- Caso 1: SEL=0, A=0, B=0 → Y=0
        A <= '0'; B <= '0'; SEL <= '0';
        wait for 10 ns;
        assert (Y='0') report "Error: caso 0" severity error;

        -- Caso 2: SEL=0, A=1, B=0 → Y=1
        A <= '1'; B <= '0'; SEL <= '0';
        wait for 10 ns;
        assert (Y='1') report "Error: caso 1" severity error;

        -- Caso 3: SEL=1, A=0, B=1 → Y=1
        A <= '0'; B <= '1'; SEL <= '1';
        wait for 10 ns;
        assert (Y='1') report "Error: caso 2" severity error;

        -- Caso 4: SEL=1, A=1, B=1 → Y=1
        A <= '1'; B <= '1'; SEL <= '1';
        wait for 10 ns;
        assert (Y='1') report "Error: caso 3" severity error;

        wait; -- fin del proceso
    end process;
end Behavioral;
