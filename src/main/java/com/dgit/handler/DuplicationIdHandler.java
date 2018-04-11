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
			System.out.println(json);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.println(json);
			out.flush();
			
		} finally {
			session.close();
		}
		return null;
	}

}
