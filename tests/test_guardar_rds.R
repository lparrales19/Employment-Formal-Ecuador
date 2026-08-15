# ==============================================================================
#                       PRUEBA: GUARDAR RDS
# ==============================================================================#

source(file.path("R", "guardar_datos.R"))

datos_prueba <- data.frame(
  id = c(1, 2, 3),
  edad = c(20, 25, 30),
  salario = c(500, 700, 900)
)

ruta_prueba <- file.path(
  "tests",
  "datos_prueba.rds"
)

resultado <- guardar_rds(
  datos = datos_prueba,
  ruta_archivo = ruta_prueba
)

print(resultado)

print(file.exists(ruta_prueba))