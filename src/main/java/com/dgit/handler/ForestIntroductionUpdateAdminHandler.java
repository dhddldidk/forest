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
				/*System.out.println(forest);*/
				req.setAttribute("forest", forest);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}	
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
			String update = req.getParameter("update");
			
			if(update.equals("수정하기")){
				/*String forNumber = req.getParameter("forNo");*/
				String forName = req.getParameter("forName");
				String forDetail = req.getParameter("forDetail");
				String forHomepage = req.getParameter("forHomepage");
				String forPost = req.getParameter("forPost");
				String forPhone = req.getParameter("forPhone");
				String forPic = req.getParameter("forPic");
				String forLatitude = req.getParameter("forLatitude");
				String forLongitude = req.getParameter("forLongitude");
				String sel = req.getParameter("sel");
				
				try{
					sqlSession = MySqlSessionFactory.openSession();
					
					ForestDao dao = sqlSession.getMapper(ForestDao.class);
					Forest forest = new Forest();
					
					forest.setForNo(forNo);
					forest.setForName(forName);
					forest.setForDetail(forDetail);
					forest.setForHomepage(forHomepage);
					forest.setForPost(forPost);
					forest.setForPhone(forPhone);
					forest.setForPic(forPic);
					forest.setForLatitude(forLatitude);
					forest.setForLongitude(forLongitude);
					forest.setdNo(sel);
					
					dao.updateForestIntro(forest);
					sqlSession.commit();
					
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					sqlSession.close();
				}
				res.sendRedirect("adminForestIntroList.do");
			}else if(update.equals("삭제하기")){
				try{
					sqlSession = MySqlSessionFactory.openSession();
					ForestDao dao = sqlSession.getMapper(ForestDao.class);
					
					int forest = dao.deleteForestIntroByForNo(forNo);
					if (forest <= 0) {
						throw new RuntimeException("forest delete fail");
					}
					
					sqlSession.commit();
					
					
					return "/WEB-INF/view/forest_introductionDeleteAdminSuccess.jsp";
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					sqlSession.close();
				}
			}else if(update.equals("리스트보기")){
				res.sendRedirect("adminForestIntroList.do");
			}
		}
		return null;
	}

}
