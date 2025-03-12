
open_project -reset project
set_top kernel_bicg
add_files bicg.h
add_files polybench.h
add_files bicg.c
add_files bicg.pp.0.c
add_files apatb_kernel_bicg.cpp
add_files hls_design_meta.h
add_files mapper_kernel_bicg.cpp
add_files hls_design_meta.cpp
add_files kernel_bicg_mac_muladd_12ns_11ns_11ns_22_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
