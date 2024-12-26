set XPART xcu280-fsvh2892-2L-e

set PROJ "design_0"
set SOLN "solution1"
set CLKP 10

open_project -reset $PROJ

add_files "bicg.c bicg.h polybench.h"
set_top kernel_bicg

open_solution -reset $SOLN
set_part $XPART
create_clock -period $CLKP

csynth_design

exit
