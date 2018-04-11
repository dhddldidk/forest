package com.dgit.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class MainForestSliderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession session = null;
		session = MySqlSessionFactory.openSession();
		ForestDao dao = session.getMapper(ForestDao.class);
		try {
			List<Forest> list = dao.selectListSGyeonggi();
			req.setAttribute("list", list);			
			System.out.println(list+"????????????????");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return "/WEB-INF/view/main.jsp";
	}

}
