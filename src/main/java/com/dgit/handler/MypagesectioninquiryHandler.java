package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ReservationDao;
import com.dgit.model.Reservation;
import com.dgit.util.MySqlSessionFactory;

public class MypagesectioninquiryHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub

		SqlSession session = null;

		try {
			session = MySqlSessionFactory.openSession();
			String sres_no = req.getParameter("res_no");
			int res_no = Integer.parseInt(sres_no);
			ReservationDao reservationDao = session.getMapper(ReservationDao.class);

			
			 List<Reservation> list = reservationDao.selectReservationById("test");
			 
			 req.setAttribute("list", list); System.out.println(list);
			

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return "WEB-INF/view/mypage_section_inquiry.jsp";
	}
}
