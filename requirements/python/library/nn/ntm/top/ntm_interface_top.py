###################################################################################
##                                            __ _      _     _                  ##
##                                           / _(_)    | |   | |                 ##
##                __ _ _   _  ___  ___ _ __ | |_ _  ___| | __| |                 ##
##               / _` | | | |/ _ \/ _ \ '_ \|  _| |/ _ \ |/ _` |                 ##
##              | (_| | |_| |  __/  __/ | | | | | |  __/ | (_| |                 ##
##               \__, |\__,_|\___|\___|_| |_|_| |_|\___|_|\__,_|                 ##
##                  | |                                                          ##
##                  |_|                                                          ##
##                                                                               ##
##                                                                               ##
##              Peripheral-NTM for MPSoC                                         ##
##              Neural Turing Machine for MPSoC                                  ##
##                                                                               ##
###################################################################################

###################################################################################
##                                                                               ##
## Copyright (c) 2020-2024 by the author(s)                                      ##
##                                                                               ##
## Permission is hereby granted, free of charge, to any person obtaining a copy  ##
## of this software and associated documentation files (the "Software"), to deal ##
## in the Software without restriction, including without limitation the rights  ##
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell     ##
## copies of the Software, and to permit persons to whom the Software is         ##
## furnished to do so, subject to the following conditions:                      ##
##                                                                               ##
## The above copyright notice and this permission notice shall be included in    ##
## all copies or substantial portions of the Software.                           ##
##                                                                               ##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    ##
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,      ##
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE   ##
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER        ##
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, ##
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN     ##
## THE SOFTWARE.                                                                 ##
##                                                                               ##
## ============================================================================= ##
## Author(s):                                                                    ##
##   Paco Reina Campo <pacoreinacampo@queenfield.tech>                           ##
##                                                                               ##
###################################################################################

import numpy as np

def ntm_interface_top(W_IN, K_IN, V_IN, D_IN, U_IN, B_IN, P_IN, Q_IN, X_IN):
  # Constants
  SIZE_R_IN, SIZE_Y_IN, SIZE_W_IN = P_IN.shape

  SIZE_T_IN, _ = X_IN.shape

  SIZE_L_IN = B_IN.shape

  SIZE_N_IN = 3;

  # Signals
  Y_OUT = np.zeros((SIZE_T_IN, SIZE_Y_IN))

  # Body
  for t in range(len(SIZE_T_IN)):
    if (t == 1):
      H_OUT = np.zeros((SIZE_L_IN, 1))

      matrix_m_int = np.zeros((SIZE_N_IN, SIZE_W_IN))

      matrix_w_int = np.zeros((SIZE_R_IN, SIZE_N_IN))
    else:
      # INTERFACE VECTOR
      matrix_operation_int = ntm_matrix_transpose(V_IN)

      XI_OUT = ntm_interface_vector(matrix_operation_int, H_OUT)

      vector_e_int = XI_OUT[SIZE_W_IN + 1:2*SIZE_W_IN]
      vector_a_int = XI_OUT[1:SIZE_W_IN]

      # INTERFACE MATRIX
      tensor_operation_int = ntm_tensor_transpose(D_IN)

      RHO_OUT = ntm_interface_matrix(tensor_operation_int, H_OUT)

      matrix_k_int = RHO_OUT[:, SIZE_N_IN + 4:SIZE_N_IN + SIZE_W_IN + 3]
      vector_beta_int = RHO_OUT[:, SIZE_N_IN + 3]
      vector_g_int = RHO_OUT[:, SIZE_N_IN + 2]
      matrix_s_int = RHO_OUT[:, 2:SIZE_N_IN + 1]
      vector_gamma_int = RHO_OUT[:, 1]

      # ERASING
      matrix_m_int = ntm_erasing(matrix_m_int, matrix_w_int, vector_e_int)

      # WRITING
      matrix_m_int = ntm_writing(matrix_m_int, matrix_w_int, vector_a_int)

      # READING
      R_OUT = ntm_reading(matrix_w_int, matrix_m_int)

      # ADDRESSING
      matrix_w_int = ntm_addressing(matrix_k_int, vector_beta_int, vector_g_int, matrix_s_int, vector_gamma_int, matrix_m_int, matrix_w_int)

      # CONTROLLER
      H_OUT = ntm_controller(W_IN, K_IN, V_IN, D_IN, U_IN, B_IN, R_OUT, XI_OUT, RHO_OUT, H_OUT, X_IN[t, :])

      # OUTPUT VECTOR
      Y_OUT[t, :] = ntm_output_vector(P_IN, R_OUT, Q_IN, H_OUT)

  return Y_OUT, R_OUT, XI_OUT, RHO_OUT, H_OUT
