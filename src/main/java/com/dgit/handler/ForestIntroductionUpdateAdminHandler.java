package com.dgit.handler;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ForestIntroductionUpdateAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionUpdateAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		
		
		if(req.getMethod().equalsIgnoreCase("get")){
			SqlSession sqlSession = null;
			String sNumber = req.getParameter("forNo");
			int forNo = Integer.parseInt(sNumber);
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
			String sNumber = multi.getParameter("forNo");
		//	System.out.println("sNumber : "+sNumber);
			int forNo = Integer.parseInt(sNumber);
			//실제 upload된 파일이름(rename이 된 거일수도 있고, 원본일 수도 있음)
			String filename = multi.getFilesystemName("forPic");
			
		//	System.out.println(filename+"새로운파일");
			String originalFilename = multi.getOriginalFileName("forPic");
			
			
			
			
			if(update.equals("수정하기")){
				
				/*String forNumber = req.getParameter("forNo");*/
				String forName = multi.getParameter("forName");
				String forDetail = multi.getParameter("forDetail");
				String forHomepage = multi.getParameter("forHomepage");
				String forPost = multi.getParameter("forPost");
				String forPhone = multi.getParameter("forPhone");
				
				String oldPic = multi.getParameter("oldPic");
				
				
				String forLatitude = multi.getParameter("forLatitude");
				String forLongitude = multi.getParameter("forLongitude");
				String sel = multi.getParameter("sel");
				
				
				//둘 중에 하나의 파일만 올려야 할 때 두개중에 무슨 값이 들어가 있는 지 모를 때
				String realFile="";
				if(filename !=null){
					realFile=filename;
				}else if(oldPic !=null){
					realFile = oldPic;
				}
				
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
					forest.setForPic(realFile);
					forest.setForLatitude(forLatitude);
					forest.setForLongitude(forLongitude);
					forest.setdNo(sel);
					
					dao.updateForestIntro(forest);
					sqlSession.commit();
					return "/WEB-INF/view/forest_introductionUpdateAdminSuccess.jsp";
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
