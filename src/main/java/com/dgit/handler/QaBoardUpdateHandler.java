package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.QuestionDao;
import com.dgit.model.Question;
import com.dgit.util.MySqlSessionFactory;

public class QaBoardUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			
			String no = req.getParameter("key");
			SqlSession session = null;
			
			
			
			try{
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);
				Question question = dao.selectAllQuestionLimit(new Question(Integer.parseInt(no)));
				String content = question.getqContent();
				content = content.replace("<pre>", "");
				content = content.replace("</pre>", "");
				question.setqContent(content);
				req.setAttribute("question", question);
			}
			finally {
				session.close();

			}	
			
			
			
			return "/WEB-INF/view/qaBoardUpdate.jsp";
		}
		return null;
	}

}
