package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.FacilitiesDao;
import com.dgit.dao.ForestDao;
import com.dgit.dao.RoomAdminDao;
import com.dgit.model.Facilities;
import com.dgit.model.Forest;
import com.dgit.model.RoomAdmin;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionRoomsInsertAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionRoomsInsertAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("get")){
			SqlSession sqlSession = null;
			sqlSession = MySqlSessionFactory.openSession();
			RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
			ForestDao	daoForest = sqlSession.getMapper(ForestDao.class);
			FacilitiesDao daoFacilities = sqlSession.getMapper(FacilitiesDao.class);
			
			try {
				List<RoomAdmin> roomAdminList = dao.selectRoomAllListAdmin();
				List<Forest> forestSelectBox = daoForest.selectIntroAllForest();
				List<Facilities> facilitiesBox = daoFacilities.selectListAllFacilities();
				
				System.out.println(forestSelectBox);
				
				req.setAttribute("roomAdminList", roomAdminList);
				req.setAttribute("forestSelectBox", forestSelectBox);
				req.setAttribute("facilitiesBox", facilitiesBox);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			SqlSession sqlSession = null;
			String rName = req.getParameter("rName");
			String rExplan = req.getParameter("rExplan");
			
			String SrPrice = req.getParameter("rPrice");
			int rPrice = Integer.parseInt(SrPrice);
			
			String SrPax = req.getParameter("rPax");
			int rPax = Integer.parseInt(SrPax);
			
			String rPhone = req.getParameter("rPhone");
			String rPic = req.getParameter("rPic");
			String SforNo = req.getParameter("forNo");
			int forNo = Integer.parseInt(SforNo);
			
			String SfacNo = req.getParameter("facNo");
			int facNo = Integer.parseInt(SfacNo);
			
		
			System.out.println(forNo+"이름임??"+facNo+"시설임?");
			try {
				sqlSession = MySqlSessionFactory.openSession();
				RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
				RoomAdmin roomAdmin = new RoomAdmin(rName, rPax, rPrice, rPic, rExplan, rPhone, forNo, facNo);
				
				System.out.println(roomAdmin+"휴양림 이름");
				
				int newNo = dao.insertRoomsAdmin(roomAdmin);
				if (newNo <= 0) {
					throw new RuntimeException("roomAdmin insert fail");
				}
				
				System.out.println(roomAdmin);
				sqlSession.commit();
				req.setAttribute("newNo", newNo);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			res.sendRedirect("adminForestIntroRoomsList.do");
		}
		return null;
	}

}
