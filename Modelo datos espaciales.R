#  Este scrip permite correr el modelo para el cual es parte del trabajo
#  “Patrones espaciales y factores socioeconómicos influyen determinantes 
#  en el envejecimiento de la población cundinamarquesa” 
#  basado en: Spatial patterns and social-economic influential factors 
#    of population aging: A global assessment from 1990 to 2010
#   https://www.sciencedirect.com/science/article/pii/S0277953620301829
###############################################################################


#     Limpiar datos anteriores, en caso de ser necesario
#rm (list = ls ()) 


###############################################################################
#            Primera parte:
#           Instalar paquetes

install.packages("pacman")
library(pacman)
install.packages("raster","rgdal", "rgeos", "tidyverse", "stringr", "sf", "ggplot2", 
                 "maptools", "ggmap", "RColorBrewer")
pacman::p_load(raster,rgdal, rgeos, tidyverse, stringr, sf, ggplot2, maptools, ggmap, RColorBrewer)


#     Gestionar el directorio   


getwd()
#setwd("C:/Users/USUARIO/Documents")

################################################################################

#   Cargar shapefile con la información geográfica de los municipios, 
#   Un shapefile es un formato sencillo y no topológico que se utiliza 
#   para almacenar la ubicación geométrica y la información de atributos 
#   de las entidades geográficas. Las entidades geográficas de un shapefile 
#  se pueden representar por medio de puntos, líneas o polígonos (áreas).

#   Cargamos el archivo y lo ploteamos 
colombia <- readShapePoly("MGN_MPIO_POLITICO.shp")
plot (colombia)
