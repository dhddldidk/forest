package com.dgit.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.RoomDao;
import com.dgit.model.Room;
import com.dgit.util.MySqlSessionFactory;

public class RoomJsonListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = MySqlSessionFactory.openSession();
		System.out.println("RoomJsonListHandler");
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		String dis = req.getParameter("dis");
		String homepage = req.getParameter("homeList");
		String[] str = homepage.split(",");
		
		for(int i=0;i<str.length;i++){
			str[i] = "%" + str[i];
			System.out.println(str[i]);
		}
		
		HashMap hm = new HashMap<>();
		hm.put("dis", dis);
		hm.put("homepage", str);
		
		List<Room> roomList = dao.selectByAll(hm);

		// {"article":{"no":1, "id":test, "name":"정현락"}}...
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(roomList);
		System.out.println(json);

		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();

		sqlSession.close();
		return null;
	}

}
