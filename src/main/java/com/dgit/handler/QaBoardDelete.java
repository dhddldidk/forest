package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.QuestionDao;
import com.dgit.util.MySqlSessionFactory;

public class QaBoardDelete implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String no = req.getParameter("key");
		SqlSession session = null;
		try{
			session = MySqlSessionFactory.openSession();
			QuestionDao dao = session.getMapper(QuestionDao.class);
			int i = dao.deleteQuestion(no);
			session.commit();
			req.setAttribute("deletf", i);
		}finally {
			session.close();

		}	
		
		return	"/WEB-INF/view/qaBoard.jsp";
	}

}
