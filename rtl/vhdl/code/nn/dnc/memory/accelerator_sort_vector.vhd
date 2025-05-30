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

use work.accelerator_arithmetic_pkg.all;
use work.accelerator_math_pkg.all;

entity accelerator_sort_vector is
  generic (
    DATA_SIZE    : integer := 64;
    CONTROL_SIZE : integer := 64
    );
  port (
    -- GLOBAL
    CLK : in std_logic;
    RST : in std_logic;

    -- CONTROL
    START : in  std_logic;
    READY : out std_logic;

    U_IN_ENABLE : in std_logic;         -- for j in 0 to N-1

    U_OUT_ENABLE : out std_logic;       -- for j in 0 to N-1

    PHI_OUT_ENABLE : out std_logic;     -- for j in 0 to N-1

    -- DATA
    SIZE_N_IN : in std_logic_vector(CONTROL_SIZE-1 downto 0);

    U_IN : in std_logic_vector(DATA_SIZE-1 downto 0);

    PHI_OUT : out std_logic_vector(DATA_SIZE-1 downto 0)
    );
end entity;

architecture accelerator_sort_vector_architecture of accelerator_sort_vector is

  ------------------------------------------------------------------------------
  -- Functionality
  ------------------------------------------------------------------------------

  -- Inputs:
  -- U_IN [N]

  -- Outputs:
  -- PHI_OUT [N]

  -- States:
  -- INPUT_N_STATE, CLEAN_IN_N_STATE

  -- OUTPUT_N_STATE, CLEAN_OUT_N_STATE

  ------------------------------------------------------------------------------
  -- Constants
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  -- Types
  ------------------------------------------------------------------------------

  -- Finite State Machine
  type sort_ctrl_fsm is (
    STARTER_STATE,                      -- STEP 0
    INPUT_STATE,                        -- STEP 1
    ENDER_STATE,                        -- STEP 3
    CLEAN_STATE,                        -- STEP 5
    OPERATION_STATE                     -- STEP 8
    );

  ------------------------------------------------------------------------------
  -- Signals
  ------------------------------------------------------------------------------

  -- Finite State Machine
  signal sort_ctrl_fsm_int : sort_ctrl_fsm;

  -- Buffer
  signal vector_in_int : vector_buffer;

  -- Control Internal
  signal index_i_loop : std_logic_vector(CONTROL_SIZE-1 downto 0);
  signal index_m_loop : std_logic_vector(CONTROL_SIZE-1 downto 0);

begin

  ------------------------------------------------------------------------------
  -- Body
  ------------------------------------------------------------------------------

  -- PHI_OUT = sort(U_IN)

  -- CONTROL
  ctrl_fsm : process(CLK, RST)
    variable vector_out_int : std_logic_vector(DATA_SIZE-1 downto 0);
  begin
    if (RST = '0') then
      -- Data Outputs
      PHI_OUT <= ZERO_DATA;

      -- Control Outputs
      READY <= '0';

      U_OUT_ENABLE <= '0';

      PHI_OUT_ENABLE <= '0';

      -- Control Internal
      index_i_loop <= ZERO_CONTROL;
      index_m_loop <= ZERO_CONTROL;

    elsif (rising_edge(CLK)) then

      case sort_ctrl_fsm_int is
        when STARTER_STATE =>           -- STEP 0
          -- Control Outputs
          READY <= '0';

          PHI_OUT_ENABLE <= '0';

          if (START = '1') then
            -- Control Outputs
            U_OUT_ENABLE <= '1';

            -- Control Internal
            index_i_loop <= ZERO_CONTROL;
            index_m_loop <= ZERO_CONTROL;

            -- FSM Control
            sort_ctrl_fsm_int <= INPUT_STATE;
          else
            U_OUT_ENABLE <= '0';
          end if;

        when INPUT_STATE =>             -- STEP 2

          if (U_IN_ENABLE = '1') then
            -- Data Inputs
            vector_in_int(to_integer(unsigned(index_i_loop))) <= U_IN;

            -- FSM Control
            sort_ctrl_fsm_int <= ENDER_STATE;
          end if;

          -- Control Outputs
          U_OUT_ENABLE <= '0';

        when ENDER_STATE =>             -- STEP 4

          if (unsigned(index_i_loop) = unsigned(SIZE_N_IN)-unsigned(ONE_CONTROL)) then
            -- Control Internal
            index_i_loop <= ZERO_CONTROL;

            -- FSM Control
            sort_ctrl_fsm_int <= CLEAN_STATE;
          else
            -- Control Internal
            index_i_loop <= std_logic_vector(unsigned(index_i_loop)+unsigned(ONE_CONTROL));

            -- Control Outputs
            U_OUT_ENABLE <= '1';

            -- FSM Control
            sort_ctrl_fsm_int <= INPUT_STATE;
          end if;

          -- Data Outputs
          PHI_OUT <= vector_in_int(to_integer(unsigned(index_i_loop)));

        when CLEAN_STATE =>             -- STEP 5

          if (unsigned(index_m_loop) = unsigned(SIZE_N_IN)-unsigned(index_i_loop)-unsigned(ONE_CONTROL)) then
            -- FSM Control
            sort_ctrl_fsm_int <= OPERATION_STATE;

            -- Control Internal
            index_m_loop <= ZERO_CONTROL;
          else
            -- Control Internal
            index_m_loop <= std_logic_vector(unsigned(index_m_loop)+unsigned(ONE_CONTROL));
          end if;

          -- Data Internal
          if (signed(vector_in_int(to_integer(unsigned(index_m_loop)))) < signed(vector_in_int(to_integer(unsigned(index_m_loop)+unsigned(ONE_CONTROL))))) then
            vector_out_int := vector_in_int(to_integer(unsigned(index_i_loop)));

            vector_in_int(to_integer(unsigned(index_m_loop))) <= vector_in_int(to_integer(unsigned(index_m_loop)+unsigned(ONE_CONTROL)));

            vector_in_int(to_integer(unsigned(index_m_loop)+unsigned(ONE_CONTROL))) <= vector_out_int;
          end if;

          -- Control Outputs
          U_OUT_ENABLE <= '0';

          PHI_OUT_ENABLE <= '0';

        when OPERATION_STATE =>         -- STEP 8

          if (unsigned(index_i_loop) = unsigned(SIZE_N_IN)-unsigned(ONE_CONTROL)) then
            -- Control Outputs
            READY <= '1';

            -- Control Internal
            index_i_loop <= ZERO_CONTROL;

            -- FSM Control
            sort_ctrl_fsm_int <= STARTER_STATE;
          else
            -- Control Internal
            index_i_loop <= std_logic_vector(unsigned(index_i_loop)+unsigned(ONE_CONTROL));

            -- FSM Control
            sort_ctrl_fsm_int <= CLEAN_STATE;
          end if;

          -- Data Outputs
          PHI_OUT <= vector_in_int(to_integer(unsigned(index_i_loop)));

          -- Control Outputs
          PHI_OUT_ENABLE <= '1';

        when others =>
          -- FSM Control
          sort_ctrl_fsm_int <= STARTER_STATE;
      end case;
    end if;
  end process;

end architecture;
