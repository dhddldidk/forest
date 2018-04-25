package com.dgit.handler;

import java.io.File;
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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ForestIntroductionRoomsUpdateAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionRoomsUpdateAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		if(req.getMethod().equalsIgnoreCase("get")){
			String sNumber = req.getParameter("rNo");
			int rNo = Integer.parseInt(sNumber);
			
			SqlSession sqlSession = null;
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
			
			/*String update = req.getParameter("update");*/
			String uploadPath = req.getRealPath("css/images/mainImages");
		//	System.out.println("uploadPath = "+ uploadPath);
			
			File dir = new File(uploadPath);
			if(dir.exists() == false){
				dir.mkdirs();//파일이 없으면 만들어줌
			}
			
			int size = 1024*1024*10;//10M까지만 업로드 되도록 사이즈  설정
			SqlSession sqlSession = null;
			
				
			//upload 완료
			MultipartRequest multi = new MultipartRequest(req,//upload할 파일 정보
									uploadPath, //서버경로
									size, //한번에 업로드할 사이즈
									"utf-8", //한글파일명 깨짐 방지
									//중복된 이름이 있을 때 자동으로 이름을 바꿔줌//자동 rename처리
									new DefaultFileRenamePolicy());
			
			String update = multi.getParameter("update");
			String sNumber = multi.getParameter("rNo");
			
			int rNo = Integer.parseInt(sNumber);
			//실제 upload된 파일이름(rename이 된 거일수도 있고, 원본일 수도 있음)
			String filename = multi.getFilesystemName("rPic");
			
		//	System.out.println(filename+"새로운파일");
			String originalFilename = multi.getOriginalFileName("rPic");
			
			
			
			
			
			if(update.equals("수정하기")){
				
				String rName = multi.getParameter("rName");
				String rExplan = multi.getParameter("rExplan");
				
				String SrPrice = multi.getParameter("rPrice");
				int rPrice = Integer.parseInt(SrPrice);
				
				String SrPax = multi.getParameter("rPax");
				int rPax = Integer.parseInt(SrPax);
				
				String rPhone = multi.getParameter("rPhone");
				String oldPic = multi.getParameter("oldPic");
				String SforNo = multi.getParameter("forNo");
				int forNo = Integer.parseInt(SforNo);
				
				String SfacNo = multi.getParameter("facNo");
				int facNo = Integer.parseInt(SfacNo);
				
				
				//둘 중에 하나의 파일만 올려야 할 때 두개중에 무슨 값이 들어가 있는 지 모를 때
				String realFile="";
				if(filename !=null){
					realFile=filename;
				}else if(oldPic !=null){
					realFile = oldPic;
				}
				
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
					roomAdmin.setrPic(realFile);
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
			}else if(update.equals("삭제하기")){
				try{
					sqlSession = MySqlSessionFactory.openSession();
					RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
					
					int roomAdmin = dao.deleteRoomsAdmin(rNo);
					if (roomAdmin <= 0) {
						throw new RuntimeException("roomAdmin delete fail");
					}
					
					sqlSession.commit();
					
					
					return "/WEB-INF/view/forest_introductionRoomsDeleteAdminSuccess.jsp";
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					sqlSession.close();
				}
			}else if(update.equals("리스트보기")){
				res.sendRedirect("adminForestIntroRoomsList.do");
			}
		}
		return null;
	}

}
