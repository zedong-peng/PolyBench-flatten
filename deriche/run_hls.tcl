
open_project -reset project
set_top kernel_deriche
add_files deriche.c
add_files polybench.h
add_files deriche.h
add_files apatb_kernel_deriche.cpp
add_files deriche.pp.0.c
add_files hls_design_meta.h
add_files mapper_kernel_deriche.cpp
add_files hls_design_meta.cpp
add_files kernel_deriche_mac_muladd_13ns_12ns_13s_24_4_1.h
add_files kernel_deriche_mac_muladd_13s_12ns_16s_25_4_1.h
add_files kernel_deriche_mac_muladd_13ns_12ns_12ns_24_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
