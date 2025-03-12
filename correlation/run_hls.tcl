
open_project -reset project
set_top kernel_correlation
add_files correlation.c
add_files correlation.h
add_files polybench.h
add_files apatb_kernel_correlation.cpp
add_files mapper_kernel_correlation.cpp
add_files hls_design_meta.h
add_files correlation.pp.0.c
add_files hls_design_meta.cpp
add_files kernel_correlation_mac_muladd_11ns_11ns_11ns_21_4_1.h
add_files kernel_correlation_mac_muladd_12ns_11ns_11ns_21_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
