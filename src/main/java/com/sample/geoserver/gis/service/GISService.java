package com.sample.geoserver.gis.service;

import org.apache.ibatis.session.SqlSession;

public interface GISService {
	public void copyGISData(SqlSession sqlSession);
}
