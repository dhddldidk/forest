package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String all = req.getParameter("all");
		
		if(req.getMethod().equalsIgnoreCase("get") && all==null){
			
			return "/WEB-INF/view/admin_member.jsp";					
		}else if(req.getMethod().equalsIgnoreCase("get") && all.equals("all")){
	
			int pagenum = 0;
			SqlSession session = null;
			try {
				
				
				
				String pageNum = req.getParameter("pa");
				RowBounds rw = new RowBounds();
			
				/*pagenum=null*/
				System.out.println(pageNum);
				
				
				if (pageNum != null) {
					pagenum = Integer.parseInt(pageNum);
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
				
				
				Map<String, Object> map = new HashMap<>();
				map.put("user", user);
				map.put("usersize", boardList);
				map.put("page", page);
				map.put("pages", pages);
				
				
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(map);
				res.setContentType("application/json;charset=utf-8");
				
				
				
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
