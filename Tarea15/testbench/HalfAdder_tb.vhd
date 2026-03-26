library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder_tb is
end HalfAdder_tb;

architecture behavior of HalfAdder_tb is

    -- Componente a probar
    component HalfAdder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            SUM   : out STD_LOGIC;
            CARRY : out STD_LOGIC
        );
    end component;

    -- Señales internas para conectar con el DUT
    signal A     : STD_LOGIC := '0';
    signal B     : STD_LOGIC := '0';
    signal SUM   : STD_LOGIC;
    signal CARRY : STD_LOGIC;

begin

    -- Instancia del Half Adder
    uut: HalfAdder port map (
        A => A,
        B => B,
        SUM => SUM,
        CARRY => CARRY
    );

    -- Generación de estímulos
    stim_proc: process
    begin
        A <= '0'; B <= '0';
        wait for 10 ns;

        A <= '0'; B <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0';
        wait for 10 ns;

        A <= '1'; B <= '1';
        wait for 10 ns;

        wait;  -- Detiene la simulación
    end process;

end behavior;
