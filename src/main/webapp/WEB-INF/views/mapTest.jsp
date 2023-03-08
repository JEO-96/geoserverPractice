<!DOCTYPE html>
<html>
  <head>
    <title>OpenLayers + GeoServer Example</title>
    <link rel="stylesheet" href="https://openlayers.org/en/v6.5.0/css/ol.css" type="text/css">
    <script src="https://openlayers.org/en/v6.5.0/build/ol.js"></script>
  </head>
  <body>
    <div id="map" style="width:100%; height:1000px;"></div>
    <script type="text/javascript">
    var style = new ol.style.Style({
    	  opacity: 0.5, // í¬ëªë ì¤ì  (0ì ìì í í¬ëª, 1ì ë¶í¬ëª)
    	  fill: new ol.style.Fill({
    	    color: 'rgba(255, 0, 0, 0.2)' // ìì ì¤ì  (RGBA ìì ê° ì¬ì©)
    	  })
    	});
    
      var map = new ol.Map({
        target: 'map',
        layers: [
          new ol.layer.Tile({
            source: new ol.source.OSM()
          }),
      
          new ol.layer.Tile({
              source: new ol.source.TileWMS({
                url: 'http://localhost:8081/geoserver/all4land/wms?service=WMS',
                params: {
                  //'LAYERS': 'all4land:te_scco_sgg_ln', // Geoserverìì ìì±í layer ì´ë¦
                  'LAYERS': 'all4land:te_scco_sgg_ln', // Geoserverìì ìì±í layer ì´ë¦
                  'TILED': true,
                  'srs': 'EPSG:5174'
                },
                serverType: 'geoserver'
              })
            }),
         new ol.layer.Tile({
             source: new ol.source.TileWMS({
               url: 'http://localhost:8081/geoserver/all4land/wms?service=WMS',
               params: {
                 'LAYERS': 'all4land:tn_grnzn_w', // Geoserverìì ìì±í layer ì´ë¦
                 'TILED': true,
               },
               serverType: 'geoserver'
             })
           }),
         new ol.layer.Tile({
             source: new ol.source.TileWMS({
               url: 'http://localhost:8081/geoserver/all4land/wms?service=WMS',
               params: {
                 'LAYERS': 'all4land:sprd_manage_busan', // Geoserverìì ìì±í layer ì´ë¦
                 'TILED': true,
               },
               serverType: 'geoserver'
             })
           }),
         new ol.layer.Tile({
             source: new ol.source.TileWMS({
               url: 'http://localhost:8081/geoserver/all4land/wms?service=WMS',
               params: {
                 'LAYERS': 'all4land:z_siums_a2sm_mgrbirdshbtt_pro', // Geoserverìì ìì±í layer ì´ë¦
                 'TILED': true,
               },
               serverType: 'geoserver'
             }),
             style: style // ì¤íì¼ ì¤ì 
           
           })  
        ],
        view: new ol.View({
          center: ol.proj.fromLonLat([126.978, 37.566]),
          zoom: 10
        })
      });
    </script>
  </body>
</html>