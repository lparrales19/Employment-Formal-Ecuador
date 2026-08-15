# ==============================================================================
#                    PRUEBA: VALIDAR DUPLICADOS
# ==============================================================================#

source(file.path("R", "validar_datos.R"))

datos_sin_duplicados <- data.frame(
  id = c(1, 2, 3),
  edad = c(20, 25, 30),
  salario = c(500, 700, 900)
)

datos_con_duplicados <- data.frame(
  id = c(1, 2, 2),
  edad = c(20, 25, 25),
  salario = c(500, 700, 700)
)

resultado_sin_duplicados <- validar_duplicados(
  datos_sin_duplicados
)

resultado_con_duplicados <- validar_duplicados(
  datos_con_duplicados
)

print(resultado_sin_duplicados)

print(resultado_con_duplicados)
