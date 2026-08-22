# ==============================================================================
#                       PRUEBA: GUARDAR CSV
# ==============================================================================#

source(file.path("R", "guardar_datos.R"))

datos_prueba <- data.frame(
  id = c(1, 2, 3),
  edad = c(20, 25, 30),
  salario = c(500, 700, 900)
)

ruta_prueba <- file.path(
  "tests",
  "datos_prueba.csv"
)

resultado <- guardar_csv(
  datos = datos_prueba,
  ruta_archivo = ruta_prueba
)

print(resultado)

print(file.exists(ruta_prueba))

datos_recuperados <- read_csv(
  ruta_prueba,
  show_col_types = FALSE
)

print(nrow(datos_prueba) == nrow(datos_recuperados))

print(ncol(datos_prueba) == ncol(datos_recuperados))

print(identical(
  names(datos_prueba),
  names(datos_recuperados)
))

print(all(
  datos_prueba$id == datos_recuperados$id
))

print(all(
  datos_prueba$edad == datos_recuperados$edad
))

print(all(
  datos_prueba$salario == datos_recuperados$salario
))