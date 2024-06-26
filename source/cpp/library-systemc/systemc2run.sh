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
##              QueenField                                                       ##
##              Multi-Processor System on Chip                                   ##
##                                                                               ##
###################################################################################

###################################################################################
##                                                                               ##
## Copyright (c) 2022-2025 by the author(s)                                      ##
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

rm -rf algebra/matrix/ntm_matrix_convolution.run
rm -rf algebra/matrix/ntm_matrix_differentiation.run
rm -rf algebra/matrix/ntm_matrix_integration.run
rm -rf algebra/matrix/ntm_matrix_inverse.run
rm -rf algebra/matrix/ntm_matrix_multiplication.run
rm -rf algebra/matrix/ntm_matrix_product.run
rm -rf algebra/matrix/ntm_matrix_softmax.run
rm -rf algebra/matrix/ntm_matrix_summation.run
rm -rf algebra/matrix/ntm_matrix_transpose.run
rm -rf algebra/matrix/ntm_matrix_vector_convolution.run
rm -rf algebra/matrix/ntm_matrix_vector_product.run
rm -rf algebra/matrix/ntm_transpose_vector_product.run
rm -rf algebra/scalar/ntm_scalar_multiplication.run
rm -rf algebra/scalar/ntm_scalar_summation.run
rm -rf algebra/tensor/ntm_tensor_convolution.run
rm -rf algebra/tensor/ntm_tensor_differentiation.run
rm -rf algebra/tensor/ntm_tensor_integration.run
rm -rf algebra/tensor/ntm_tensor_inverse.run
rm -rf algebra/tensor/ntm_tensor_matrix_convolution.run
rm -rf algebra/tensor/ntm_tensor_matrix_product.run
rm -rf algebra/tensor/ntm_tensor_multiplication.run
rm -rf algebra/tensor/ntm_tensor_product.run
rm -rf algebra/tensor/ntm_tensor_softmax.run
rm -rf algebra/tensor/ntm_tensor_summation.run
rm -rf algebra/tensor/ntm_tensor_transpose.run
rm -rf algebra/vector/ntm_dot_product.run
rm -rf algebra/vector/ntm_vector_convolution.run
rm -rf algebra/vector/ntm_vector_cosine_similarity.run
rm -rf algebra/vector/ntm_vector_differentiation.run
rm -rf algebra/vector/ntm_vector_integration.run
rm -rf algebra/vector/ntm_vector_module.run
rm -rf algebra/vector/ntm_vector_multiplication.run
rm -rf algebra/vector/ntm_vector_softmax.run
rm -rf algebra/vector/ntm_vector_summation.run
rm -rf arithmetic/matrix/adder/ntm_matrix_adder.run
rm -rf arithmetic/matrix/divider/ntm_matrix_divider.run
rm -rf arithmetic/matrix/multiplier/ntm_matrix_multiplier.run
rm -rf arithmetic/matrix/subtractor/ntm_matrix_subtractor.run
rm -rf arithmetic/scalar/adder/ntm_scalar_adder.run
rm -rf arithmetic/scalar/divider/ntm_scalar_divider.run
rm -rf arithmetic/scalar/multiplier/ntm_scalar_multiplier.run
rm -rf arithmetic/scalar/subtractor/ntm_scalar_subtractor.run
rm -rf arithmetic/tensor/adder/ntm_tensor_adder.run
rm -rf arithmetic/tensor/divider/ntm_tensor_divider.run
rm -rf arithmetic/tensor/multiplier/ntm_tensor_multiplier.run
rm -rf arithmetic/tensor/subtractor/ntm_tensor_subtractor.run
rm -rf arithmetic/vector/adder/ntm_vector_adder.run
rm -rf arithmetic/vector/divider/ntm_vector_divider.run
rm -rf arithmetic/vector/multiplier/ntm_vector_multiplier.run
rm -rf arithmetic/vector/subtractor/ntm_vector_subtractor.run
rm -rf math/matrix/ntm_matrix_deviation_function.run
rm -rf math/matrix/ntm_matrix_logistic_function.run
rm -rf math/matrix/ntm_matrix_mean_function.run
rm -rf math/matrix/ntm_matrix_oneplus_function.run
rm -rf math/scalar/ntm_scalar_deviation_function.run
rm -rf math/scalar/ntm_scalar_logistic_function.run
rm -rf math/scalar/ntm_scalar_mean_function.run
rm -rf math/scalar/ntm_scalar_oneplus_function.run
rm -rf math/vector/ntm_vector_deviation_function.run
rm -rf math/vector/ntm_vector_logistic_function.run
rm -rf math/vector/ntm_vector_mean_function.run
rm -rf math/vector/ntm_vector_oneplus_function.run
rm -rf nn/ann/components/ntm_masked_multi_head_attention.run
rm -rf nn/ann/components/ntm_masked_scaled_dot_product_attention.run
rm -rf nn/ann/components/ntm_multi_head_attention.run
rm -rf nn/ann/components/ntm_scaled_dot_product_attention.run
rm -rf nn/ann/controller/fnn/ntm_fnn.run
rm -rf nn/ann/controller/lstm/ntm_lstm.run
rm -rf nn/ann/functions/ntm_layer_norm.run
rm -rf nn/ann/functions/ntm_positional_encoding.run
rm -rf nn/ann/inputs/ntm_inputs_vector.run
rm -rf nn/ann/inputs/ntm_keys_vector.run
rm -rf nn/ann/inputs/ntm_queries_vector.run
rm -rf nn/ann/inputs/ntm_values_vector.run
rm -rf nn/ann/top/ntm_controller.run
rm -rf nn/ann/top/ntm_decoder.run
rm -rf nn/ann/top/ntm_encoder.run
rm -rf nn/dnc/memory/dnc_addressing.run
rm -rf nn/dnc/memory/dnc_allocation_weighting.run
rm -rf nn/dnc/memory/dnc_backward_weighting.run
rm -rf nn/dnc/memory/dnc_forward_weighting.run
rm -rf nn/dnc/memory/dnc_matrix_content_based_addressing.run
rm -rf nn/dnc/memory/dnc_memory_matrix.run
rm -rf nn/dnc/memory/dnc_memory_retention_vector.run
rm -rf nn/dnc/memory/dnc_precedence_weighting.run
rm -rf nn/dnc/memory/dnc_read_content_weighting.run
rm -rf nn/dnc/memory/dnc_read_vectors.run
rm -rf nn/dnc/memory/dnc_read_weighting.run
rm -rf nn/dnc/memory/dnc_sort_vector.run
rm -rf nn/dnc/memory/dnc_temporal_link_matrix.run
rm -rf nn/dnc/memory/dnc_usage_vector.run
rm -rf nn/dnc/memory/dnc_vector_content_based_addressing.run
rm -rf nn/dnc/memory/dnc_write_content_weighting.run
rm -rf nn/dnc/memory/dnc_write_weighting.run
rm -rf nn/dnc/top/dnc_interface_matrix.run
rm -rf nn/dnc/top/dnc_interface_top.run
rm -rf nn/dnc/top/dnc_interface_vector.run
rm -rf nn/dnc/top/dnc_output_vector.run
rm -rf nn/dnc/top/dnc_top.run
rm -rf nn/dnc/trained/dnc_trained_top.run
rm -rf nn/fnn/convolutional/ntm_controller.run
rm -rf nn/fnn/standard/ntm_controller.run
rm -rf nn/lstm/convolutional/ntm_activation_gate_vector.run
rm -rf nn/lstm/convolutional/ntm_controller.run
rm -rf nn/lstm/convolutional/ntm_forget_gate_vector.run
rm -rf nn/lstm/convolutional/ntm_hidden_gate_vector.run
rm -rf nn/lstm/convolutional/ntm_input_gate_vector.run
rm -rf nn/lstm/convolutional/ntm_output_gate_vector.run
rm -rf nn/lstm/convolutional/ntm_state_gate_vector.run
rm -rf nn/lstm/standard/ntm_activation_gate_vector.run
rm -rf nn/lstm/standard/ntm_controller.run
rm -rf nn/lstm/standard/ntm_forget_gate_vector.run
rm -rf nn/lstm/standard/ntm_hidden_gate_vector.run
rm -rf nn/lstm/standard/ntm_input_gate_vector.run
rm -rf nn/lstm/standard/ntm_output_gate_vector.run
rm -rf nn/lstm/standard/ntm_state_gate_vector.run
rm -rf nn/ntm/memory/ntm_addressing.run
rm -rf nn/ntm/memory/ntm_matrix_content_based_addressing.run
rm -rf nn/ntm/memory/ntm_vector_content_based_addressing.run
rm -rf nn/ntm/read_heads/ntm_reading.run
rm -rf nn/ntm/top/ntm_interface_matrix.run
rm -rf nn/ntm/top/ntm_interface_top.run
rm -rf nn/ntm/top/ntm_interface_vector.run
rm -rf nn/ntm/top/ntm_output_vector.run
rm -rf nn/ntm/top/ntm_top.run
rm -rf nn/ntm/trained/ntm_trained_top.run
rm -rf nn/ntm/write_heads/ntm_erasing.run
rm -rf nn/ntm/write_heads/ntm_writing.run
rm -rf state/feedback/ntm_state_matrix_feedforward.run
rm -rf state/feedback/ntm_state_matrix_input.run
rm -rf state/feedback/ntm_state_matrix_output.run
rm -rf state/feedback/ntm_state_matrix_state.run
rm -rf state/outputs/ntm_state_vector_output.run
rm -rf state/outputs/ntm_state_vector_state.run
rm -rf state/top/ntm_state_top.run
rm -rf trainer/differentiation/ntm_matrix_controller_differentiation.run
rm -rf trainer/differentiation/ntm_vector_controller_differentiation.run
rm -rf trainer/fnn/ntm_fnn_b_trainer.run
rm -rf trainer/fnn/ntm_fnn_d_trainer.run
rm -rf trainer/fnn/ntm_fnn_k_trainer.run
rm -rf trainer/fnn/ntm_fnn_trainer.run
rm -rf trainer/fnn/ntm_fnn_u_trainer.run
rm -rf trainer/fnn/ntm_fnn_v_trainer.run
rm -rf trainer/fnn/ntm_fnn_w_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_b_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_d_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_k_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_u_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_v_trainer.run
rm -rf trainer/lstm/activation/ntm_lstm_activation_w_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_b_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_d_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_k_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_u_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_v_trainer.run
rm -rf trainer/lstm/forget/ntm_lstm_forget_w_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_b_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_d_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_k_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_u_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_v_trainer.run
rm -rf trainer/lstm/input/ntm_lstm_input_w_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_b_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_d_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_k_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_u_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_v_trainer.run
rm -rf trainer/lstm/output/ntm_lstm_output_w_trainer.run

# x86-64 ISA
g++ algebra/matrix/ntm_matrix_convolution_testbench.cpp algebra/matrix/ntm_matrix_convolution_design.cpp -o algebra/matrix/ntm_matrix_convolution.run -lsystemc
g++ algebra/matrix/ntm_matrix_differentiation_testbench.cpp algebra/matrix/ntm_matrix_differentiation_design.cpp -o algebra/matrix/ntm_matrix_differentiation.run -lsystemc
g++ algebra/matrix/ntm_matrix_integration_testbench.cpp algebra/matrix/ntm_matrix_integration_design.cpp -o algebra/matrix/ntm_matrix_integration.run -lsystemc
g++ algebra/matrix/ntm_matrix_inverse_testbench.cpp algebra/matrix/ntm_matrix_inverse_design.cpp -o algebra/matrix/ntm_matrix_inverse.run -lsystemc
g++ algebra/matrix/ntm_matrix_multiplication_testbench.cpp algebra/matrix/ntm_matrix_multiplication_design.cpp -o algebra/matrix/ntm_matrix_multiplication.run -lsystemc
g++ algebra/matrix/ntm_matrix_product_testbench.cpp algebra/matrix/ntm_matrix_product_design.cpp -o algebra/matrix/ntm_matrix_product.run -lsystemc
g++ algebra/matrix/ntm_matrix_softmax_testbench.cpp algebra/matrix/ntm_matrix_softmax_design.cpp -o algebra/matrix/ntm_matrix_softmax.run -lsystemc
g++ algebra/matrix/ntm_matrix_summation_testbench.cpp algebra/matrix/ntm_matrix_summation_design.cpp -o algebra/matrix/ntm_matrix_summation.run -lsystemc
g++ algebra/matrix/ntm_matrix_transpose_testbench.cpp algebra/matrix/ntm_matrix_transpose_design.cpp -o algebra/matrix/ntm_matrix_transpose.run -lsystemc
g++ algebra/matrix/ntm_matrix_vector_convolution_testbench.cpp algebra/matrix/ntm_matrix_vector_convolution_design.cpp -o algebra/matrix/ntm_matrix_vector_convolution.run -lsystemc
g++ algebra/matrix/ntm_matrix_vector_product_testbench.cpp algebra/matrix/ntm_matrix_vector_product_design.cpp -o algebra/matrix/ntm_matrix_vector_product.run -lsystemc
g++ algebra/matrix/ntm_transpose_vector_product_testbench.cpp algebra/matrix/ntm_transpose_vector_product_design.cpp -o algebra/matrix/ntm_transpose_vector_product.run -lsystemc
g++ algebra/scalar/ntm_scalar_multiplication_testbench.cpp algebra/scalar/ntm_scalar_multiplication_design.cpp -o algebra/scalar/ntm_scalar_multiplication.run -lsystemc
g++ algebra/scalar/ntm_scalar_summation_testbench.cpp algebra/scalar/ntm_scalar_summation_design.cpp -o algebra/scalar/ntm_scalar_summation.run -lsystemc
g++ algebra/tensor/ntm_tensor_convolution_testbench.cpp algebra/tensor/ntm_tensor_convolution_design.cpp -o algebra/tensor/ntm_tensor_convolution.run -lsystemc
g++ algebra/tensor/ntm_tensor_differentiation_testbench.cpp algebra/tensor/ntm_tensor_differentiation_design.cpp -o algebra/tensor/ntm_tensor_differentiation.run -lsystemc
g++ algebra/tensor/ntm_tensor_integration_testbench.cpp algebra/tensor/ntm_tensor_integration_design.cpp -o algebra/tensor/ntm_tensor_integration.run -lsystemc
g++ algebra/tensor/ntm_tensor_inverse_testbench.cpp algebra/tensor/ntm_tensor_inverse_design.cpp -o algebra/tensor/ntm_tensor_inverse.run -lsystemc
g++ algebra/tensor/ntm_tensor_matrix_convolution_testbench.cpp algebra/tensor/ntm_tensor_matrix_convolution_design.cpp -o algebra/tensor/ntm_tensor_matrix_convolution.run -lsystemc
g++ algebra/tensor/ntm_tensor_matrix_product_testbench.cpp algebra/tensor/ntm_tensor_matrix_product_design.cpp -o algebra/tensor/ntm_tensor_matrix_product.run -lsystemc
g++ algebra/tensor/ntm_tensor_multiplication_testbench.cpp algebra/tensor/ntm_tensor_multiplication_design.cpp -o algebra/tensor/ntm_tensor_multiplication.run -lsystemc
g++ algebra/tensor/ntm_tensor_product_testbench.cpp algebra/tensor/ntm_tensor_product_design.cpp -o algebra/tensor/ntm_tensor_product.run -lsystemc
g++ algebra/tensor/ntm_tensor_softmax_testbench.cpp algebra/tensor/ntm_tensor_softmax_design.cpp -o algebra/tensor/ntm_tensor_softmax.run -lsystemc
g++ algebra/tensor/ntm_tensor_summation_testbench.cpp algebra/tensor/ntm_tensor_summation_design.cpp -o algebra/tensor/ntm_tensor_summation.run -lsystemc
g++ algebra/tensor/ntm_tensor_transpose_testbench.cpp algebra/tensor/ntm_tensor_transpose_design.cpp -o algebra/tensor/ntm_tensor_transpose.run -lsystemc
g++ algebra/vector/ntm_dot_product_testbench.cpp algebra/vector/ntm_dot_product_design.cpp -o algebra/vector/ntm_dot_product.run -lsystemc
g++ algebra/vector/ntm_vector_convolution_testbench.cpp algebra/vector/ntm_vector_convolution_design.cpp -o algebra/vector/ntm_vector_convolution.run -lsystemc
g++ algebra/vector/ntm_vector_cosine_similarity_testbench.cpp algebra/vector/ntm_vector_cosine_similarity_design.cpp -o algebra/vector/ntm_vector_cosine_similarity.run -lsystemc
g++ algebra/vector/ntm_vector_differentiation_testbench.cpp algebra/vector/ntm_vector_differentiation_design.cpp -o algebra/vector/ntm_vector_differentiation.run -lsystemc
g++ algebra/vector/ntm_vector_integration_testbench.cpp algebra/vector/ntm_vector_integration_design.cpp -o algebra/vector/ntm_vector_integration.run -lsystemc
g++ algebra/vector/ntm_vector_module_testbench.cpp algebra/vector/ntm_vector_module_design.cpp -o algebra/vector/ntm_vector_module.run -lsystemc
g++ algebra/vector/ntm_vector_multiplication_testbench.cpp algebra/vector/ntm_vector_multiplication_design.cpp -o algebra/vector/ntm_vector_multiplication.run -lsystemc
g++ algebra/vector/ntm_vector_softmax_testbench.cpp algebra/vector/ntm_vector_softmax_design.cpp -o algebra/vector/ntm_vector_softmax.run -lsystemc
g++ algebra/vector/ntm_vector_summation_testbench.cpp algebra/vector/ntm_vector_summation_design.cpp -o algebra/vector/ntm_vector_summation.run -lsystemc
g++ arithmetic/matrix/adder/ntm_matrix_adder_testbench.cpp arithmetic/matrix/adder/ntm_matrix_adder_design.cpp -o arithmetic/matrix/adder/ntm_matrix_adder.run -lsystemc
g++ arithmetic/matrix/divider/ntm_matrix_divider_testbench.cpp arithmetic/matrix/divider/ntm_matrix_divider_design.cpp -o arithmetic/matrix/divider/ntm_matrix_divider.run -lsystemc
g++ arithmetic/matrix/multiplier/ntm_matrix_multiplier_testbench.cpp arithmetic/matrix/multiplier/ntm_matrix_multiplier_design.cpp -o arithmetic/matrix/multiplier/ntm_matrix_multiplier.run -lsystemc
g++ arithmetic/matrix/subtractor/ntm_matrix_subtractor_testbench.cpp arithmetic/matrix/subtractor/ntm_matrix_subtractor_design.cpp -o arithmetic/matrix/subtractor/ntm_matrix_subtractor.run -lsystemc
g++ arithmetic/scalar/adder/ntm_scalar_adder_testbench.cpp arithmetic/scalar/adder/ntm_scalar_adder_design.cpp -o arithmetic/scalar/adder/ntm_scalar_adder.run -lsystemc
g++ arithmetic/scalar/divider/ntm_scalar_divider_testbench.cpp arithmetic/scalar/divider/ntm_scalar_divider_design.cpp -o arithmetic/scalar/divider/ntm_scalar_divider.run -lsystemc
g++ arithmetic/scalar/multiplier/ntm_scalar_multiplier_testbench.cpp arithmetic/scalar/multiplier/ntm_scalar_multiplier_design.cpp -o arithmetic/scalar/multiplier/ntm_scalar_multiplier.run -lsystemc
g++ arithmetic/scalar/subtractor/ntm_scalar_subtractor_testbench.cpp arithmetic/scalar/subtractor/ntm_scalar_subtractor_design.cpp -o arithmetic/scalar/subtractor/ntm_scalar_subtractor.run -lsystemc
g++ arithmetic/tensor/adder/ntm_tensor_adder_testbench.cpp arithmetic/tensor/adder/ntm_tensor_adder_design.cpp -o arithmetic/tensor/adder/ntm_tensor_adder.run -lsystemc
g++ arithmetic/tensor/divider/ntm_tensor_divider_testbench.cpp arithmetic/tensor/divider/ntm_tensor_divider_design.cpp -o arithmetic/tensor/divider/ntm_tensor_divider.run -lsystemc
g++ arithmetic/tensor/multiplier/ntm_tensor_multiplier_testbench.cpp arithmetic/tensor/multiplier/ntm_tensor_multiplier_design.cpp -o arithmetic/tensor/multiplier/ntm_tensor_multiplier.run -lsystemc
g++ arithmetic/tensor/subtractor/ntm_tensor_subtractor_testbench.cpp arithmetic/tensor/subtractor/ntm_tensor_subtractor_design.cpp -o arithmetic/tensor/subtractor/ntm_tensor_subtractor.run -lsystemc
g++ arithmetic/vector/adder/ntm_vector_adder_testbench.cpp arithmetic/vector/adder/ntm_vector_adder_design.cpp -o arithmetic/vector/adder/ntm_vector_adder.run -lsystemc
g++ arithmetic/vector/divider/ntm_vector_divider_testbench.cpp arithmetic/vector/divider/ntm_vector_divider_design.cpp -o arithmetic/vector/divider/ntm_vector_divider.run -lsystemc
g++ arithmetic/vector/multiplier/ntm_vector_multiplier_testbench.cpp arithmetic/vector/multiplier/ntm_vector_multiplier_design.cpp -o arithmetic/vector/multiplier/ntm_vector_multiplier.run -lsystemc
g++ arithmetic/vector/subtractor/ntm_vector_subtractor_testbench.cpp arithmetic/vector/subtractor/ntm_vector_subtractor_design.cpp -o arithmetic/vector/subtractor/ntm_vector_subtractor.run -lsystemc
g++ math/matrix/ntm_matrix_deviation_function_testbench.cpp math/matrix/ntm_matrix_deviation_function_design.cpp -o math/matrix/ntm_matrix_deviation_function.run -lsystemc
g++ math/matrix/ntm_matrix_logistic_function_testbench.cpp math/matrix/ntm_matrix_logistic_function_design.cpp -o math/matrix/ntm_matrix_logistic_function.run -lsystemc
g++ math/matrix/ntm_matrix_mean_function_testbench.cpp math/matrix/ntm_matrix_mean_function_design.cpp -o math/matrix/ntm_matrix_mean_function.run -lsystemc
g++ math/matrix/ntm_matrix_oneplus_function_testbench.cpp math/matrix/ntm_matrix_oneplus_function_design.cpp -o math/matrix/ntm_matrix_oneplus_function.run -lsystemc
g++ math/scalar/ntm_scalar_deviation_function_testbench.cpp math/scalar/ntm_scalar_deviation_function_design.cpp -o math/scalar/ntm_scalar_deviation_function.run -lsystemc
g++ math/scalar/ntm_scalar_logistic_function_testbench.cpp math/scalar/ntm_scalar_logistic_function_design.cpp -o math/scalar/ntm_scalar_logistic_function.run -lsystemc
g++ math/scalar/ntm_scalar_mean_function_testbench.cpp math/scalar/ntm_scalar_mean_function_design.cpp -o math/scalar/ntm_scalar_mean_function.run -lsystemc
g++ math/scalar/ntm_scalar_oneplus_function_testbench.cpp math/scalar/ntm_scalar_oneplus_function_design.cpp -o math/scalar/ntm_scalar_oneplus_function.run -lsystemc
g++ math/vector/ntm_vector_deviation_function_testbench.cpp math/vector/ntm_vector_deviation_function_design.cpp -o math/vector/ntm_vector_deviation_function.run -lsystemc
g++ math/vector/ntm_vector_logistic_function_testbench.cpp math/vector/ntm_vector_logistic_function_design.cpp -o math/vector/ntm_vector_logistic_function.run -lsystemc
g++ math/vector/ntm_vector_mean_function_testbench.cpp math/vector/ntm_vector_mean_function_design.cpp -o math/vector/ntm_vector_mean_function.run -lsystemc
g++ math/vector/ntm_vector_oneplus_function_testbench.cpp math/vector/ntm_vector_oneplus_function_design.cpp -o math/vector/ntm_vector_oneplus_function.run -lsystemc
g++ nn/ann/components/ntm_masked_multi_head_attention_testbench.cpp nn/ann/components/ntm_masked_multi_head_attention_design.cpp -o nn/ann/components/ntm_masked_multi_head_attention.run -lsystemc
g++ nn/ann/components/ntm_masked_scaled_dot_product_attention_testbench.cpp nn/ann/components/ntm_masked_scaled_dot_product_attention_design.cpp -o nn/ann/components/ntm_masked_scaled_dot_product_attention.run -lsystemc
g++ nn/ann/components/ntm_multi_head_attention_testbench.cpp nn/ann/components/ntm_multi_head_attention_design.cpp -o nn/ann/components/ntm_multi_head_attention.run -lsystemc
g++ nn/ann/components/ntm_scaled_dot_product_attention_testbench.cpp nn/ann/components/ntm_scaled_dot_product_attention_design.cpp -o nn/ann/components/ntm_scaled_dot_product_attention.run -lsystemc
g++ nn/ann/controller/fnn/ntm_fnn_testbench.cpp nn/ann/controller/fnn/ntm_fnn_design.cpp -o nn/ann/controller/fnn/ntm_fnn.run -lsystemc
g++ nn/ann/controller/lstm/ntm_lstm_testbench.cpp nn/ann/controller/lstm/ntm_lstm_design.cpp -o nn/ann/controller/lstm/ntm_lstm.run -lsystemc
g++ nn/ann/functions/ntm_layer_norm_testbench.cpp nn/ann/functions/ntm_layer_norm_design.cpp -o nn/ann/functions/ntm_layer_norm.run -lsystemc
g++ nn/ann/functions/ntm_positional_encoding_testbench.cpp nn/ann/functions/ntm_positional_encoding_design.cpp -o nn/ann/functions/ntm_positional_encoding.run -lsystemc
g++ nn/ann/inputs/ntm_inputs_vector_testbench.cpp nn/ann/inputs/ntm_inputs_vector_design.cpp -o nn/ann/inputs/ntm_inputs_vector.run -lsystemc
g++ nn/ann/inputs/ntm_keys_vector_testbench.cpp nn/ann/inputs/ntm_keys_vector_design.cpp -o nn/ann/inputs/ntm_keys_vector.run -lsystemc
g++ nn/ann/inputs/ntm_queries_vector_testbench.cpp nn/ann/inputs/ntm_queries_vector_design.cpp -o nn/ann/inputs/ntm_queries_vector.run -lsystemc
g++ nn/ann/inputs/ntm_values_vector_testbench.cpp nn/ann/inputs/ntm_values_vector_design.cpp -o nn/ann/inputs/ntm_values_vector.run -lsystemc
g++ nn/ann/top/ntm_controller_testbench.cpp nn/ann/top/ntm_controller_design.cpp -o nn/ann/top/ntm_controller.run -lsystemc
g++ nn/ann/top/ntm_decoder_testbench.cpp nn/ann/top/ntm_decoder_design.cpp -o nn/ann/top/ntm_decoder.run -lsystemc
g++ nn/ann/top/ntm_encoder_testbench.cpp nn/ann/top/ntm_encoder_design.cpp -o nn/ann/top/ntm_encoder.run -lsystemc
g++ nn/dnc/memory/dnc_addressing_testbench.cpp nn/dnc/memory/dnc_addressing_design.cpp -o nn/dnc/memory/dnc_addressing.run -lsystemc
g++ nn/dnc/memory/dnc_allocation_weighting_testbench.cpp nn/dnc/memory/dnc_allocation_weighting_design.cpp -o nn/dnc/memory/dnc_allocation_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_backward_weighting_testbench.cpp nn/dnc/memory/dnc_backward_weighting_design.cpp -o nn/dnc/memory/dnc_backward_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_forward_weighting_testbench.cpp nn/dnc/memory/dnc_forward_weighting_design.cpp -o nn/dnc/memory/dnc_forward_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_matrix_content_based_addressing_testbench.cpp nn/dnc/memory/dnc_matrix_content_based_addressing_design.cpp -o nn/dnc/memory/dnc_matrix_content_based_addressing.run -lsystemc
g++ nn/dnc/memory/dnc_memory_matrix_testbench.cpp nn/dnc/memory/dnc_memory_matrix_design.cpp -o nn/dnc/memory/dnc_memory_matrix.run -lsystemc
g++ nn/dnc/memory/dnc_memory_retention_vector_testbench.cpp nn/dnc/memory/dnc_memory_retention_vector_design.cpp -o nn/dnc/memory/dnc_memory_retention_vector.run -lsystemc
g++ nn/dnc/memory/dnc_precedence_weighting_testbench.cpp nn/dnc/memory/dnc_precedence_weighting_design.cpp -o nn/dnc/memory/dnc_precedence_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_read_content_weighting_testbench.cpp nn/dnc/memory/dnc_read_content_weighting_design.cpp -o nn/dnc/memory/dnc_read_content_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_read_vectors_testbench.cpp nn/dnc/memory/dnc_read_vectors_design.cpp -o nn/dnc/memory/dnc_read_vectors.run -lsystemc
g++ nn/dnc/memory/dnc_read_weighting_testbench.cpp nn/dnc/memory/dnc_read_weighting_design.cpp -o nn/dnc/memory/dnc_read_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_sort_vector_testbench.cpp nn/dnc/memory/dnc_sort_vector_design.cpp -o nn/dnc/memory/dnc_sort_vector.run -lsystemc
g++ nn/dnc/memory/dnc_temporal_link_matrix_testbench.cpp nn/dnc/memory/dnc_temporal_link_matrix_design.cpp -o nn/dnc/memory/dnc_temporal_link_matrix.run -lsystemc
g++ nn/dnc/memory/dnc_usage_vector_testbench.cpp nn/dnc/memory/dnc_usage_vector_design.cpp -o nn/dnc/memory/dnc_usage_vector.run -lsystemc
g++ nn/dnc/memory/dnc_vector_content_based_addressing_testbench.cpp nn/dnc/memory/dnc_vector_content_based_addressing_design.cpp -o nn/dnc/memory/dnc_vector_content_based_addressing.run -lsystemc
g++ nn/dnc/memory/dnc_write_content_weighting_testbench.cpp nn/dnc/memory/dnc_write_content_weighting_design.cpp -o nn/dnc/memory/dnc_write_content_weighting.run -lsystemc
g++ nn/dnc/memory/dnc_write_weighting_testbench.cpp nn/dnc/memory/dnc_write_weighting_design.cpp -o nn/dnc/memory/dnc_write_weighting.run -lsystemc
g++ nn/dnc/top/dnc_interface_matrix_testbench.cpp nn/dnc/top/dnc_interface_matrix_design.cpp -o nn/dnc/top/dnc_interface_matrix.run -lsystemc
g++ nn/dnc/top/dnc_interface_top_testbench.cpp nn/dnc/top/dnc_interface_top_design.cpp -o nn/dnc/top/dnc_interface_top.run -lsystemc
g++ nn/dnc/top/dnc_interface_vector_testbench.cpp nn/dnc/top/dnc_interface_vector_design.cpp -o nn/dnc/top/dnc_interface_vector.run -lsystemc
g++ nn/dnc/top/dnc_output_vector_testbench.cpp nn/dnc/top/dnc_output_vector_design.cpp -o nn/dnc/top/dnc_output_vector.run -lsystemc
g++ nn/dnc/top/dnc_top_testbench.cpp nn/dnc/top/dnc_top_design.cpp -o nn/dnc/top/dnc_top.run -lsystemc
g++ nn/dnc/trained/dnc_trained_top_testbench.cpp nn/dnc/trained/dnc_trained_top_design.cpp -o nn/dnc/trained/dnc_trained_top.run -lsystemc
g++ nn/fnn/convolutional/ntm_controller_testbench.cpp nn/fnn/convolutional/ntm_controller_design.cpp -o nn/fnn/convolutional/ntm_controller.run -lsystemc
g++ nn/fnn/standard/ntm_controller_testbench.cpp nn/fnn/standard/ntm_controller_design.cpp -o nn/fnn/standard/ntm_controller.run -lsystemc
g++ nn/lstm/convolutional/ntm_activation_gate_vector_testbench.cpp nn/lstm/convolutional/ntm_activation_gate_vector_design.cpp -o nn/lstm/convolutional/ntm_activation_gate_vector.run -lsystemc
g++ nn/lstm/convolutional/ntm_controller_testbench.cpp nn/lstm/convolutional/ntm_controller_design.cpp -o nn/lstm/convolutional/ntm_controller.run -lsystemc
g++ nn/lstm/convolutional/ntm_forget_gate_vector_testbench.cpp nn/lstm/convolutional/ntm_forget_gate_vector_design.cpp -o nn/lstm/convolutional/ntm_forget_gate_vector.run -lsystemc
g++ nn/lstm/convolutional/ntm_hidden_gate_vector_testbench.cpp nn/lstm/convolutional/ntm_hidden_gate_vector_design.cpp -o nn/lstm/convolutional/ntm_hidden_gate_vector.run -lsystemc
g++ nn/lstm/convolutional/ntm_input_gate_vector_testbench.cpp nn/lstm/convolutional/ntm_input_gate_vector_design.cpp -o nn/lstm/convolutional/ntm_input_gate_vector.run -lsystemc
g++ nn/lstm/convolutional/ntm_output_gate_vector_testbench.cpp nn/lstm/convolutional/ntm_output_gate_vector_design.cpp -o nn/lstm/convolutional/ntm_output_gate_vector.run -lsystemc
g++ nn/lstm/convolutional/ntm_state_gate_vector_testbench.cpp nn/lstm/convolutional/ntm_state_gate_vector_design.cpp -o nn/lstm/convolutional/ntm_state_gate_vector.run -lsystemc
g++ nn/lstm/standard/ntm_activation_gate_vector_testbench.cpp nn/lstm/standard/ntm_activation_gate_vector_design.cpp -o nn/lstm/standard/ntm_activation_gate_vector.run -lsystemc
g++ nn/lstm/standard/ntm_controller_testbench.cpp nn/lstm/standard/ntm_controller_design.cpp -o nn/lstm/standard/ntm_controller.run -lsystemc
g++ nn/lstm/standard/ntm_forget_gate_vector_testbench.cpp nn/lstm/standard/ntm_forget_gate_vector_design.cpp -o nn/lstm/standard/ntm_forget_gate_vector.run -lsystemc
g++ nn/lstm/standard/ntm_hidden_gate_vector_testbench.cpp nn/lstm/standard/ntm_hidden_gate_vector_design.cpp -o nn/lstm/standard/ntm_hidden_gate_vector.run -lsystemc
g++ nn/lstm/standard/ntm_input_gate_vector_testbench.cpp nn/lstm/standard/ntm_input_gate_vector_design.cpp -o nn/lstm/standard/ntm_input_gate_vector.run -lsystemc
g++ nn/lstm/standard/ntm_output_gate_vector_testbench.cpp nn/lstm/standard/ntm_output_gate_vector_design.cpp -o nn/lstm/standard/ntm_output_gate_vector.run -lsystemc
g++ nn/lstm/standard/ntm_state_gate_vector_testbench.cpp nn/lstm/standard/ntm_state_gate_vector_design.cpp -o nn/lstm/standard/ntm_state_gate_vector.run -lsystemc
g++ nn/ntm/memory/ntm_addressing_testbench.cpp nn/ntm/memory/ntm_addressing_design.cpp -o nn/ntm/memory/ntm_addressing.run -lsystemc
g++ nn/ntm/memory/ntm_matrix_content_based_addressing_testbench.cpp nn/ntm/memory/ntm_matrix_content_based_addressing_design.cpp -o nn/ntm/memory/ntm_matrix_content_based_addressing.run -lsystemc
g++ nn/ntm/memory/ntm_vector_content_based_addressing_testbench.cpp nn/ntm/memory/ntm_vector_content_based_addressing_design.cpp -o nn/ntm/memory/ntm_vector_content_based_addressing.run -lsystemc
g++ nn/ntm/read_heads/ntm_reading_testbench.cpp nn/ntm/read_heads/ntm_reading_design.cpp -o nn/ntm/read_heads/ntm_reading.run -lsystemc
g++ nn/ntm/top/ntm_interface_matrix_testbench.cpp nn/ntm/top/ntm_interface_matrix_design.cpp -o nn/ntm/top/ntm_interface_matrix.run -lsystemc
g++ nn/ntm/top/ntm_interface_top_testbench.cpp nn/ntm/top/ntm_interface_top_design.cpp -o nn/ntm/top/ntm_interface_top.run -lsystemc
g++ nn/ntm/top/ntm_interface_vector_testbench.cpp nn/ntm/top/ntm_interface_vector_design.cpp -o nn/ntm/top/ntm_interface_vector.run -lsystemc
g++ nn/ntm/top/ntm_output_vector_testbench.cpp nn/ntm/top/ntm_output_vector_design.cpp -o nn/ntm/top/ntm_output_vector.run -lsystemc
g++ nn/ntm/top/ntm_top_testbench.cpp nn/ntm/top/ntm_top_design.cpp -o nn/ntm/top/ntm_top.run -lsystemc
g++ nn/ntm/trained/ntm_trained_top_testbench.cpp nn/ntm/trained/ntm_trained_top_design.cpp -o nn/ntm/trained/ntm_trained_top.run -lsystemc
g++ nn/ntm/write_heads/ntm_erasing_testbench.cpp nn/ntm/write_heads/ntm_erasing_design.cpp -o nn/ntm/write_heads/ntm_erasing.run -lsystemc
g++ nn/ntm/write_heads/ntm_writing_testbench.cpp nn/ntm/write_heads/ntm_writing_design.cpp -o nn/ntm/write_heads/ntm_writing.run -lsystemc
g++ state/feedback/ntm_state_matrix_feedforward_testbench.cpp state/feedback/ntm_state_matrix_feedforward_design.cpp -o state/feedback/ntm_state_matrix_feedforward.run -lsystemc
g++ state/feedback/ntm_state_matrix_input_testbench.cpp state/feedback/ntm_state_matrix_input_design.cpp -o state/feedback/ntm_state_matrix_input.run -lsystemc
g++ state/feedback/ntm_state_matrix_output_testbench.cpp state/feedback/ntm_state_matrix_output_design.cpp -o state/feedback/ntm_state_matrix_output.run -lsystemc
g++ state/feedback/ntm_state_matrix_state_testbench.cpp state/feedback/ntm_state_matrix_state_design.cpp -o state/feedback/ntm_state_matrix_state.run -lsystemc
g++ state/outputs/ntm_state_vector_output_testbench.cpp state/outputs/ntm_state_vector_output_design.cpp -o state/outputs/ntm_state_vector_output.run -lsystemc
g++ state/outputs/ntm_state_vector_state_testbench.cpp state/outputs/ntm_state_vector_state_design.cpp -o state/outputs/ntm_state_vector_state.run -lsystemc
g++ state/top/ntm_state_top_testbench.cpp state/top/ntm_state_top_design.cpp -o state/top/ntm_state_top.run -lsystemc
g++ trainer/differentiation/ntm_matrix_controller_differentiation_testbench.cpp trainer/differentiation/ntm_matrix_controller_differentiation_design.cpp -o trainer/differentiation/ntm_matrix_controller_differentiation.run -lsystemc
g++ trainer/differentiation/ntm_vector_controller_differentiation_testbench.cpp trainer/differentiation/ntm_vector_controller_differentiation_design.cpp -o trainer/differentiation/ntm_vector_controller_differentiation.run -lsystemc
g++ trainer/fnn/ntm_fnn_b_trainer_testbench.cpp trainer/fnn/ntm_fnn_b_trainer_design.cpp -o trainer/fnn/ntm_fnn_b_trainer.run -lsystemc
g++ trainer/fnn/ntm_fnn_d_trainer_testbench.cpp trainer/fnn/ntm_fnn_d_trainer_design.cpp -o trainer/fnn/ntm_fnn_d_trainer.run -lsystemc
g++ trainer/fnn/ntm_fnn_k_trainer_testbench.cpp trainer/fnn/ntm_fnn_k_trainer_design.cpp -o trainer/fnn/ntm_fnn_k_trainer.run -lsystemc
g++ trainer/fnn/ntm_fnn_trainer_testbench.cpp trainer/fnn/ntm_fnn_trainer_design.cpp -o trainer/fnn/ntm_fnn_trainer.run -lsystemc
g++ trainer/fnn/ntm_fnn_u_trainer_testbench.cpp trainer/fnn/ntm_fnn_u_trainer_design.cpp -o trainer/fnn/ntm_fnn_u_trainer.run -lsystemc
g++ trainer/fnn/ntm_fnn_v_trainer_testbench.cpp trainer/fnn/ntm_fnn_v_trainer_design.cpp -o trainer/fnn/ntm_fnn_v_trainer.run -lsystemc
g++ trainer/fnn/ntm_fnn_w_trainer_testbench.cpp trainer/fnn/ntm_fnn_w_trainer_design.cpp -o trainer/fnn/ntm_fnn_w_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_b_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_b_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_b_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_d_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_d_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_d_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_k_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_k_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_k_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_u_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_u_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_u_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_v_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_v_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_v_trainer.run -lsystemc
g++ trainer/lstm/activation/ntm_lstm_activation_w_trainer_testbench.cpp trainer/lstm/activation/ntm_lstm_activation_w_trainer_design.cpp -o trainer/lstm/activation/ntm_lstm_activation_w_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_b_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_b_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_b_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_d_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_d_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_d_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_k_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_k_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_k_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_u_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_u_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_u_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_v_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_v_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_v_trainer.run -lsystemc
g++ trainer/lstm/forget/ntm_lstm_forget_w_trainer_testbench.cpp trainer/lstm/forget/ntm_lstm_forget_w_trainer_design.cpp -o trainer/lstm/forget/ntm_lstm_forget_w_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_b_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_b_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_b_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_d_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_d_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_d_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_k_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_k_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_k_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_u_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_u_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_u_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_v_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_v_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_v_trainer.run -lsystemc
g++ trainer/lstm/input/ntm_lstm_input_w_trainer_testbench.cpp trainer/lstm/input/ntm_lstm_input_w_trainer_design.cpp -o trainer/lstm/input/ntm_lstm_input_w_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_b_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_b_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_b_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_d_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_d_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_d_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_k_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_k_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_k_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_u_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_u_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_u_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_v_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_v_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_v_trainer.run -lsystemc
g++ trainer/lstm/output/ntm_lstm_output_w_trainer_testbench.cpp trainer/lstm/output/ntm_lstm_output_w_trainer_design.cpp -o trainer/lstm/output/ntm_lstm_output_w_trainer.run -lsystemc
