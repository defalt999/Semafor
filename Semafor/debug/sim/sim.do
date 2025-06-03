vlib work
vmap work work


vlog  ../../hdl/semafor.v

vlog  ../hdl/ck_rst_tb.v
vlog   ../hdl/semafor_test.v
vlog   ../hdl/pieton.v



vsim  work.semafor_test
do wave.do

add log -r /*
run -all

