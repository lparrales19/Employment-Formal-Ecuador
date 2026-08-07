# ==============================================================================
#                    PRUEBA: CREAR DIRECTORIO
# ==============================================================================#

source(file.path("R", "utilidades.R"))

ruta_prueba <- file.path("tests", "directorio_prueba")

resultado <- crear_directorio(ruta_prueba)

print(resultado)

print(dir.exists(ruta_prueba))

resultado_existente <- crear_directorio(ruta_prueba)

print(resultado_existente)