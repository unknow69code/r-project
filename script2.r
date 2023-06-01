file <- "C:/Users/rojas/Downloads/r-statistic/Database.txt"

datos <- read.table(file=file, header=TRUE)

head(datos) # shows the first 6 rows   

altura <- read.table(file=file, header = TRUE)

names(altura)

pairs(altura)

cor(altura)
regresion <- lm(altura ~ edad, data = altura)
summary(regresion)


plot(altura$edad, altura$altura, xlab='Edad', ylab='Altura')
abline(regresion)

# El coeficiente de determinación (es decir, el coeficiente de correlación al cuadrado) mide la bondad del ajuste de la recta a los datos. A partir de la salida anterior, vemos que su valor en este caso es Multiple R-squared: 0.701.
confint(regresion)

# La tabla de análisis de la varianza de los errores se obtiene con el comando anova:
anova(regresion)


residuos <- rstandard(regresion)
valores.ajustados <- fitted(regresion)
plot(valores.ajustados, residuos)


# No se observa ningún patrón especial, por lo que tanto la homocedasticidad como la linealidad resultan hipótesis razonables.

# La hipótesis de normalidad se suele comprobar mediante un QQ plot de los residuos. El siguiente código sirve para obtenerlo:

qqnorm(residuos)
qqline(residuos)
# Dado que los puntos están bastante alineados, la normalidad también parece aceptable.
