
open_project -reset project
set_top kernel_cholesky
add_files polybench.h
add_files cholesky.c
add_files cholesky.h
add_files cholesky.pp.0.c
add_files hls_design_meta.h
add_files mapper_kernel_cholesky.cpp
add_files hls_design_meta.cpp
add_files apatb_kernel_cholesky.cpp

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
