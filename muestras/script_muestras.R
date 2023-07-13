# Generacion de muestras aleatorias ------------------------------------------
## NOTA: set.seed() antes de generar cada muestra si se quiere reproducir nuevamente

## Distribucion normal----
# rnorm(n, mean, sd) Por defecto, media = 0, sd = 1
x1 <- rnorm(1000) # 1000 muestras con media = 0 y sd = 1
x1

x2 <- rnorm(1000, 50, 10) # 1000 muestras con media = 50 y sd = 10
x2

#funcion para truncar una normal simulada en un rango minimo y maximo
rtnorm <- function(n, mean, sd, a = -Inf, b = Inf)
  {
  qnorm(runif(n, pnorm(a, mean, sd), pnorm(b, mean, sd)), mean, sd)
  }

x3 <- rtnorm(200, 50, 10, a = 25, b = 85) # 200 muestras, m = 50, sd = 10, min = 25, max = 85
x3
min(x3) # notar que, si las muestras son aleatorias, el min y max no va a conicidir exacto, naturalmente.
max(x3)
hist(x3)
