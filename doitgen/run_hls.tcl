
open_project -reset project
set_top kernel_doitgen
add_files doitgen.c
add_files doitgen.h
add_files polybench.h
add_files mapper_kernel_doitgen.cpp
add_files apatb_kernel_doitgen.cpp
add_files doitgen.pp.0.c
add_files hls_design_meta.h
add_files hls_design_meta.cpp
add_files kernel_doitgen_mac_muladd_8ns_8ns_8ns_16_4_1.h

open_solution -reset "solution1"
set_part xcu280-fsvh2892-2L-e
create_clock -period 10
csynth_design
close_solution
exit
