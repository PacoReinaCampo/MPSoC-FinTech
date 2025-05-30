--------------------------------------------------------------------------------
--                                            __ _      _     _               --
--                                           / _(_)    | |   | |              --
--                __ _ _   _  ___  ___ _ __ | |_ _  ___| | __| |              --
--               / _` | | | |/ _ \/ _ \ '_ \|  _| |/ _ \ |/ _` |              --
--              | (_| | |_| |  __/  __/ | | | | | |  __/ | (_| |              --
--               \__, |\__,_|\___|\___|_| |_|_| |_|\___|_|\__,_|              --
--                  | |                                                       --
--                  |_|                                                       --
--                                                                            --
--                                                                            --
--              Peripheral-NTM for MPSoC                                      --
--              Neural Turing Machine for MPSoC                               --
--                                                                            --
--------------------------------------------------------------------------------

-- Copyright (c) 2020-2021 by the author(s)
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.
--
--------------------------------------------------------------------------------
-- Author(s):
--   Paco Reina Campo <pacoreinacampo@queenfield.tech>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.accelerator_math_pkg.all;
use work.accelerator_top_pkg.all;

entity accelerator_top_stimulus is
  generic (
    -- SYSTEM-SIZE
    DATA_SIZE    : integer := 64;
    CONTROL_SIZE : integer := 64;

    X : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(64, DATA_SIZE));  -- x in 0 to X-1
    Y : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(64, DATA_SIZE));  -- y in 0 to Y-1
    N : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(64, DATA_SIZE));  -- j in 0 to N-1
    W : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(64, DATA_SIZE));  -- k in 0 to W-1
    L : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(64, DATA_SIZE));  -- l in 0 to L-1
    R : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(64, DATA_SIZE))  -- i in 0 to R-1
    );
  port (
    -- GLOBAL
    CLK : out std_logic;
    RST : out std_logic;

    -- CONTROL
    ACCELERATOR_TOP_START : out std_logic;
    ACCELERATOR_TOP_READY : in  std_logic;

    ACCELERATOR_TOP_W_IN_L_ENABLE : out std_logic;
    ACCELERATOR_TOP_W_IN_X_ENABLE : out std_logic;

    ACCELERATOR_TOP_W_OUT_L_ENABLE : in std_logic;
    ACCELERATOR_TOP_W_OUT_X_ENABLE : in std_logic;

    ACCELERATOR_TOP_K_IN_I_ENABLE : out std_logic;
    ACCELERATOR_TOP_K_IN_L_ENABLE : out std_logic;
    ACCELERATOR_TOP_K_IN_K_ENABLE : out std_logic;

    ACCELERATOR_TOP_K_OUT_I_ENABLE : in std_logic;
    ACCELERATOR_TOP_K_OUT_L_ENABLE : in std_logic;
    ACCELERATOR_TOP_K_OUT_K_ENABLE : in std_logic;

    ACCELERATOR_TOP_U_IN_L_ENABLE : out std_logic;
    ACCELERATOR_TOP_U_IN_P_ENABLE : out std_logic;

    ACCELERATOR_TOP_U_OUT_L_ENABLE : in std_logic;
    ACCELERATOR_TOP_U_OUT_P_ENABLE : in std_logic;

    ACCELERATOR_TOP_V_IN_L_ENABLE : out std_logic;
    ACCELERATOR_TOP_V_IN_S_ENABLE : out std_logic;

    ACCELERATOR_TOP_V_OUT_L_ENABLE : in std_logic;
    ACCELERATOR_TOP_V_OUT_S_ENABLE : in std_logic;

    ACCELERATOR_TOP_D_IN_I_ENABLE : out std_logic;
    ACCELERATOR_TOP_D_IN_L_ENABLE : out std_logic;
    ACCELERATOR_TOP_D_IN_M_ENABLE : out std_logic;

    ACCELERATOR_TOP_D_OUT_I_ENABLE : in std_logic;
    ACCELERATOR_TOP_D_OUT_L_ENABLE : in std_logic;
    ACCELERATOR_TOP_D_OUT_M_ENABLE : in std_logic;

    ACCELERATOR_TOP_B_IN_ENABLE : out std_logic;

    ACCELERATOR_TOP_B_OUT_ENABLE : in std_logic;

    ACCELERATOR_TOP_X_IN_ENABLE : out std_logic;

    ACCELERATOR_TOP_X_OUT_ENABLE : in std_logic;

    ACCELERATOR_TOP_P_IN_I_ENABLE : out std_logic;
    ACCELERATOR_TOP_P_IN_Y_ENABLE : out std_logic;
    ACCELERATOR_TOP_P_IN_K_ENABLE : out std_logic;

    ACCELERATOR_TOP_P_OUT_I_ENABLE : in std_logic;
    ACCELERATOR_TOP_P_OUT_Y_ENABLE : in std_logic;
    ACCELERATOR_TOP_P_OUT_K_ENABLE : in std_logic;

    ACCELERATOR_TOP_Q_IN_Y_ENABLE : out std_logic;
    ACCELERATOR_TOP_Q_IN_L_ENABLE : out std_logic;

    ACCELERATOR_TOP_Q_OUT_Y_ENABLE : in std_logic;
    ACCELERATOR_TOP_Q_OUT_L_ENABLE : in std_logic;

    ACCELERATOR_TOP_Y_OUT_ENABLE : in std_logic;

    -- DATA
    ACCELERATOR_TOP_SIZE_X_IN : out std_logic_vector(CONTROL_SIZE-1 downto 0);
    ACCELERATOR_TOP_SIZE_Y_IN : out std_logic_vector(CONTROL_SIZE-1 downto 0);
    ACCELERATOR_TOP_SIZE_N_IN : out std_logic_vector(CONTROL_SIZE-1 downto 0);
    ACCELERATOR_TOP_SIZE_W_IN : out std_logic_vector(CONTROL_SIZE-1 downto 0);
    ACCELERATOR_TOP_SIZE_L_IN : out std_logic_vector(CONTROL_SIZE-1 downto 0);
    ACCELERATOR_TOP_SIZE_R_IN : out std_logic_vector(CONTROL_SIZE-1 downto 0);

    ACCELERATOR_TOP_W_IN : out std_logic_vector(DATA_SIZE-1 downto 0);
    ACCELERATOR_TOP_K_IN : out std_logic_vector(DATA_SIZE-1 downto 0);
    ACCELERATOR_TOP_U_IN : out std_logic_vector(DATA_SIZE-1 downto 0);
    ACCELERATOR_TOP_V_IN : out std_logic_vector(DATA_SIZE-1 downto 0);
    ACCELERATOR_TOP_D_IN : out std_logic_vector(DATA_SIZE-1 downto 0);
    ACCELERATOR_TOP_B_IN : out std_logic_vector(DATA_SIZE-1 downto 0);

    ACCELERATOR_TOP_X_IN : out std_logic_vector(DATA_SIZE-1 downto 0);

    ACCELERATOR_TOP_P_IN : out std_logic_vector(DATA_SIZE-1 downto 0);
    ACCELERATOR_TOP_Q_IN : out std_logic_vector(DATA_SIZE-1 downto 0);

    ACCELERATOR_TOP_Y_OUT : in std_logic_vector(DATA_SIZE-1 downto 0)
    );
end entity;

architecture accelerator_top_stimulus_architecture of accelerator_top_stimulus is

  ------------------------------------------------------------------------------
  -- Types
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- Constants
  ------------------------------------------------------------------------------

  constant PERIOD : time := 10 ns;

  constant WAITING : time := 50 ns;
  constant WORKING : time := 1 ms;

  constant ZERO_CONTROL  : std_logic_vector(CONTROL_SIZE-1 downto 0) := std_logic_vector(to_unsigned(0, CONTROL_SIZE));
  constant ONE_CONTROL   : std_logic_vector(CONTROL_SIZE-1 downto 0) := std_logic_vector(to_unsigned(1, CONTROL_SIZE));
  constant TWO_CONTROL   : std_logic_vector(CONTROL_SIZE-1 downto 0) := std_logic_vector(to_unsigned(2, CONTROL_SIZE));
  constant THREE_CONTROL : std_logic_vector(CONTROL_SIZE-1 downto 0) := std_logic_vector(to_unsigned(3, CONTROL_SIZE));

  constant ZERO_DATA  : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(0, DATA_SIZE));
  constant ONE_DATA   : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(1, DATA_SIZE));
  constant TWO_DATA   : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(2, DATA_SIZE));
  constant THREE_DATA : std_logic_vector(DATA_SIZE-1 downto 0) := std_logic_vector(to_unsigned(3, DATA_SIZE));

  constant FULL  : std_logic_vector(DATA_SIZE-1 downto 0) := (others => '1');
  constant EMPTY : std_logic_vector(DATA_SIZE-1 downto 0) := (others => '0');

  constant EULER : std_logic_vector(DATA_SIZE-1 downto 0) := (others => '0');

  ------------------------------------------------------------------------------
  -- Signals
  ------------------------------------------------------------------------------

  -- GLOBAL
  signal clk_int : std_logic;
  signal rst_int : std_logic;

  -- CONTROL
  signal start_int : std_logic;

begin

  ------------------------------------------------------------------------------
  -- Body
  ------------------------------------------------------------------------------

  -- clk generation
  clk_process : process
  begin
    clk_int <= '1';
    wait for PERIOD/2;

    clk_int <= '0';
    wait for PERIOD/2;
  end process;

  -- rst generation
  rst_process : process
  begin
    rst_int <= '0';
    wait for WAITING;

    rst_int <= '1';
    wait for WORKING;
  end process;

  -- start generation
  start_process : process
  begin
    start_int <= '0';
    wait for WAITING;

    start_int <= '1';
    wait for PERIOD;

    start_int <= '0';
    wait for WORKING;
  end process;

  -- FUNCTIONALITY
  ACCELERATOR_TOP_START <= start_int;

  ------------------------------------------------------------------------------
  -- STIMULUS
  ------------------------------------------------------------------------------

  main_test : process
  begin

    if (STIMULUS_ACCELERATOR_TOP_TEST) then

      -------------------------------------------------------------------
      MONITOR_TEST <= "STIMULUS_NTM_TOP_TEST                   ";
      -------------------------------------------------------------------

      -------------------------------------------------------------------
      MONITOR_CASE <= "STIMULUS_NTM_TOP_CASE_0                 ";
      -------------------------------------------------------------------

      if (STIMULUS_ACCELERATOR_TOP_CASE_0) then
        ACCELERATOR_TOP_SIZE_X_IN <= EMPTY;
        ACCELERATOR_TOP_SIZE_Y_IN <= EMPTY;
        ACCELERATOR_TOP_SIZE_N_IN <= EMPTY;
        ACCELERATOR_TOP_SIZE_W_IN <= EMPTY;
        ACCELERATOR_TOP_SIZE_L_IN <= EMPTY;
        ACCELERATOR_TOP_SIZE_R_IN <= EMPTY;

        ACCELERATOR_TOP_W_IN <= EMPTY;
        ACCELERATOR_TOP_K_IN <= EMPTY;
        ACCELERATOR_TOP_U_IN <= EMPTY;
        ACCELERATOR_TOP_V_IN <= EMPTY;
        ACCELERATOR_TOP_D_IN <= EMPTY;
        ACCELERATOR_TOP_B_IN <= EMPTY;

        ACCELERATOR_TOP_X_IN <= EMPTY;
      end if;

      -------------------------------------------------------------------
      MONITOR_CASE <= "STIMULUS_NTM_TOP_CASE_1                 ";
      -------------------------------------------------------------------

      if (STIMULUS_ACCELERATOR_TOP_CASE_1) then
        ACCELERATOR_TOP_SIZE_X_IN <= FULL;
        ACCELERATOR_TOP_SIZE_Y_IN <= FULL;
        ACCELERATOR_TOP_SIZE_N_IN <= FULL;
        ACCELERATOR_TOP_SIZE_W_IN <= FULL;
        ACCELERATOR_TOP_SIZE_L_IN <= FULL;
        ACCELERATOR_TOP_SIZE_R_IN <= FULL;

        ACCELERATOR_TOP_W_IN <= FULL;
        ACCELERATOR_TOP_K_IN <= FULL;
        ACCELERATOR_TOP_U_IN <= FULL;
        ACCELERATOR_TOP_V_IN <= FULL;
        ACCELERATOR_TOP_D_IN <= FULL;
        ACCELERATOR_TOP_B_IN <= FULL;

        ACCELERATOR_TOP_X_IN <= FULL;
      end if;

      wait for WORKING;

    end if;

    assert false
      report "END OF TEST"
      severity failure;

  end process main_test;

end architecture;
