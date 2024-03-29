onerror {resume}

quietly WaveActivateNextPane {} 0

add wave -noupdate -divider {=========================================}
add wave -noupdate -divider {NTM MATRIX DIFFERENTIATION TEST}
add wave -noupdate -divider {=========================================}

add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/CLK
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/RST
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/START
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/CONTROL
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/SIZE_I_IN
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/SIZE_J_IN
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/LENGTH_I_IN
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/LENGTH_J_IN
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_IN_I_ENABLE
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_IN_J_ENABLE
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_IN
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_I_ENABLE
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_J_ENABLE
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/READY
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_OUT_I_ENABLE
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_OUT_J_ENABLE
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/DATA_OUT

add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/differentiation_ctrl_fsm_int

add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/index_i_loop
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/index_j_loop

add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/start_scalar_float_adder
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/operation_scalar_float_adder
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/data_a_in_scalar_float_adder
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/data_b_in_scalar_float_adder
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/ready_scalar_float_adder
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/data_out_scalar_float_adder
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/overflow_out_scalar_float_adder

add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/start_scalar_float_divider
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/data_a_in_scalar_float_divider
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/data_b_in_scalar_float_divider
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/ready_scalar_float_divider
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/data_out_scalar_float_divider
add wave -noupdate /accelerator_calculus_testbench/accelerator_matrix_differentiation_test/matrix_differentiation/overflow_out_scalar_float_divider

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1042309203 ps} 0} {{Cursor 2} {7446987402 ps} 0}
configure wave -namecolwidth 305
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1134027470 ps} {1150214364 ps}
