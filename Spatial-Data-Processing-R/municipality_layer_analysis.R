library(sf)

# Declare your workspace
wks <- setwd("workspace")

# Read the municipality layer
census <- st_read("layer")
class(census)

# Show the dataframe columns
summary(census)

#################### Quick tip: Selecting elements in a vector #######################
# n <- c("María", "Carmen", "Guillermo", "Ana", "Sergio", "Lara", "Lucas")
# n[2]
# n[-2]
# n[-(2:4)]
##############################################################################

# Auxiliary function to extract a range of columns, indicating the label of the initial column, the final column and the dataframe
fun_rang <- function(x, y, df){
  df_out <- st_drop_geometry(df)
  a <- grep(x, colnames(df))
  b <- grep(y, colnames(df))
  df_out[a:b]
}

fun_rang("Ce2019M", "Ce2023T",census)


