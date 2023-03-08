package com.sample.geoserver.gis.service;

import java.time.LocalTime;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.sample.geoserver.gis.dao.GISMapper;

@Service
public class GISServiceImpl {
	public void copyGISData(SqlSession sqlSession) {
		LocalTime now = LocalTime.now();
        System.out.println("copyGISData call! : " + now);
		GISMapper dao = sqlSession.getMapper(GISMapper.class);
		Integer rtn = dao.copyGISData();
		System.out.println("copyGISData! " + rtn);
	}
}
