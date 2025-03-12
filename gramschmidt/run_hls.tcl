
open_project -reset project
set_top kernel_gramschmidt
add_files gramschmidt.c
add_files gramschmidt.h
add_files polybench.h
add_files mapper_kernel_gramschmidt.cpp
add_files gramschmidt.pp.0.c
add_files hls_design_meta.h
add_files hls_design_meta.cpp
add_files apatb_kernel_gramschmidt.cpp

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
