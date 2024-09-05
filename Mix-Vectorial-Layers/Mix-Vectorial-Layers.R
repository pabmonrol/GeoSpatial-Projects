library(sf)

# Set workspace
wks <- setwd("workspace")

# Read the towns census layer
towns <-
  st_read("layer")

# Extract the desired town
donalvaro <- towns[towns$NAMEUNIT == "Don Álvaro", ]

# Obtain the smallest rectangle that encompasses the town and assign the same CRS as the town
donalvaro_bbox <- st_as_sfc(st_bbox(donalvaro, crs = st_crs(donalvaro)))

# Display the town and the rectangle
plot(donalvaro_bbox)
plot(st_geometry(donalvaro), add = TRUE)

# Create a .gpkg project with the municipality layer
st_write(obj = donalvaro,
         dsn = "layers/donalvaro.gpkg",
         layer = "donalvaro-25830")

# Save the rectangle layer in the created project
st_write(obj = donalvaro_bbox,
         dsn = "layers/donalvaro.gpkg",
         layer = "donalvaro-bbox-25830")

# Clip the grids that encompass the census from "donalvaro_bbox"
grid25 <-
  st_read("MTN25_ETRS89_Peninsula_Baleares_Canarias.shp", options = "ENCODING=WINDOWS-1252")
grid25 <-
  st_transform(grid25, crs = st_crs(donalvaro_bbox))
donalvaro_grid25 <- st_crop(cuadricula25, donalvaro_bbox)
donalvaro_grid25$MTN25_CLAS

st_write(obj = donalvaro_grid25,
         dsn = "layers/donalvaro.gpkg",
         layer = "donalvaro-grid25")
