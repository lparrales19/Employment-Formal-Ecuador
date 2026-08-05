# ==============================================================================#
#              ESTRUCTURA DEL EMPLEO FORMAL EN ECUADOR (2019–2025)              #
# ==============================================================================#
#
# Archivo:
#   importar_datos.R
#
# Autor:
#   Levi Otoniel Parrales Choez
#
# Descripción:
#   Contiene las funciones encargadas de importar archivos de datos
#   utilizados por el proyecto.
#
# ==============================================================================#

# ==============================================================================#
#                    IMPORTAR ARCHIVO CSV
# ==============================================================================#
 
importar_csv <- function(ruta_archivo) { 
  
  datos <- data.table::fread(
    input = ruta_archivo,
    encoding = "UTF-8"
  )
  
  datos
  
}

# ==============================================================================#
#                            IMPORTAR PERÍODO
# ==============================================================================#

importar_periodo <- function(vector_archivos) {
  
  lista_datos <- lapply(
    vector_archivos,
    importar_csv
  )
  
  datos <- data.table::rbindlist(
    lista_datos,
    use.names = TRUE,
    fill = TRUE
  )
  
  datos
  
}