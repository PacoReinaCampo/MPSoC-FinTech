#*******************
# DESIGN COMPILATION
#*******************

do variables.do

vlib work

##################################################################################################
# model_allocation_gate_design_compilation
##################################################################################################

alias model_allocation_gate_design_compilation {
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_arithmetic_vhdl_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_math_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_accelerator_core_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_adder.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_multiplier.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_divider.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/series/scalar/model_scalar_exponentiator_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/function/scalar/model_scalar_logistic_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/dnc/write_heads/model_allocation_gate.vhd
}

##################################################################################################
# model_erase_vector_design_compilation
##################################################################################################

alias model_erase_vector_design_compilation {
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_arithmetic_vhdl_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_math_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_accelerator_core_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_adder.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_multiplier.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_divider.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/series/scalar/model_scalar_exponentiator_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/function/vector/model_vector_logistic_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/dnc/write_heads/model_erase_vector.vhd
}

##################################################################################################
# model_write_gate_design_compilation
##################################################################################################

alias model_write_gate_design_compilation {
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_arithmetic_vhdl_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_math_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_accelerator_core_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_adder.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_multiplier.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_divider.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/series/scalar/model_scalar_exponentiator_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/function/scalar/model_scalar_logistic_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/dnc/write_heads/model_write_gate.vhd
}

##################################################################################################
# model_write_key_design_compilation
##################################################################################################

alias model_write_key_design_compilation {
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_math_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_accelerator_core_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/dnc/write_heads/model_write_key.vhd
}

##################################################################################################
# model_write_strength_design_compilation
##################################################################################################

alias model_write_strength_design_compilation {
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_arithmetic_vhdl_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_math_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_accelerator_core_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_adder.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_multiplier.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/arithmetic/float/scalar/model_scalar_float_divider.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/series/scalar/model_scalar_exponentiator_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/series/scalar/model_scalar_logarithm_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/math/function/scalar/model_scalar_oneplus_function.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/dnc/write_heads/model_write_strength.vhd
}

##################################################################################################
# model_write_vector_design_compilation
##################################################################################################

alias model_write_vector_design_compilation {
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_math_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/pkg/model_accelerator_core_pkg.vhd
  vcom -2008 -reportprogress 300 -work work $design_path/dnc/write_heads/model_write_vector.vhd
}

##################################################################################################

alias d01 {
  model_allocation_gate_design_compilation
}

alias d02 {
  model_erase_vector_design_compilation
}

alias d03 {
  model_write_gate_design_compilation
}

alias d04 {
  model_write_key_design_compilation
}

alias d05 {
  model_write_strength_design_compilation
}

alias d06 {
  model_write_vector_design_compilation
}

echo "****************************************"
echo "d01 . ACCELERATOR-ALLOCATION-GATE-TEST"
echo "d02 . ACCELERATOR-ERASE-VECTOR-TEST"
echo "d03 . ACCELERATOR-WRITE-GATE-TEST"
echo "d04 . ACCELERATOR-WRITE-KEY-TEST"
echo "d05 . ACCELERATOR-WRITE-STRENGTH-TEST"
echo "d06 . ACCELERATOR-WRITE-VECTOR-TEST"
echo "****************************************"