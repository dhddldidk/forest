package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class DuplicationIdHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("get")){
		String id = req.getParameter("id");		
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			UserDao dao = session.getMapper(UserDao.class);		

			User user = dao.SelectById(id);
			Boolean tf= true;
			if(user ==null){
				tf=false;
			}
			
			Map<String, Object> map = new HashMap<>();
			map.put("tf", tf);
			
			ObjectMapper om = new ObjectMapper();
			String json = om.writeValueAsString(map);
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.println(json);
			out.flush();
			
		} finally {
			session.close();
		}
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String id = req.getParameter("id");
			String email = req.getParameter("email");
			SqlSession session = null;

			try {
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);
				
				Map<String, Object> map = new HashMap<>();
				User u = new User();
				u.setuId(id);
				u.setuEmail(email);
				
				User user = dao.searchByPassword(u);
				if (user == null) {
					user = null;
					map.put("user", user);
				}else{
				
				String p = "";
				for(int i =0;i<6;i++){
					p+= (char)((int)(Math.random()*26)+97);
					if(i>3){
						p+=(int)(Math.random()*26);
					}
				}

				map.put("user", user);
				map.put("pass", p);
				u.setuId(id);
				u.setuPassword(p);				
				dao.updateUserPassword(u);
				session.commit();
				}
				
				/*map.put("p", p);*/

				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(map);
				res.setContentType("application/json;charset=utf-8");
				
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
