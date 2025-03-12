
open_project -reset project
set_top kernel_syrk
add_files syrk.c
add_files syrk.h
add_files polybench.h
add_files mapper_kernel_syrk.cpp
add_files hls_design_meta.h
add_files hls_design_meta.cpp
add_files apatb_kernel_syrk.cpp
add_files syrk.pp.0.c
add_files kernel_syrk_mac_muladd_11ns_10ns_10ns_21_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
