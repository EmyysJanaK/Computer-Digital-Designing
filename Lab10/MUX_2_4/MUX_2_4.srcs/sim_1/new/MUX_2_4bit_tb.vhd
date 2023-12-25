----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 10:18:45 AM
-- Design Name: 
-- Module Name: MUX_2_4bit - Behavioral
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

entity MUX_2_4bit is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0);
        B : in STD_LOGIC_VECTOR (3 downto 0);
        Q : out STD_LOGIC_VECTOR (3 downto 0);
        S : in STD_LOGIC
    );
end MUX_2_4bit;

architecture Behavioral of MUX_2_4bit is

    signal ls_s : std_logic;
    signal asu_s : std_logic_vector (3 downto 0);
    signal immVal_s : std_logic_vector (3 downto 0);
    signal output : std_logic_vector (3 downto 0);

begin

    ls_s <= S;
    asu_s <= B;
    immVal_s <= A;

    process (ls_s, asu_s, immVal_s)
    begin
        if ls_s = '1' then
            output <= asu_s;
        else 
            output <= immVal_s;
        end if;
    end process;
        
    Q <= output;

end Behavioral;


-- Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2_4bit_tb is
end MUX_2_4bit_tb;

architecture Behavioral of MUX_2_4bit_tb is
    -- Component declaration for the DUT (Design Under Test)
    component MUX_2_4bit
        Port (
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            Q : out STD_LOGIC_VECTOR (3 downto 0);
            S : in STD_LOGIC
        );
    end component;

    -- Testbench signals
    signal A_tb, B_tb : STD_LOGIC_VECTOR (3 downto 0);
    signal S_tb : STD_LOGIC;
    signal Q_tb : STD_LOGIC_VECTOR (3 downto 0);

begin
    -- Instantiate the DUT (Design Under Test)
    dut: MUX_2_4bit
        port map (
            A => A_tb,
            B => B_tb,
            Q => Q_tb,
            S => S_tb
        );

    -- Stimulus process
    stimulus_proc: process
    begin
        -- Testcase 1: S = '0', A selected
        A_tb <= "0000";
        B_tb <= "1111";
        S_tb <= '0';
        wait for 100 ns;
        
        -- Testcase 2: S = '1', B selected
        A_tb <= "1010";
        B_tb <= "0101";
        S_tb <= '1';
        wait for 100 ns;
        
        -- Testcase 3: S = '0', A selected
        A_tb <= "0011";
        B_tb <= "1100";
        S_tb <= '0';
        wait for 100 ns;

        -- End the simulation
        wait;
    end process stimulus_proc;

end Behavioral;
