
open_project -reset project
set_top kernel_adi
add_files adi.h
add_files adi.c
add_files polybench.h
add_files hls_design_meta.h
add_files apatb_kernel_adi.cpp
add_files mapper_kernel_adi.cpp
add_files adi.pp.0.c
add_files hls_design_meta.cpp
add_files kernel_adi_mac_muladd_10ns_10ns_10ns_20_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
