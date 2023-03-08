package com.sample.geoserver.gis.dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface GISMapper {

		public Integer regTargetPoint(Double coordX, Double coordY);
		public ArrayList<HashMap<?,?>> regTargetPointSearch();
		public Integer copyGISData(); 
}
