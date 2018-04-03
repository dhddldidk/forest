package com.dgit.handler;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.MessageDao;
import com.dgit.jdbc.ConnectionProvider;
import com.dgit.jdbc.JdbcUtil;
import com.dgit.model.Message;

public class DeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// get - writeForm.jsp
		req.setCharacterEncoding("utf-8");
		if(req.getMethod().equalsIgnoreCase("get")){
			return "delCheck.jsp";
		// post - writeProcess.jsp
		}else if(req.getMethod().equalsIgnoreCase("post")){
			// 넘어온 값을 디비에 저장
			Connection conn = null;
			String id = req.getParameter("id");
			String pw = req.getParameter("password");
			System.out.println(id);
			System.out.println(pw);
			Message msg = new Message();
			msg.setId(Integer.parseInt(id));
			msg.setPassword(pw);
			
			try{
				conn = ConnectionProvider.getConnection();
				MessageDao dao = MessageDao.getInstance();
				dao.delete(conn, msg);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				JdbcUtil.close(conn);
			}
			
			return "delProcess.jsp";
		}
		return "writeForm.jsp";
	}

}
