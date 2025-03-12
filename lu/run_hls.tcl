
open_project -reset project
set_top kernel_lu
add_files lu.h
add_files polybench.h
add_files lu.c
add_files mapper_kernel_lu.cpp
add_files hls_design_meta.h
add_files apatb_kernel_lu.cpp
add_files hls_design_meta.cpp
add_files lu.pp.0.c
add_files kernel_lu_mac_muladd_11ns_11ns_12ns_22_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
