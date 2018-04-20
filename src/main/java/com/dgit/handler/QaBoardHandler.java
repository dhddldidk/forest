package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.QuestionDao;
import com.dgit.dao.UserDao;
import com.dgit.model.Question;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class QaBoardHandler implements CommandHandler {
	private int pages = 1;
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			
			int pagenum = 0;
			SqlSession session = null;
			try {
				
				String pageNum = req.getParameter("pa");
				RowBounds rw = new RowBounds();
				String key = req.getParameter("key");
								
				if (pageNum != null) {
					pagenum = Integer.parseInt(pageNum);
				}
			
				if (key != null) {
					if (pagenum == pages) {
						pages = pages;
					} else if (pagenum != 0 && (pagenum % 5) == 1 && key.equals("right")) {
						pages += 5;
					} else if (key.equals("left")) {
						pages -= 5;
					}
				}
				
				if (pagenum > 0) {
					rw = new RowBounds((pagenum - 1) * 10, 10);
				} else {
					rw = new RowBounds(0, 10);
				}
				
				
				
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);	
				int boardList = dao.selectQCount();
				List<Question> que = dao.selectAllQuestionLimit(rw);
				
				/*int boardList = question;*/
				int page = 0;
				
				if((boardList % 10) !=0){
					page=1;
				}
				page +=boardList/10;
			
				// 제일앞뒤페이지
				if (pagenum == 1) {
					pages = 1;
				} else if (page == 5 &&page<10) {
					pages = pages;
				} else if (page == pagenum) {
					pages = ((page / 5) * 5) + 1;
				}
				
				req.setAttribute("que", que);
				req.setAttribute("quesize", boardList);
				req.setAttribute("page", page);
				req.setAttribute("pagestart", pagenum);
				req.setAttribute("pages", pages);
				
			}finally {
				session.close();
			}
			
			
			
			
			return "/WEB-INF/view/qaBoard.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
		}
		return null;
		
	}

}
