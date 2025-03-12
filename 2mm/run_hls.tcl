
open_project -reset project
set_top kernel_2mm
add_files 2mm.c
add_files polybench.h
add_files 2mm.h
add_files apatb_kernel_2mm.cpp
add_files 2mm.pp.0.c
add_files hls_design_meta.h
add_files mapper_kernel_2mm.cpp
add_files hls_design_meta.cpp
add_files kernel_2mm_mac_muladd_10ns_11ns_11ns_21_4_1.h
add_files kernel_2mm_mac_muladd_11ns_10ns_10ns_20_4_1.h
add_files kernel_2mm_mac_muladd_10ns_10ns_10ns_20_4_1.h
add_files kernel_2mm_mac_muladd_10ns_11ns_11ns_20_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
