import Map from "ol/Map";
import View from "ol/View";
import TileLayer from "ol/layer/Tile";
import WMTS from "ol/source/WMTS";
import WMTSTileGrid from "ol/tilegrid/WMTS";
import { get } from "ol/proj";

// E-map
var baseLyr1 = new TileLayer({
  source: new WMTS({
    projection: get("EPSG:5179"),
    tileGrid: new WMTSTileGrid({
      origin: [-200000.0, 4000000.0],
      matrixIds: [
        "L05",
        "L06",
        "L07",
        "L08",
        "L09",
        "L10",
        "L11",
        "L12",
        "L13",
        "L14",
        "L15",
        "L16",
        "L16",
        "L17",
        "L18"
      ],
      resolutions: [
        2088.96,
        1044.48,
        522.24,
        261.12,
        130.56,
        65.28,
        32.64,
        16.32,
        8.16,
        4.08,
        2.04,
        1.02,
        0.51,
        0.255
      ]
    }),
    layer: "korean_map",
    style: "korean",
    format: "image/png",
    matrixSet: "korean",
    url:
      "http://map.ngii.go.kr/openapi/Gettile.do?apikey=C641CDD46AC03A8A5B2DA33D7708188F",
    tileLoadFunction: function (imageTile, src) {
      src = src.replace("TileMatrix", "tilematrix");
      src = src.replace("TileRow", "tilerow");
      src = src.replace("TileCol", "tilecol");
      imageTile.getImage().src = src;
    }
  })
});

// view object
const view = new View({
  center: [960363.606552286, 1920034.9139856],
  zoom: 7,
  projection: get("EPSG:3857")
});

var LAYERS = [baseLyr1];

// Map object
new Map({
  target: "js-map",
  view: view,
  layers: LAYERS
});
