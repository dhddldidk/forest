package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionInsertAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionInsertAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String forName = req.getParameter("forName");
			String forDetail = req.getParameter("forDetail");
			String forHomepage = req.getParameter("forHomepage");
			String forPost = req.getParameter("forPost");
			String forPhone = req.getParameter("forPhone");
			String forPic = req.getParameter("forPic");
			String forLatitude = req.getParameter("forLatitude");
			String forLongitude = req.getParameter("forLongitude");
			String sel = req.getParameter("sel");
			
			SqlSession sqlSession = null;
			try {
				sqlSession = MySqlSessionFactory.openSession();
				ForestDao dao = sqlSession.getMapper(ForestDao.class);
				Forest forest = new Forest(0, forName, forDetail, forHomepage, forPost, forPhone, forPic, forLatitude, forLongitude, sel);
				int newNo = dao.insertForestIntro(forest);
				if (newNo <= 0) {
					throw new RuntimeException("forest insert fail");
				}
				
				sqlSession.commit();
				req.setAttribute("newNo", newNo);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return "/WEB-INF/view/forest_introductionListAdmin.jsp";
		}
		return null;
	}

}
