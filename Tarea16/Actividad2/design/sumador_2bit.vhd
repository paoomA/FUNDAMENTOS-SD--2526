-- Librerías
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Entidad
entity sumador_2bit is
    port (
        A : in  std_logic_vector(1 downto 0); -- Entrada A (2 bits)
        B : in  std_logic_vector(1 downto 0); -- Entrada B (2 bits)
        S : out std_logic_vector(2 downto 0)  -- Salida (3 bits)
    );
end sumador_2bit;

-- Arquitectura
architecture Behavioral of sumador_2bit is
begin
    process(A, B)
        variable temp : integer;
    begin
        -- Conversión a entero y suma
        temp := to_integer(unsigned(A)) + to_integer(unsigned(B));
        
        -- Conversión del resultado a std_logic_vector
        S <= std_logic_vector(to_unsigned(temp, 3));
    end process;
end Behavioral;
