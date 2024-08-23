var wms_layers = [];


        var lyr_Map_0 = new ol.layer.Tile({
            'title': 'Map',
            'type': 'base',
            'opacity': 0.605000,
            
            
            source: new ol.source.XYZ({
    attributions: ' &middot; <a href="https://www.openstreetmap.org/copyright">© OpenStreetMap contributors, CC-BY-SA</a>',
                url: 'http://tile.openstreetmap.org/{z}/{x}/{y}.png'
            })
        });
var format_PopulationIncrease_1 = new ol.format.GeoJSON();
var features_PopulationIncrease_1 = format_PopulationIncrease_1.readFeatures(json_PopulationIncrease_1, 
            {dataProjection: 'EPSG:4326', featureProjection: 'EPSG:3857'});
var jsonSource_PopulationIncrease_1 = new ol.source.Vector({
    attributions: ' ',
});
jsonSource_PopulationIncrease_1.addFeatures(features_PopulationIncrease_1);
var lyr_PopulationIncrease_1 = new ol.layer.Vector({
                declutter: true,
                source:jsonSource_PopulationIncrease_1, 
                style: style_PopulationIncrease_1,
                interactive: false,
    title: 'Population Increase<br />\
    <img src="styles/legend/PopulationIncrease_1_0.png" /> -17 - -8,5<br />\
    <img src="styles/legend/PopulationIncrease_1_1.png" /> -8,5 - -3,7<br />\
    <img src="styles/legend/PopulationIncrease_1_2.png" /> -3,7 - 0,2<br />\
    <img src="styles/legend/PopulationIncrease_1_3.png" /> 0,2 - 6,5<br />\
    <img src="styles/legend/PopulationIncrease_1_4.png" /> 6,5 - 17<br />'
        });

lyr_Map_0.setVisible(true);lyr_PopulationIncrease_1.setVisible(true);
var layersList = [lyr_Map_0,lyr_PopulationIncrease_1];
lyr_PopulationIncrease_1.set('fieldAliases', {'INSPIREID': 'INSPIREID', 'COUNTRY': 'COUNTRY', 'NATLEV': 'NATLEV', 'NATLEVNAME': 'NATLEVNAME', 'NATCODE': 'NATCODE', 'NAMEUNIT': 'NAMEUNIT', 'CODNUT1': 'CODNUT1', 'CODNUT2': 'CODNUT2', 'CODNUT3': 'CODNUT3', 'ZIP': 'ZIP', 'Increment': 'Increment', '%_Incr': '%_Incr', 'Municipio': 'Municipio', 'Ce2023T': 'Ce2023T', 'Ce2023H': 'Ce2023H', 'Ce2023M': 'Ce2023M', 'Ce2022T': 'Ce2022T', 'Ce2022H': 'Ce2022H', 'Ce2022M': 'Ce2022M', 'Ce2021T': 'Ce2021T', 'Ce2021H': 'Ce2021H', 'Ce2021M': 'Ce2021M', 'Ce2020T': 'Ce2020T', 'Ce2020H': 'Ce2020H', 'Ce2020M': 'Ce2020M', 'Ce2019T': 'Ce2019T', 'Ce2019H': 'Ce2019H', 'Ce2019M': 'Ce2019M', 'Ce2018T': 'Ce2018T', 'Ce2018H': 'Ce2018H', 'Ce2018M': 'Ce2018M', });
lyr_PopulationIncrease_1.set('fieldImages', {'INSPIREID': 'TextEdit', 'COUNTRY': 'TextEdit', 'NATLEV': 'TextEdit', 'NATLEVNAME': 'TextEdit', 'NATCODE': 'TextEdit', 'NAMEUNIT': 'TextEdit', 'CODNUT1': 'TextEdit', 'CODNUT2': 'TextEdit', 'CODNUT3': 'TextEdit', 'ZIP': 'TextEdit', 'Increment': 'TextEdit', '%_Incr': 'TextEdit', 'Municipio': 'TextEdit', 'Ce2023T': 'Range', 'Ce2023H': 'Range', 'Ce2023M': 'Range', 'Ce2022T': 'Range', 'Ce2022H': 'Range', 'Ce2022M': 'Range', 'Ce2021T': 'Range', 'Ce2021H': 'Range', 'Ce2021M': 'Range', 'Ce2020T': 'Range', 'Ce2020H': 'Range', 'Ce2020M': 'Range', 'Ce2019T': 'Range', 'Ce2019H': 'Range', 'Ce2019M': 'Range', 'Ce2018T': 'Range', 'Ce2018H': 'Range', 'Ce2018M': 'Range', });
lyr_PopulationIncrease_1.set('fieldLabels', {'INSPIREID': 'no label', 'COUNTRY': 'no label', 'NATLEV': 'no label', 'NATLEVNAME': 'no label', 'NATCODE': 'no label', 'NAMEUNIT': 'no label', 'CODNUT1': 'no label', 'CODNUT2': 'no label', 'CODNUT3': 'no label', 'ZIP': 'no label', 'Increment': 'no label', '%_Incr': 'no label', 'Municipio': 'no label', 'Ce2023T': 'no label', 'Ce2023H': 'no label', 'Ce2023M': 'no label', 'Ce2022T': 'no label', 'Ce2022H': 'no label', 'Ce2022M': 'no label', 'Ce2021T': 'no label', 'Ce2021H': 'no label', 'Ce2021M': 'no label', 'Ce2020T': 'no label', 'Ce2020H': 'no label', 'Ce2020M': 'no label', 'Ce2019T': 'no label', 'Ce2019H': 'no label', 'Ce2019M': 'no label', 'Ce2018T': 'no label', 'Ce2018H': 'no label', 'Ce2018M': 'no label', });
lyr_PopulationIncrease_1.on('precompose', function(evt) {
    evt.context.globalCompositeOperation = 'normal';
});