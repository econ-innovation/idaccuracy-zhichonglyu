# 获取命令行参数
args <- commandArgs(trailingOnly = TRUE)

if (length(args) != 1) {
  stop("Usage: Rscript merge_data_script.R <aminer_path>")
}

# 设置工作目录
current_dir <- Sys.getenv("PWD")  # 获取当前工作目录
script_path <- file.path(current_dir, "merge_data_script.R")  # 拼接脚本的完整路径
setwd(dirname(script_path))  # 设置工作目录为当前脚本文件所在的目录

# Aminer 论文文件路径
#aminer_path <- "./assignment_idaccuracy/Aminer"
aminer_path <- args[1]

# 获取文件列表
file_list <- list.files(path = aminer_path, pattern = "*.csv", full.names = TRUE)

# 使用 lapply 读取所有数据
data_list <- lapply(file_list, function(file) {
  read.csv(file, header = TRUE, stringsAsFactors = FALSE)
})

# 使用 do.call 和 rbind 合并数据
merged_data <- do.call(rbind, data_list)

# 输出合并后的数据框架
print(merged_data)
