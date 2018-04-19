package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

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
		String search= req.getParameter("search");
		SqlSession session = null;

		HttpSession httpsession = req.getSession();
		try {	
		session = MySqlSessionFactory.openSession();
		UserDao dao = session.getMapper(UserDao.class);

		Map<String,Object> mapper = new HashMap<>();
		if(sel.equals("이름")){
			mapper.put("searchBy", "uName");
			mapper.put("uName", "%"+search+"%");
		}else if(sel.equals("아이디")){
			mapper.put("searchBy", "uId");
			mapper.put("uId", search);
		}else if(sel.equals("휴대전화")){
			mapper.put("searchBy", "uPhone");
			mapper.put("uPhone", search);
		}
		List<User> user = dao.selectChooseUser(mapper);
		
		

		Map<String, Object> map = new HashMap<>();
		map.put("user", user);
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(map);
		res.setContentType("application/json;charset=utf-8");

		/* httpsession.setMaxInactiveInterval(60); */
		PrintWriter out = res.getWriter();
		out.println(json);
		out.flush();

	} finally {
		session.close();

	}
	}
		return null;
	}
}
