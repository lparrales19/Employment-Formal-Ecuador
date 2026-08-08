# ==============================================================================
#                    PRUEBA: VALIDAR DATOS VACÍOS
# ==============================================================================#

source(file.path("R", "validar_datos.R"))

datos_validos <- data.frame(
  edad = c(20, 25, 30),
  salario = c(500, 700, 900)
)

datos_vacios <- data.frame(
  edad = numeric(0),
  salario = numeric(0)
)

datos_null <- NULL

datos_no_dataframe <- 10

resultado_validos <- validar_datos_vacios(
  datos_validos
)

resultado_vacios <- validar_datos_vacios(
  datos_vacios
)

resultado_null <- validar_datos_vacios(
  datos_null
)

resultado_no_dataframe <- validar_datos_vacios(
  datos_no_dataframe
)

print(resultado_validos)

print(resultado_vacios)

print(resultado_null)

print(resultado_no_dataframe)