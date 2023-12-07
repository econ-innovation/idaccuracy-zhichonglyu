# 0 设置工作目录
current_dir <- Sys.getenv("PWD")  # 获取当前工作目录
script_path <- file.path(current_dir, "merge_data_script_2.R")  # 拼接脚本的完整路径
setwd(dirname(script_path))  # 设置工作目录为当前脚本文件所在的目录

# 1 题目二
# 1.1 获取当前工作目录下的文件列表
file_list <- list.files(path = "./assignment_idaccuracy/Aminer", pattern = "*.csv", full.names = TRUE)
# 1.2 使用lapply读取所有数据
data_list <- lapply(file_list, function(file) {
  read.csv(file, header = TRUE, stringsAsFactors = FALSE)
})
# 1.3 使用do.call和rbind合并数据
merged_data <- do.call(rbind, data_list)
# 1.4 输出合并后的数据框架
print(merged_data)
