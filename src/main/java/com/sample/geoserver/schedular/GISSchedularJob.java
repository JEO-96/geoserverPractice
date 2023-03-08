package com.sample.geoserver.schedular;

import org.apache.ibatis.session.SqlSession;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.sample.geoserver.gis.service.GISServiceImpl;

public class GISSchedularJob extends QuartzJobBean {
	
	private GISServiceImpl gisService;

	private SqlSession sqlSession;

	public void setGisService(GISServiceImpl gisService) {
		this.gisService = gisService;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		gisService.copyGISData(sqlSession);
	}
}
