package com.dgit.handler;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.QuestionDao;
import com.dgit.model.Question;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QaBoardWriteResultHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("post")){
			
			HttpSession httpsession = req.getSession();
			String id = (String) httpsession.getAttribute("id");		
			
			
			/*파일업로드*/
			String uploadPath = req.getRealPath("upload");
			/*System.out.println("uploadPath = " + uploadPath);*/
			
			File dir = new File(uploadPath);
			if(dir.exists() == false){
				dir.mkdirs();
			}
			SqlSession session = null;
			int size = 1024*1024*10;//10m
			try {
				//upload 완료
				MultipartRequest multi = new MultipartRequest(req,//upload할 정보 
														uploadPath,//서버 경로
															size,//한번에 업로드할 사이즈
															"utf-8",//한글깨짐 방지
															new DefaultFileRenamePolicy());//rename처리,같은 이름의 파일이름이있으면 중복처리해줌
				String filename = multi.getFilesystemName("file1");//실제 upload된 파일이름
				String originalFilename = multi.getOriginalFileName("file1");//rename 안된 파일이름
				String title = multi.getParameter("title");
				String content = multi.getParameter("content");
				
				/*String test = multi.getParameter("test");*/
				
				/*req.setAttribute("original", originalFilename);
				req.setAttribute("filename", filename);*/
				/*req.setAttribute("test", test);*/
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);
				Date date = new Date();
				
				
				
				Question question = new Question(0, title, "<pre>"+content+"</pre>", filename, 1, 0, date, new User(id));
				
				int i = dao.insertQuestion(question);
				session.commit();
				req.setAttribute("tf", i);
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();

		}	
			return	"/WEB-INF/view/qaBoard.jsp";
		}
		return null;
	}

}
