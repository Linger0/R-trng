# 读取 txt 文本文件，忽略 header，以 `#` 为分隔符号变成表格，写入 Excel 文件，写入时忽略标题行列

# 读入文本文件
mydata <- read.table("dc_shell_cmd.txt", header = FALSE, comment.char = "", sep = "#", strip.white = TRUE)

# 将数据框写入 Excel 文件
library(xlsx)
write.xlsx2(mydata, "myexcelfile.xlsx", sheetName = "Sheet1", row.names = FALSE, col.names = FALSE)

