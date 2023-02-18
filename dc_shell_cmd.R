### Read the table from `.txt` file with separator `#` and store it into Excel file

# assign the name of the input file to the variable file_name.
file_name <- "dc_shell_cmd.txt"

# assign the name of the output excel file to the variable out_excel_name.
out_excel_name <- "output/myexcelfile.xlsx"

# assign the name of the output csv file to the variable out_csv_name.
out_csv_name <- "output/mydata.csv"

# read the .txt file and store it in the variable input_table.
input_table <- read.table(file_name, header = FALSE, comment.char = "", sep = "#", strip.white = TRUE)

# assign the column names to the variable input_table.
names(input_table) <- c("Name", "Description")

# load the xlsx library.
library(xlsx)

# write the data in the variable input_table to the excel file.
write.xlsx2(input_table, out_excel_name, sheetName = "Sheet1", row.names = FALSE, col.names = FALSE)

# write the data in the variable input_table to the csv file.
write.table(input_table, file = out_csv_name, sep = ",", col.names = FALSE, row.names = FALSE)



