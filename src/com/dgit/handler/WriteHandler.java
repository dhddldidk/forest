package com.dgit.handler;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.MessageDao;
import com.dgit.jdbc.ConnectionProvider;
import com.dgit.jdbc.JdbcUtil;
import com.dgit.model.Message;

public class WriteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// get - writeForm.jsp
		req.setCharacterEncoding("utf-8");
		if(req.getMethod().equalsIgnoreCase("get")){
			return "writeForm.jsp";
		// post - writeProcess.jsp
		}else if(req.getMethod().equalsIgnoreCase("post")){
			// 넘어온 값을 디비에 저장
			Connection conn = null;
			String guestName = req.getParameter("guestName");
			String pw = req.getParameter("password");
			String message = req.getParameter("message");
			Message msg = new Message();
			msg.setGuestName(guestName);
			msg.setPassword(pw);
			msg.setMessage(message);
			
			try{
				conn = ConnectionProvider.getConnection();
				MessageDao dao = MessageDao.getInstance();
				dao.insert(conn, msg);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				JdbcUtil.close(conn);
			}
			
			return "writeProcess.jsp";
		}
		return "writeForm.jsp";
	}

}
