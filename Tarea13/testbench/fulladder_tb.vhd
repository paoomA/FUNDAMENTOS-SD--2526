-- ==========================================================
-- TESTBENCH DEL SUMADOR COMPLETO
-- Este banco de pruebas verifica todas las combinaciones
-- posibles de entrada del Full Adder
-- ==========================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidad del testbench (no tiene puertos)
entity tb_fulladder is
end tb_fulladder;

-- Arquitectura del testbench
architecture Behavioral of tb_fulladder is

-- Declaración del componente que será probado
component FullAdder
Port(
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC
);
end component;

-- Señales internas para conectar el circuito
signal A : STD_LOGIC := '0';
signal B : STD_LOGIC := '0';
signal Cin : STD_LOGIC := '0';
signal S : STD_LOGIC;
signal Cout : STD_LOGIC;

begin

-- Instanciación del dispositivo bajo prueba (DUT)
UUT: FullAdder
port map(
A => A,
B => B,
Cin => Cin,
S => S,
Cout => Cout
);

-- Proceso que genera las señales de prueba
process
begin

-- Se prueban todas las combinaciones posibles (2^3 = 8)

A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;

-- Se detiene la simulación
wait;

end process;

end Behavioral;
