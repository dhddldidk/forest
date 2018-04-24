package com.dgit.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.RoomDao;
import com.dgit.model.RoomJoinForest;
import com.dgit.util.MySqlSessionFactory;

public class RoomReservationOkHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = MySqlSessionFactory.openSession();
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String r_no = (String) req.getParameter("r_no");
		String sStay = req.getParameter("stay");
		String inYear = req.getParameter("inYear");
		String inMonth = req.getParameter("inMonth");
		String inDay = req.getParameter("inDay");
		String outMonth = req.getParameter("outMonth");
		String outDay = req.getParameter("outDay");
		System.out.println("입실 달 : " + inMonth);
		System.out.println("입실 날 : " + inDay);
		System.out.println("퇴실 달 : " + outMonth);
		System.out.println("퇴실 날 : " + outDay);
		System.out.println("숙박기간 : " + sStay);
		
		String checkIn = inYear + "-" + inMonth + "-" + inDay;
		String checkOut = inYear + "-" + outMonth + "-" + outDay;
	
		int no = Integer.parseInt(r_no);
		int r_stay = Integer.parseInt(sStay);
			
		RoomJoinForest reser = dao.selectRoomJoinForestByNo(no);
		reser.setId(id);
		reser.setR_stay(r_stay);
		reser.setCheckIn(checkIn);
		reser.setCheckOut(checkOut);
		System.out.println(reser);
		int result = dao.insertReservationRoom(reser);
		System.out.println("결과 메세지 : " + result);
		sqlSession.commit();
		
		 
		//{"article":{"no":1, "id":test, "name":"정현락"}}...
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(reser);
			 
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();
		 
		sqlSession.close();
		 
		return null;
	}

}
