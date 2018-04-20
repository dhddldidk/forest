package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ReservationDao;
import com.dgit.model.Reservation;
import com.dgit.model.ReservationRoom;
import com.dgit.util.MySqlSessionFactory;

public class ReservationlistHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session = null;
		
		try{			
			HttpSession httpsession = req.getSession();
			String id = (String) httpsession.getAttribute("id");
			
			session = MySqlSessionFactory.openSession();
			
			ReservationDao reservationDao = session.getMapper(ReservationDao.class);
			
			
			ReservationRoom reservationroom = new ReservationRoom();
			reservationroom.setU_id(id);
			
			ReservationRoom reservationroom2 = new ReservationRoom();
			reservationroom2.setRes_his(0);
			reservationroom2.setU_id(id);
			
			List<Reservation> count = reservationDao.selectReservationByIdCount(reservationroom2);
			List<ReservationRoom> list = reservationDao.selectById(reservationroom);
			System.out.println(list);
			req.setAttribute("count", count);	
			req.setAttribute("list", list);	
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		return "WEB-INF/view/mypage_section_basket.jsp";
	}
	
}
