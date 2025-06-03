onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /circuit_ffs_test/DUT/clk
add wave -noupdate /circuit_ffs_test/DUT/rst_n
add wave -noupdate /circuit_ffs_test/DUT/d
add wave -noupdate /circuit_ffs_test/DUT/q1
add wave -noupdate /circuit_ffs_test/DUT/q2_n
add wave -noupdate /circuit_ffs_test/DUT/q3
add wave -noupdate /circuit_ffs_test/DUT/q4
add wave -noupdate /circuit_ffs_test/DUT/q2
add wave -noupdate /circuit_ffs_test/DUT/q5
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {51 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 79
configure wave -valuecolwidth 187
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
WaveRestoreZoom {0 ps} {631 ps}
