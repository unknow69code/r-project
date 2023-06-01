file <- "C:/Users/rojas/Downloads/r-statistic/Database.txt"
datos <- read.table(file = file, header = TRUE, sep = "\t")
head(datos) # Muestra las primeras 6 filas
altura <- datos$altura
names(datos)

pairs(datos)
cor(datos)
regresion <- lm(altura ~ edad, data = datos)
summary(regresion)

media_altura <- mean(datos$altura)
media_altura

moda <- function(x) {
  tbl <- table(x)
  moda <- names(tbl)[tbl == max(tbl)]
  return(moda)
}
moda_altura <- moda(datos$altura)
moda_altura

mediana_altura <- median(datos$altura)
mediana_altura
