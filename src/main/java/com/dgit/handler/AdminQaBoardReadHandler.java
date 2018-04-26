package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.QuestionDao;
import com.dgit.model.Question;
import com.dgit.util.MySqlSessionFactory;

public class AdminQaBoardReadHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
if(req.getMethod().equalsIgnoreCase("get")){
			
			/*등록번호*/
			String no = req.getParameter("key");
		/*	HttpSession httpsession = req.getSession();
			String id = (String) httpsession.getAttribute("id");*/		
			SqlSession session = null;
			
			try{
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);
				Question q = new Question();
				q.setqNo(Integer.parseInt(no));
				dao.updateQCount(q);
				session.commit();
				Question question = dao.selectAllQuestionLimit(q);
				String content = question.getAnswer().getaContent();  
				if(content!=null){
				content = content.replace("<pre>", "");
				content = content.replace("</pre>", "");
				question.getAnswer().setaContent(content);
				}
				req.setAttribute("question", question);;
				
				
			}finally {
				session.close();

			}
			
			
			return "/WEB-INF/view/adminQaBoardRead.jsp";
		}
		return null;
	}

}
