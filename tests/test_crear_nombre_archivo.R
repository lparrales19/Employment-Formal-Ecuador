# ==============================================================================
#                 PRUEBA: CREAR NOMBRE DE ARCHIVO
# ==============================================================================#

source(file.path("R", "utilidades.R"))

nombre_1 <- crear_nombre_archivo(
  prefijo = "empleo_formal",
  anio = 2024,
  mes = "01",
  extension = "rds"
)

print(nombre_1)

nombre_2 <- crear_nombre_archivo(
  prefijo = "empleo_formal",
  anio = 2025,
  mes = "9",
  extension = "csv"
)

print(nombre_2)