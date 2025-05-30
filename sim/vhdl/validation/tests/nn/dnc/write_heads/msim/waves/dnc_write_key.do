onerror {resume}

quietly WaveActivateNextPane {} 0

add wave -noupdate -divider {=========================================}
add wave -noupdate -divider {NTM WRITE KEY TEST}
add wave -noupdate -divider {=========================================}

add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/CLK
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/RST
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/START
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/SIZE_W_IN
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/K_IN_ENABLE
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/K_IN
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/READY
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/K_ENABLE
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/K_OUT_ENABLE
add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/K_OUT

add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/write_key_ctrl_fsm_int

add wave -noupdate /model_write_heads_testbench/model_write_key_test/write_key/index_loop

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