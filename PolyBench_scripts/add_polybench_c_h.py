import os
import shutil

def add_polybench_files(root_dir, utilities_dir):
    # 定义要复制的文件
    polybench_h = os.path.join(utilities_dir, 'polybench.h')
    polybench_c = os.path.join(utilities_dir, 'polybench.c')
    
    # 遍历根目录下的所有文件夹
    for subdir, dirs, files in os.walk(root_dir):
        # 获取kernel文件夹的名称
        kernel_name = os.path.basename(subdir)
        
        # 检查是否存在{kernel}.c文件
        if f'{kernel_name}.c' in files:
            # 复制polybench.h和polybench.c到目标目录
            shutil.copy(polybench_h, subdir)
            shutil.copy(polybench_c, subdir)
            print(f"Copied polybench.h and polybench.c to {subdir}")

def main():
    # 定义要遍历的根目录和utilities目录
    root_dir = '../PolyBench'
    utilities_dir = '../PolyBench/utilities'
    
    add_polybench_files(root_dir, utilities_dir)

if __name__ == "__main__":
    main()