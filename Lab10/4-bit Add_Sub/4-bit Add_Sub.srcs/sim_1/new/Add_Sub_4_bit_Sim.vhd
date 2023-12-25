----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 01:45:41 AM
-- Design Name: 
-- Module Name: Add_Sub_4_bit_Sim - Behavioral
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

entity Add_Sub_4_bit_Sim is
--  Port ( );
end Add_Sub_4_bit_Sim;

architecture Behavioral of Add_Sub_4_bit_Sim is

    -- Component declaration
    component Adder_Subtractor_4bit
        Port (
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            M : in STD_LOGIC;
            S : out STD_LOGIC_VECTOR (3 downto 0);
            C_OUT : out STD_LOGIC;
            OVERFLOW : out STD_LOGIC;
            ZERO : out STD_LOGIC
        );
    end component;

    -- Signal declarations
    signal A_tb : STD_LOGIC_VECTOR (3 downto 0);
    signal B_tb : STD_LOGIC_VECTOR (3 downto 0);
    signal M_tb : STD_LOGIC;
    signal S_tb : STD_LOGIC_VECTOR (3 downto 0);
    signal C_OUT_tb : STD_LOGIC;
    signal OVERFLOW_tb : STD_LOGIC;
    signal ZERO_tb : STD_LOGIC;

begin
    -- Instantiate the DUT (Device Under Test)
    uut: Adder_Subtractor_4bit
        port map (
            A => A_tb,
            B => B_tb,
            M => M_tb,
            S => S_tb,
            C_OUT => C_OUT_tb,
            OVERFLOW => OVERFLOW_tb,
            ZERO => ZERO_tb
        );

    -- Stimulus process
    stimulus: process
    begin
        -- Testcase 1: Addition (A + B)
        A_tb <= "0011";
        B_tb <= "0101";
        M_tb <= '0';
        wait for 10 ns;

        -- Testcase 2: Subtraction (A - B)
        A_tb <= "1010";
        B_tb <= "0110";
        M_tb <= '1';
        wait for 10 ns;

        -- Add more test cases here

        wait;
    end process;

end Behavioral;