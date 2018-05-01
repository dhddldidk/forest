package com.dgit.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestChartDao;
import com.dgit.model.ForestChart;
import com.dgit.model.ReservationChart;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionChartJSONHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		sqlSession = MySqlSessionFactory.openSession();
		ForestChartDao dao = sqlSession.getMapper(ForestChartDao.class);
		if(req.getMethod().equalsIgnoreCase("get")){
			try {
				
				String year = req.getParameter("year");
				List<ForestChart> chartList = dao.selectForestByYears(new ForestChart(year));
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(chartList);
				
				res.setContentType("application/json;charset=utf-8");
				
				PrintWriter out = res.getWriter();
				out.print(json);
				out.flush();
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
		}else if(req.getMethod().equalsIgnoreCase("post")){
			ReservationChart chartRes = dao.selectResChart();
			ObjectMapper om = new ObjectMapper();
			String json = om.writeValueAsString(chartRes);
			
			res.setContentType("application/json;charset=utf-8");
			
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		}
		
		
		return null;
	}

}
