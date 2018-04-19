package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionAdminHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
		SqlSession sqlSession = null;
		sqlSession = MySqlSessionFactory.openSession();
		ForestDao dao = sqlSession.getMapper(ForestDao.class);
		
		
			
			try{
				List<Forest> introAllForest = dao.selectIntroAllForest();
				req.setAttribute("introAllForest", introAllForest);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
		
			return "/WEB-INF/view/forest_introductionAdmin.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String sel = req.getParameter("sel");
			System.out.println(sel);
			
			
			System.out.println("ddddd");
		}
		return null;
	}

}
