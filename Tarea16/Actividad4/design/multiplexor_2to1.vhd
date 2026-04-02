library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad del multiplexor 2:1
entity multiplexor_2to1 is
    port(
        A   : in  std_logic; -- Entrada A
        B   : in  std_logic; -- Entrada B
        SEL : in  std_logic; -- Selector
        Y   : out std_logic  -- Salida
    );
end multiplexor_2to1;

-- Arquitectura 1: Conductual
architecture Behavioral_Conductual of multiplexor_2to1 is
begin
    process(A, B, SEL)
    begin
        if SEL = '0' then
            Y <= A;
        else
            Y <= B;
        end if;
    end process;
end Behavioral_Conductual;

-- Arquitectura 2: Flujo de Datos
architecture Behavioral_Dataflow of multiplexor_2to1 is
begin
    Y <= A when SEL = '0' else B;
end Behavioral_Dataflow;
