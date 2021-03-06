package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class UpdateMemberCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			return "/WEB-INF/view/updateMypageCheck.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){

			HttpSession httpsession = req.getSession();
			String id = (String) httpsession.getAttribute("id");		
			String pass = req.getParameter("pass");
			SqlSession session = null;
		
			try {
				Boolean tf = false;
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);
				
				User user = dao.SelectById(id);
				if(user.getuPassword().equals(pass)){
				/*if(user!=null){*/
					tf=true;				
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
		}
		return null;
	}

}
