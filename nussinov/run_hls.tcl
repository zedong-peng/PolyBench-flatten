
open_project -reset project
set_top kernel_nussinov
add_files nussinov.c
add_files nussinov.h
add_files polybench.h
add_files nussinov.pp.0.c
add_files mapper_kernel_nussinov.cpp
add_files hls_design_meta.h
add_files hls_design_meta.cpp
add_files apatb_kernel_nussinov.cpp
add_files kernel_nussinov_mac_muladd_23s_12ns_13ns_23_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
