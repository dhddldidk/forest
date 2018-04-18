package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class AdminMemberHandler implements CommandHandler {
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
					rw = new RowBounds((pagenum - 1) * 6, 6);
					
				} else {
					rw = new RowBounds(0, 6);
				}
				
				
				
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);	
				List<User> usersize = dao.selectAllUser();
				List<User> user = dao.selectAllUserLimit(rw);
				
				int boardList = usersize.size();
				int page = 0;
				
				if((boardList % 6) !=0){
					page=1;
				}
				page +=boardList/6;
				
				/*회원번호*/
				int stateno = 0;
				if(pagenum==1 || pageNum == null){
					stateno = boardList;
				}else{
					stateno = boardList - (6*(pagenum-1));
				}
			
				// 제일앞뒤페이지
				if (pagenum == 1) {
					pages = 1;
				} else if (page == 5 &&page<10) {
					pages = pages;
				} else if (page == pagenum) {
					pages = ((page / 5) * 5) + 1;
				}
						
				req.setAttribute("user", user);
				req.setAttribute("usersize", boardList);
				req.setAttribute("page", page);
				req.setAttribute("stateno", stateno);
				req.setAttribute("pagestart", pagenum);
				req.setAttribute("pages", pages);
				
			}finally {
				session.close();
			}

		return "/WEB-INF/view/admin_member.jsp";
	}else if(req.getMethod().equalsIgnoreCase("post")){
		
		String sel = req.getParameter("sel");
		System.out.println(sel);
		
		
		System.out.println("ddddd");
	}
		return null;
	}
}
