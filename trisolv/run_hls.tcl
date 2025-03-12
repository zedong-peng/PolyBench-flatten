
open_project -reset project
set_top kernel_trisolv
add_files trisolv.c
add_files trisolv.h
add_files polybench.h
add_files mapper_kernel_trisolv.cpp
add_files hls_design_meta.h
add_files apatb_kernel_trisolv.cpp
add_files trisolv.pp.0.c
add_files hls_design_meta.cpp

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
