package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.AnswerDao;
import com.dgit.dao.QuestionDao;
import com.dgit.util.MySqlSessionFactory;

public class AdminQaBoardDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			
			String no = req.getParameter("key");
			SqlSession session = null;
			try{
				session =  MySqlSessionFactory.openSession();
				AnswerDao ansDao =  session.getMapper(AnswerDao.class);
				QuestionDao qDao = session.getMapper(QuestionDao.class);
				
				int i = ansDao.deleteAnswer(Integer.parseInt(no));
				if(i>0){
					qDao.deleteAnswerQ(Integer.parseInt(no));
					session.commit();
				}
				req.setAttribute("i", i);
				
				
			}finally {
				session.close();
			}
			return "/WEB-INF/view/admin_qa.jsp";
		}
		return null;
	}

}
