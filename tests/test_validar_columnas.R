# ==============================================================================
#                    PRUEBA: VALIDAR COLUMNAS
# ==============================================================================#

source(file.path("R", "validar_datos.R"))

datos_completos <- data.frame(
  edad = c(20, 25, 30),
  sexo = c("M", "F", "M"),
  salario = c(500, 700, 900),
  provincia = c("Guayas", "Pichincha", "Guayas")
)

datos_incompletos <- data.frame(
  edad = c(20, 25, 30),
  sexo = c("M", "F", "M"),
  provincia = c("Guayas", "Pichincha", "Guayas")
)

columnas_esperadas <- c(
  "edad",
  "sexo",
  "salario"
)

resultado_completo <- validar_columnas(
  datos_completos,
  columnas_esperadas
)

resultado_incompleto <- validar_columnas(
  datos_incompletos,
  columnas_esperadas
)

print(resultado_completo)

print(resultado_incompleto)