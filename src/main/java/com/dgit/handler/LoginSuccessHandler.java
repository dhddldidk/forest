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

public class LoginSuccessHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {

			String id = req.getParameter("id");
			String pass = req.getParameter("pass");


			SqlSession session = null;

			HttpSession httpsession = req.getSession();

			try {

				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);

				User user = dao.SelectById(id);
				if (user == null) {
					user = null;
				}
				if (user != null) {
					if (user.getuId().equals(id) == true && user.getuPassword().equals(pass) == true) {

						httpsession.setAttribute("id", user.getuId());
					}
				}
				if (id.equals("admin") == true && pass.equals("admin") == true) {

					httpsession.setAttribute("admin", "admin");
				}

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
		} else if (req.getMethod().equalsIgnoreCase("post")) {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			SqlSession session = null;

			try {
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);
				User u = new User();
				u.setuName(name);
				u.setuEmail(email);

				User user = dao.searchById(u);
				if (user == null) {
					user = null;
				}

				Map<String, Object> map = new HashMap<>();
				map.put("user", user);

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
