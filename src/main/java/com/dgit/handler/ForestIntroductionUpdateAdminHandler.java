package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionUpdateAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionUpdateAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String sNumber = req.getParameter("forNo");
		int forNo = Integer.parseInt(sNumber);
		
		SqlSession sqlSession = null;
		
		if(req.getMethod().equalsIgnoreCase("get")){
			try{
				sqlSession = MySqlSessionFactory.openSession();
				ForestDao dao = sqlSession.getMapper(ForestDao.class);
				
				Forest forest = dao.selectForestbyForNo(forNo);
				System.out.println(forest);
				req.setAttribute("forest", forest);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}	
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
		}
		return null;
	}

}
