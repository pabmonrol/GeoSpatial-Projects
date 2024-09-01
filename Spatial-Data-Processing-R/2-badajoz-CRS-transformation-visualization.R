library(sf)
library(OpenStreetMap)

# Declare your workspace
wks <- setwd("workspace")

# Read the municipality layer
census <- st_read("file")
census_l <- st_read("lines_file")
class(census)
class(census_l)

# Show the dataframe columns
summary(census)
summary(census_l)

# Transform the layer CRS that allows obtaining the latitude and longitude
census_cg <- st_transform(census, 4326)
census_l_cg <- st_transform(census_l, 4326)
summary(census_cg)

# Smaller rectangle that encloses the layer
# st_bbox: el rectángulo mínimo que contiene un objeto espacial
# st_bbox(census_cg)['ymax']
# cbind: combina las dos coordenadas en una estructura de dos columnas
# as.vector: convierte la estructura de 'cbind' en un vector
up_lef <- as.vector(cbind(st_bbox(census_cg)['ymax'],
                           st_bbox(census_cg)['xmin']))
down_rig <- as.vector(cbind(st_bbox(census_cg)['ymin'],
                           st_bbox(census_cg)['xmax']))
map_osm <- openmap(up_lef, down_rig, type = "bing")

# osm(): To obtain the CRS used by OpenStreetMap
census_osm <- st_transform(census_cg, osm())
census_l_osm <- st_transform(census_l_cg, osm())

# Restore display area
graphics.off()

# Show background map
plot(map_osm)

# add: TRUE - The background is transparent
# lwd: thickness of lines
plot(st_geometry(census_osm), add = TRUE, lwd = 2, col = "blue")
plot(st_geometry(census_l_osm), add = TRUE, lwd = 2, col = "red")
