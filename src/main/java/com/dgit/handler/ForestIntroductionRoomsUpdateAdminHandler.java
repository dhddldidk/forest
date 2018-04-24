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

public class ForestIntroductionRoomsUpdateAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionRoomsUpdateAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String sNumber = req.getParameter("rNo");
		int rNo = Integer.parseInt(sNumber);
		
		System.out.println(rNo);
		SqlSession sqlSession = null;
		
		if(req.getMethod().equalsIgnoreCase("get")){
			try{
				sqlSession = MySqlSessionFactory.openSession();
				
				RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
				ForestDao	daoForest = sqlSession.getMapper(ForestDao.class);
				FacilitiesDao daoFacilities = sqlSession.getMapper(FacilitiesDao.class);
				
				RoomAdmin roomAdmin = dao.selectRoomsbyrNo(rNo);
				List<Forest> forestSelectBox = daoForest.selectIntroAllForest();
				List<Facilities> facilitiesBox = daoFacilities.selectListAllFacilities();
			
				req.setAttribute("roomAdmin", roomAdmin);
				req.setAttribute("forestSelectBox", forestSelectBox);
				req.setAttribute("facilitiesBox", facilitiesBox);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}	
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
			String update = req.getParameter("update");
			
			if(update.equals("수정하기")){
				
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
				
				try{
					sqlSession = MySqlSessionFactory.openSession();
					
					RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
					RoomAdmin roomAdmin = new RoomAdmin();
					
					roomAdmin.setrNo(rNo);
					roomAdmin.setrName(rName);
					roomAdmin.setrExplan(rExplan);
					roomAdmin.setrPrice(rPrice);
					roomAdmin.setrPax(rPax);
					roomAdmin.setrPhone(rPhone);
					roomAdmin.setrPic(rPic);
					roomAdmin.setForNo(forNo);
					roomAdmin.setFacNo(facNo);
					
					dao.updateRoomsAdmin(roomAdmin);
					sqlSession.commit();
					return "/WEB-INF/view/forest_introductionRoomsUpdateAdminSuccess.jsp";
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					sqlSession.close();
				}
				res.sendRedirect("adminForestIntroRoomsList.do");
			}/*else{
				return "adminForestIntroList.do";
			}*/
		}
		return null;
	}

}
