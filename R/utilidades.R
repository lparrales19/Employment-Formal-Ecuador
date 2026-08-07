# ==============================================================================
#                        FUNCIONES DE UTILIDAD
# ==============================================================================#

# ------------------------------------------------------------------------------
# Función:
#   crear_directorio()
#
# Descripción:
#   Crea un directorio si éste no existe.
#
# Parámetros:
#   ruta_directorio : Ruta del directorio a crear.
#
# Valor de retorno:
#   TRUE si el directorio existe o fue creado correctamente.
# ------------------------------------------------------------------------------
crear_directorio <- function(ruta_directorio){
  
  if(!dir.exists(ruta_directorio)){
    
    dir.create(
      path = ruta_directorio,
      recursive = TRUE
    )
    
  }
  
  return(dir.exists(ruta_directorio))
  
}
# ------------------------------------------------------------------------------
# Función:
#   crear_nombre_archivo()
#
# Descripción:
#   Construye un nombre de archivo siguiendo el estándar del proyecto.
#
# Parámetros:
#   prefijo   : Nombre base del archivo.
#   anio      : Año de referencia.
#   mes       : Mes de referencia.
#   extension : Extensión del archivo.
#
# Valor de retorno:
#   Nombre del archivo generado.
# ------------------------------------------------------------------------------
crear_nombre_archivo <- function(prefijo,
                                 anio,
                                 mes,
                                 extension){
  
  mes <- sprintf("%02d", as.integer(mes))
  
  nombre_archivo <- paste0(
    prefijo,
    "_",
    anio,
    "_",
    mes,
    ".",
    extension
  )
  
  return(nombre_archivo)
  
}

# ------------------------------------------------------------------------------
# Función:
#   mostrar_resumen()
#
# Descripción:
#   Presenta un resumen del proceso ejecutado.
#
# Parámetros:
#   mensaje : Texto descriptivo del proceso.
#   datos   : Objeto de datos asociado.
#
# Valor de retorno:
#   No retorna valores. Imprime un resumen en consola.
# ------------------------------------------------------------------------------
mostrar_resumen <- function(mensaje,
                            datos){
  
}

# ------------------------------------------------------------------------------
# Función:
#   cronometro()
#
# Descripción:
#   Calcula el tiempo de ejecución de un proceso.
#
# Parámetros:
#   tiempo_inicio : Instante inicial. 
#   tiempo_fin    : Instante final.
#
# Valor de retorno:
#   Tiempo transcurrido entre ambos instantes.
# ------------------------------------------------------------------------------
cronometro <- function(tiempo_inicio,
                       tiempo_fin){
  
}