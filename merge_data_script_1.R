# 0 设置工作目录
current_dir <- Sys.getenv("PWD")  # 获取当前工作目录
script_path <- file.path(current_dir, "merge_data_script_1.R")  # 拼接脚本的完整路径
setwd(dirname(script_path))  # 设置工作目录为当前脚本文件所在的目录

# 1 题目一
## 1.1 获取当前工作目录下的文件列表
file_list <- list.files(path = "./assignment_idaccuracy/Aminer", pattern = "*.csv", full.names = TRUE)
print(file_list)
## 1.2 初始化一个空的数据框架
merged_data <- data.frame()
## 1.3 循环读取和合并数据
for (file in file_list) {
  current_data <- read.csv(file, header = TRUE, stringsAsFactors = FALSE)  # 读取当前文件
  merged_data <- rbind(merged_data, current_data)  # 合并数据
}
## 1.4 输出合并后的数据框架
print(merged_data)
