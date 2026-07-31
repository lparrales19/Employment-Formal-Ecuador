# ==============================================================================#
#              ESTRUCTURA DEL EMPLEO FORMAL EN ECUADOR (2019–2025)              #
# ==============================================================================#
#
# Archivo:
#   00_configuracion.R
#
# Autor:
#   Levi Otoniel Parrales Choez
#
# Descripción:
#  Configura el entorno general del proyecto.
#  Carga las librerías necesarias, define las rutas
#  de trabajo y establece los parámetros globales
#  utilizados por los diferentes módulos del análisis.
#
# ==============================================================================#

# ==============================================================================#
#                           LIBRERÍAS                                            #
# ==============================================================================#

library(tidyverse)
library(data.table)
library(readr)
library(here)

# ==============================================================================#
#                           RUTAS                                               #
# ==============================================================================#

ruta_proyecto <- here()

# Configuración
ruta_config <- file.path(ruta_proyecto, "config")

# Datos
ruta_datos <- file.path(ruta_proyecto, "data")
ruta_datos_crudos <- file.path(ruta_data, "raw")
ruta_datos_procesados <- file.path(ruta_data, "processed")
ruta_metadatos <- file.path(ruta_data, "metadata")

# Scripts
ruta_scripts <- file.path(ruta_proyecto, "scripts")

# Resultados
ruta_resultados <- file.path(ruta_proyecto, "outputs")
ruta_figuras <- file.path(ruta_outputs, "figures")
ruta_tablas <- file.path(ruta_outputs, "tables")
ruta_modelos <- file.path(ruta_outputs, "models")
ruta_reportes <- file.path(ruta_outputs, "reports")

# Documentación
ruta_documentacion <- file.path(ruta_proyecto, "docs")

# Registros
ruta_logs <- file.path(ruta_proyecto, "logs")

# ==============================================================================#
#                    PARÁMETROS GENERALES
# ==============================================================================#

set.seed(123)

periodo_estudio <- 2019:2025

nivel_confianza <- 0.95
