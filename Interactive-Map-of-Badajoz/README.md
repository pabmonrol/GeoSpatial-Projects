# GeoSpatial-Projects

This project focuses on the analysis of population trends in the municipalities of the province of Badajoz using data obtained from IDEEX (Spatial Data Infrastructure of Extremadura) and INE (National Statistics Institute of Spain). The project also includes the creation of static and dynamic maps to visualize the data.

## Contents

- [Data Obtained](#data-obtained)
- [Analysis Conducted](#analysis-conducted)
- [Map Creation](#map-creation)
- [Interactive Map](#interactive-map)
- [Tools](#tools)
- [Installation Instructions](#installation-instructions)

## Data Obtained

- **Geospatial Layers**: The layers of the province of Badajoz were obtained through IDEEX.
- **Census Data**: Population data for the municipalities of Badajoz were obtained from INE.
- **Population Growth**: The population growth in the municipalities was calculated by comparing the first and last years available in the INE data.

## Map Creation

- **Static Map**: A map was created with the basic elements such as:
  - North arrow
  - Legend
  - Map title
  - Scale
- **Tool Used**: QGIS was the main tool used for creating these maps.

![](/img/Interactive-Map-of-Badajoz/static-map.png)

## Interactive Map

- An interactive map was created using **qgis2web**.
- The map allows for dynamic exploration of the data, facilitating the visualization and analysis of demographic information at the municipal level.

[CLICK HERE](https://heroic-zabaione-177ac3.netlify.app/)

## Tools

- **QGIS**: For manipulating and visualizing geospatial data.
- **qgis2web**: QGIS plugin used to generate interactive web maps.

## Installation Instructions

1. **Clone the Repository**
2. **Install QGIS**:
    - QGIS can be installed from [here](https://qgis.org/en/site/forusers/download.html).
3. **Install the qgis2web Plugin**:
    - Open QGIS.
    - Navigate to `Plugins` > `Manage and Install Plugins`.
    - Search for `qgis2web` and install it.