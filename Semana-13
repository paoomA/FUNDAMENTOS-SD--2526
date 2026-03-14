-- ==========================================================
-- HALF ADDER (SEMISUMADOR)
-- ==========================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HalfAdder is
Port(
A : in STD_LOGIC;   
B : in STD_LOGIC;   
S : out STD_LOGIC;  
C : out STD_LOGIC   
);
end HalfAdder;

architecture Behavioral of HalfAdder is
begin

-- Suma mediante compuerta XOR
S <= A XOR B;

-- Acarreo mediante compuerta AND
C <= A AND B;

end Behavioral;



-- ==========================================================
-- FULL ADDER (SUMADOR COMPLETO)
-- ==========================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
Port(
A : in STD_LOGIC;      
B : in STD_LOGIC;      
Cin : in STD_LOGIC;    
S : out STD_LOGIC;     
Cout : out STD_LOGIC   
);
end FullAdder;

architecture Structural of FullAdder is

-- Declaración del componente HalfAdder
component HalfAdder
Port(
A : in STD_LOGIC;
B : in STD_LOGIC;
S : out STD_LOGIC;
C : out STD_LOGIC
);
end component;

-- Señales internas
signal S1 : STD_LOGIC;
signal C1 : STD_LOGIC;
signal C2 : STD_LOGIC;

begin

-- Primer semisumador
HA1: HalfAdder port map(
A => A,
B => B,
S => S1,
C => C1
);

-- Segundo semisumador
HA2: HalfAdder port map(
A => S1,
B => Cin,
S => S,
C => C2
);

-- Compuerta OR para el acarreo final
Cout <= C1 OR C2;

end Structural;
