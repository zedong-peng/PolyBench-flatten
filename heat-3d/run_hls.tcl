
open_project -reset project
set_top kernel_heat_3d
add_files heat-3d.c
add_files heat-3d.h
add_files polybench.h
add_files heat-3d.pp.0.c
add_files hls_design_meta.h
add_files apatb_kernel_heat_3d.cpp
add_files hls_design_meta.cpp
add_files mapper_kernel_heat_3d.cpp

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
