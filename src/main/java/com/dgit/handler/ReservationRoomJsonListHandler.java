package com.dgit.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.RoomDao;
import com.dgit.model.ReservationRoom;
import com.dgit.util.MySqlSessionFactory;

public class ReservationRoomJsonListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = MySqlSessionFactory.openSession();
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		
		String sel = req.getParameter("sel");
		String search = req.getParameter("search");
		
		Map<String, Object> map = new HashMap<>();
		
		if(sel.equals("예약번호")){
			map.put("searchBy", "res_no");
			map.put("res_no", search);
		}else{
			map.put("searchBy", "id");
			map.put("id", search);
		}
		
		List<ReservationRoom> resList = dao.selectSearchByReservationRoom(map);
				
		
		// {"article":{"no":1, "id":test, "name":"정현락"}}...
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(resList);
			 
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();
		 
		sqlSession.close();
		 
		return null;
	}

}
