package com.dgit.handler;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.MessageDao;
import com.dgit.jdbc.ConnectionProvider;
import com.dgit.jdbc.JdbcUtil;
import com.dgit.model.Message;

public class ListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Connection conn = null;
		try{
			conn = ConnectionProvider.getConnection();
			MessageDao dao = MessageDao.getInstance();
			List<Message> list = dao.selectList(conn);
			req.setAttribute("list", list);
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.close(conn);
		}
		return "list.jsp";
	}
	
}
