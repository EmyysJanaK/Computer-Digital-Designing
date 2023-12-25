----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 02:57:01 PM
-- Design Name: 
-- Module Name: Decoder_2_to_4_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_2_to_4_Sim is
--  Port ( );
end Decoder_2_to_4_Sim;

architecture Behavioral of Decoder_2_to_4_Sim is

    component Decoder_2_to_4 is
        Port (
            I : in STD_LOGIC_VECTOR (1 downto 0);
            EN : in STD_LOGIC;
            Y : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    signal I : STD_LOGIC_VECTOR (1 downto 0);
    signal EN : STD_LOGIC;
    signal Y : STD_LOGIC_VECTOR (3 downto 0);

begin

    UUT: Decoder_2_to_4
    port map (
        I => I,
        EN => EN,
        Y => Y
    );

    -- Stimulus process
    stim_proc: process
    begin
        I <= "00";
        EN <= '1';
        wait for 10 ns;

        I <= "01";
        wait for 10 ns;

        I <= "10";
        wait for 10 ns;

        I <= "11";
        wait for 10 ns;

        I <= "00";
        EN <= '0';
        wait for 10 ns;

        I <= "01";
        wait for 10 ns;

        I <= "10";
        wait for 10 ns;

        I <= "11";
        wait for 10 ns;

        wait;
    end process;

end Behavioral;