package com.dgit.handler;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.MessageDao;
import com.dgit.dao.UserDao;
import com.dgit.jdbc.ConnectionProvider;
import com.dgit.jdbc.JdbcUtil;
import com.dgit.model.Message;
import com.dgit.model.Users;

public class UserHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// get - writeForm.jsp
		req.setCharacterEncoding("utf-8");
		if(req.getMethod().equalsIgnoreCase("get")){
			return "selectUser.jsp";
		// post - writeProcess.jsp
		}else if(req.getMethod().equalsIgnoreCase("post")){
			// 넘어온 값을 디비에 저장
			Connection conn = null;
			String id = req.getParameter("id");
			String pw = req.getParameter("pw");
			System.out.println(id);
			System.out.println(pw);
			Users user = new Users();
			user.setId(id);
			user.setPw(pw);
			
			try{
				conn = ConnectionProvider.getConnection();
				UserDao dao = UserDao.getInstance();
				user = dao.selectOne(conn, user);
				req.setAttribute("user", user);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				JdbcUtil.close(conn);
			}
			
			return "userResult.jsp";
		}
		return "selectUser.jsp";
	}

}
