# ==============================================================================
#                    PRUEBA: VERIFICAR ARCHIVO
# ==============================================================================#

source(file.path("R", "validar_datos.R"))

archivo_existente <- file.path(
  "tests",
  "test_verificar_archivo.R"
)

archivo_inexistente <- file.path(
  "tests",
  "archivo_que_no_existe.csv"
)

resultado_existente <- verificar_archivo(
  archivo_existente
)

resultado_inexistente <- verificar_archivo(
  archivo_inexistente
)

print(resultado_existente)

print(resultado_inexistente)