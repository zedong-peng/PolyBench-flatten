
open_project -reset project
set_top kernel_durbin
add_files durbin.c
add_files polybench.h
add_files durbin.h
add_files mapper_kernel_durbin.cpp
add_files durbin.pp.0.c
add_files hls_design_meta.h
add_files hls_design_meta.cpp
add_files apatb_kernel_durbin.cpp

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
