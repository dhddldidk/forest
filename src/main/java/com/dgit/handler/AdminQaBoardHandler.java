package com.dgit.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.QuestionDao;
import com.dgit.model.Question;
import com.dgit.util.MySqlSessionFactory;

public class AdminQaBoardHandler implements CommandHandler {
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
					rw = new RowBounds((pagenum - 1) * 20, 20);
				} else {
					rw = new RowBounds(0, 20);
				}
				
				
				
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);	
				int boardList = dao.selectQCount();
				List<Question> que = dao.selectAllQuestion(rw);
				
				/*int boardList = question;*/
				int page = 0;
				
				if((boardList % 20) !=0){
					page=1;
				}
				page +=boardList/20;
			
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
	
			return "/WEB-INF/view/admin_qa.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String sel = req.getParameter("sel");
			
			
			SqlSession session = null;
			try {
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);	
				
				List<Question> question = new ArrayList<>();
				
				Map<String,Object> mapper = new HashMap<>();
				if(sel.equals("처리중")){
					question = dao.selectQuestionState(0);
				}else if(sel.equals("처리완료")){
					question = dao.selectQuestionState(1);
				}
				

				Map<String, Object> map = new HashMap<>();
				map.put("question", question);
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(map);
				res.setContentType("application/json;charset=utf-8");

				/* httpsession.setMaxInactiveInterval(60); */
				PrintWriter out = res.getWriter();
				out.println(json);
				out.flush();
				
				
			}finally {
				session.close();
			}
			
		}
		return null;
	
	}
}
