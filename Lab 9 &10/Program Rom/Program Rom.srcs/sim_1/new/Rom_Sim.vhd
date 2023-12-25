----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 10:09:49 PM
-- Design Name: 
-- Module Name: Rom_Sim - Behavioral
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

entity Rom_Sim is
--  Port ( );
end Rom_Sim;

architecture Behavioral of Rom_Sim is

    component Rom
        Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
               data : out STD_LOGIC_VECTOR (11 downto 0));
    end component;

    signal address : STD_LOGIC_VECTOR(2 downto 0);
    signal data_out : STD_LOGIC_VECTOR(11 downto 0);


begin
    uut: Rom port map (address => address, data => data_out);

process
begin
    -- Initialize inputs -- 210598 -> 0 0 1 1 0 0 1 1 0 1 1 0 1 0 1 0 0 1 1 0

        
        address <= "110";

        -- Wait for 10 ns for the signals to settle
        wait for 100 ns;

        -- Test case 1
        address <= "110";
        wait for 100 ns;
        assert data_out = "100010001010" report "Test case 1 failed";

        -- Test case 2
        address <= "100";
        wait for 100 ns;
        assert data_out = "100100000001" report "Test case 2 failed";

        -- Test case 3
        address <= "011";
        wait for 100 ns;
        assert data_out = "010100000000" report "Test case 3 failed";

        -- Test case 4
        address <= "011";
        wait for 100 ns;
        assert data_out = "000010100000" report "Test case 4 failed";

        -- Test case 5
        address <= "110";
        wait for 100 ns;
        assert data_out = "110010000111" report "Test case 5 failed";

        -- Test case 6
        address <= "000";
        wait for 100 ns;
        assert data_out = "110000000011" report "Test case 6 failed";

        -- Test case 7
        address <= "110";
        wait for 100 ns;
        assert data_out = "000000000000" report "Test case 7 failed";

        -- Test case 8
        address <= "100";
        wait for 100 ns;
        assert data_out = "000000000000" report "Test case 8 failed";

        -- End simulation
        wait;
    end process;
end Behavioral;
