# ==============================================================================
#                    PRUEBA: VALIDAR TIPOS
# ==============================================================================#

source(file.path("R", "validar_datos.R"))

datos_correctos <- data.frame(
  edad = c(20, 25, 30),
  sexo = c("M", "F", "M"),
  salario = c(500, 700, 900)
)

datos_incorrectos <- data.frame(
  edad = c("20", "25", "30"),
  sexo = c("M", "F", "M"),
  salario = c(500, 700, 900)
)

tipos_esperados <- c(
  edad = "numeric",
  sexo = "character",
  salario = "numeric"
)

resultado_correcto <- validar_tipos(
  datos_correctos,
  tipos_esperados
)

resultado_incorrecto <- validar_tipos(
  datos_incorrectos,
  tipos_esperados
)

print(resultado_correcto)

print(resultado_incorrecto)