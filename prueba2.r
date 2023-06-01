file <- "Database_copy.txt"

datos <- read.table(file=file, header=TRUE)
help(plot)
plot(datos)
# head(datos, n=18) # shows the first 6 rows   

altura <- read.table(file=file, header = TRUE)
altura