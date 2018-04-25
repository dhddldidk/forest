package com.dgit.handler;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ForestIntroductionInsertAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/forest_introductionInsertAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			SqlSession sqlSession = null;
			String uploadPath = req.getRealPath("css/images/mainImages");
		//	System.out.println("uploadPath = "+ uploadPath);
			
			File dir = new File(uploadPath);
			if(dir.exists() == false){
				dir.mkdirs();//파일이 없으면 만들어줌
			}
			
			int size = 1024*1024*10;//10M까지만 업로드 되도록 사이즈  설정
			
			
				
			//upload 완료
			MultipartRequest multi = new MultipartRequest(req,//upload할 파일 정보
									uploadPath, //서버경로
									size, //한번에 업로드할 사이즈
									"utf-8", //한글파일명 깨짐 방지
									//중복된 이름이 있을 때 자동으로 이름을 바꿔줌//자동 rename처리
									new DefaultFileRenamePolicy());
				
				
			//실제 upload된 파일이름(rename이 된 거일수도 있고, 원본일 수도 있음)
			String filename = multi.getFilesystemName("forPic");
			String originalFilename = multi.getOriginalFileName("forPic");
			
			String forName = multi.getParameter("forName");
			String forDetail = multi.getParameter("forDetail");
			String forHomepage = multi.getParameter("forHomepage");
			String forPost = multi.getParameter("forPost");
			String forPhone = multi.getParameter("forPhone");
			String forLatitude = multi.getParameter("forLatitude");
			String forLongitude = multi.getParameter("forLongitude");
			String sel = multi.getParameter("sel");
			try {
			sqlSession = MySqlSessionFactory.openSession();
			ForestDao dao = sqlSession.getMapper(ForestDao.class);
			Forest forest = new Forest(0, forName, forDetail, forHomepage, forPost, forPhone, filename, forLatitude, forLongitude, sel);
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
			return "/WEB-INF/view/forest_introductionsInsertAdminSuccess.jsp";
		}
		return null;
	}

}
