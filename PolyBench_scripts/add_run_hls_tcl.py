import os

def create_tcl_file(subdir, kernel_name):
    # 定义tcl文件的内容模板
    tcl_content = '''set XPART xcu280-fsvh2892-2L-e

set PROJ "design_0"
set SOLN "solution1"
set CLKP 10

open_project -reset $PROJ

add_files "{kernel}.c {kernel}.h polybench.h polybench.c"
set_top kernel_{kernel_function}

open_solution -reset $SOLN
set_part $XPART
create_clock -period $CLKP

csynth_design

exit
'''
    # 替换模板中的{kernel}为实际的kernel名称
    kernel_name = kernel_name.replace('-', '_')
    tcl_file_content = tcl_content.format(kernel=kernel_name, kernel_function=kernel_name)
    
    # 定义tcl文件的路径
    tcl_file_path = os.path.join(subdir, 'run_hls.tcl')
    
    # 创建并写入tcl文件
    with open(tcl_file_path, 'w') as tcl_file:
        tcl_file.write(tcl_file_content)
    
    print(f"Created {tcl_file_path}")

def main():
    # 定义要遍历的根目录
    root_dir = '../PolyBench'
    
    # 遍历根目录下的所有文件夹
    for subdir, dirs, files in os.walk(root_dir):
        # 获取kernel文件夹的名称
        kernel_name = os.path.basename(subdir)
        
        # 检查是否存在{kernel}.c和{kernel}.h文件
        if f'{kernel_name}.c' in files and f'{kernel_name}.h' in files:
            create_tcl_file(subdir, kernel_name)

if __name__ == "__main__":
    main()