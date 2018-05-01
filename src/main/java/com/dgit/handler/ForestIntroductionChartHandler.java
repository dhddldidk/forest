package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestChartDao;
import com.dgit.model.ForestChart;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionChartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		sqlSession = MySqlSessionFactory.openSession();
		ForestChartDao dao = sqlSession.getMapper(ForestChartDao.class);
		try {
			
			List<ForestChart> chartList = dao.selectForestByYears(new ForestChart("2018"));
			req.setAttribute("chartList", chartList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return "/WEB-INF/view/forest_introductionChartByYears.jsp";
	}

}
