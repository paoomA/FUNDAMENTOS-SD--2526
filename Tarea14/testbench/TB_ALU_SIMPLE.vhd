library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_ALU_SIMPLE is
end TB_ALU_SIMPLE;

architecture behavior of TB_ALU_SIMPLE is

    -- Componente a probar
    component ALU_SIMPLE
        Port (
            A : in STD_LOGIC_VECTOR(7 downto 0);
            B : in STD_LOGIC_VECTOR(7 downto 0);
            SEL : in STD_LOGIC_VECTOR(1 downto 0);
            RESULT : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    -- Señales internas
    signal A : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal SEL : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal RESULT : STD_LOGIC_VECTOR(7 downto 0);

begin

    -- Instancia del módulo
    uut: ALU_SIMPLE
        port map (
            A => A,
            B => B,
            SEL => SEL,
            RESULT => RESULT
        );

    -- Estímulos
    process
    begin

        -- AND
        A <= "10101010";
        B <= "11001100";
        SEL <= "00";
        wait for 10 ns;

        -- OR
        SEL <= "01";
        wait for 10 ns;

        -- SUMA
        SEL <= "10";
        wait for 10 ns;

        -- CONCATENACIÓN
        SEL <= "11";
        wait for 10 ns;

        wait;
    end process;

end behavior;
