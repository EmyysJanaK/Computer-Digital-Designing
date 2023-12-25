----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 06:04:38 PM
-- Design Name: 
-- Module Name: Mux_2x4_Sim - Behavioral
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

entity Mux_2x3_Sim is
--  Port ( );
end Mux_2x3_Sim;

architecture Behavioral of Mux_2x3_Sim is

    -- Component declaration for the DUT (Design Under Test)
    component MUX_2_3bit
        Port (
            A : in STD_LOGIC_VECTOR (2 downto 0);
            B : in STD_LOGIC_VECTOR (2 downto 0);
            S : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;

    -- Testbench signals
    signal A_tb, B_tb : STD_LOGIC_VECTOR (2 downto 0);
    signal S_tb : STD_LOGIC;
    signal Q_tb : STD_LOGIC_VECTOR (2 downto 0);

begin
    -- Instantiate the DUT (Design Under Test)
    dut: MUX_2_3bit
        port map (
            A => A_tb,
            B => B_tb,
            S => S_tb,
            Q => Q_tb
        );

    -- Stimulus process
    stimulus_proc: process
    begin
        -- Testcase 1: S = '0', B selected
        A_tb <= "000";
        B_tb <= "100";
        S_tb <= '0';
        wait for 100 ns;
        
        -- Testcase 2: S = '1', A selected
        A_tb <= "010";
        B_tb <= "011";
        S_tb <= '1';
        wait for 100 ns;
        
        -- Testcase 3: S = '0', B selected
        A_tb <= "011";
        B_tb <= "110";
        S_tb <= '0';
        wait for 100 ns;

        -- End the simulation
        wait;
    end process stimulus_proc;

end Behavioral;