library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_SIMPLE is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        SEL : in STD_LOGIC_VECTOR(1 downto 0);
        RESULT : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ALU_SIMPLE;

architecture Behavioral of ALU_SIMPLE is
begin

process(A, B, SEL)
begin
    case SEL is

        when "00" =>
            RESULT <= A AND B;

        when "01" =>
            RESULT <= A OR B;

        when "10" =>
            RESULT <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B));

        when "11" =>
            RESULT <= A(3 downto 0) & B(3 downto 0);

        when others =>
            RESULT <= (others => '0');

    end case;
end process;

end Behavioral;
