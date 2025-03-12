
open_project -reset project
set_top kernel_trmm
add_files trmm.c
add_files trmm.h
add_files polybench.h
add_files apatb_kernel_trmm.cpp
add_files mapper_kernel_trmm.cpp
add_files hls_design_meta.h
add_files trmm.pp.0.c
add_files hls_design_meta.cpp
add_files kernel_trmm_mac_muladd_21s_11ns_11ns_21_4_1.h
add_files kernel_trmm_mac_muladd_10ns_11ns_11ns_21_4_1.h
add_files kernel_trmm_mac_muladd_20s_10ns_10ns_20_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
