-- Librerías necesarias
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad: define entradas y salida del módulo AND
entity AND_2bit is
    port (
        A : in  std_logic;  -- Entrada A
        B : in  std_logic;  -- Entrada B
        Y : out std_logic   -- Salida Y
    );
end AND_2bit;

-- Arquitectura conductual: operación AND de dos entradas
architecture Behavioral of AND_2bit is
begin
    -- Asignación continua usando operador lógico AND
    Y <= A and B;
end Behavioral;
