library(sf)
library(readxl)

# Declare your workspace
wks <- setwd("C:/Users/ipabl/Desktop/SIG")

# Read the towns layer
census <- st_read("lineas_limite/SHP_ETRS89/recintos_municipales_inspire_peninbal_etrs89")
summary(census)

# Read the census file
census_excel <- read_excel("Poblacion.xlsx",
                col_names = TRUE,
                trim_ws = TRUE)

summary(census_excel)

# Merge the vector layer with the census data
census_merge <- merge(x = census, y = census_excel, by.x = "ZIP", by.y = "Code", all.x = TRUE)

# Remove unnecessary columns
census_merge_res <- census_merge[-c(2,3,4,5,6,8,9,10,13)]
census_merge_res

# Create a column with the population increase of the last year
census_merge_res$Increment_last_year <- census_merge_res[["Ce2023T"]]-census_merge_res[["Ce2022T"]]

# Extract towns with a positive population increase
munici_filter <- census_merge_res[census_merge_res$Increment_last_year > 0, ]['NAMEUNIT']
munici_filter

# Save modified layers
st_write(obj = census_merge, dsn = "census_merge.shp", delete_dsn = TRUE)
st_write(obj = munici_filter, dsn = "munici_filter.shp", delete_dsn = TRUE)

# Create a new column with the percentage of the increase
census_merge_res$Increment_last_year_perc <- (census_merge_res$Increment_last_year/census_merge_res[["Ce2022T"]])*100
b <- census_merge_res[census_merge_res$Increment_last_year > 0, ]
b

# Display selected labels (towns names) on the map
mun <- c("Zafra", "Badajoz", "Don Álvaro")

## Filter the layer to include only the towns in the mun vector
municipios_filtrados <- census_merge_res[census_merge_res$NAMEUNIT %in% mun, ]

## Filter each town in the mun vector
municipio_sel <- census_merge_res[census_merge_res$NAMEUNIT == mun[1],]
municipio_sel2 <- census_merge_res[census_merge_res$NAMEUNIT == mun[2],]
municipio_sel3 <- census_merge_res[census_merge_res$NAMEUNIT == mun[3],]

## Color each selected town
plot(st_geometry(census_merge_res), axes = TRUE, main = "Granada")
plot(st_geometry(municipio_sel), col = "lightgreen", add = TRUE)
plot(st_geometry(municipio_sel2), col = "orange", add = TRUE)
plot(st_geometry(municipio_sel3), col = "blue", add = TRUE)

## st_coordinates: onverts the result of st_centroid to coordinates
## st_centroid: centers the name by extracting the geometric information with st_geometry
## st_geometry: extracts the geometric information of each municipality
text(
  st_coordinates(st_centroid(st_geometry(municipios_filtrados))),
  labels = municipios_filtrados$NAMEUNIT,
  pos = 3,
  cex = 0.5
)

# Generate a choropleth map based on the Increment_last_year_perc
plot(census_merge_res[, "Increment_last_year_perc"], main = "Badajoz", key.width = lcm(1.3))




