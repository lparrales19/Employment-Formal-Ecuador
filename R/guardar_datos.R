# ==============================================================================
#                            GUARDAR DATOS
# ==============================================================================#

# ------------------------------------------------------------------------------
# Función:
#   guardar_rds()
#
# Descripción:
#   Guarda un objeto de R en formato .rds.
# ------------------------------------------------------------------------------
guardar_rds <- function(datos, ruta_archivo){
  
  saveRDS(
    object = datos,
    file = ruta_archivo
  )
  
  return(file.exists(ruta_archivo))
  
}

# ------------------------------------------------------------------------------
# Función:
#   guardar_csv()
#
# Descripción:
#   Guarda un conjunto de datos en formato .csv.
# ------------------------------------------------------------------------------
guardar_csv <- function(datos, ruta_archivo){
   
}