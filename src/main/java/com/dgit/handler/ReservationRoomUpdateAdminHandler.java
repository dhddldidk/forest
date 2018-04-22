package com.dgit.handler;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ReservationDao;
import com.dgit.model.Reservation;
import com.dgit.model.ReservationRoom;
import com.dgit.util.MySqlSessionFactory;

public class ReservationRoomUpdateAdminHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/reservationRoomUpdateAdmin.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		
		if(req.getMethod().equalsIgnoreCase("get")){
			String id = req.getParameter("id");
			String res_no = req.getParameter("res_no");			
			try{
				sqlSession = MySqlSessionFactory.openSession();
				ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
				ReservationRoom reser = new ReservationRoom();
				reser.setRes_no(res_no);
				reser.setU_id(id);
				ReservationRoom resRoom = dao.selectReservationRoomById(reser);
				System.out.println(resRoom);
				req.setAttribute("resRoom", resRoom);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}	
			return FORM_VIEW;
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String id = req.getParameter("u_id");
			String res_no = req.getParameter("res_no");
			String res_startDate = req.getParameter("res_startdate");
			String res_endDate = req.getParameter("res_enddate");
			String sStay = req.getParameter("res_stay");
			int res_stay = Integer.parseInt(sStay);
			System.out.println(id);
			System.out.println(res_no);
			System.out.println(res_startDate);
			System.out.println(res_endDate);
			System.out.println(sStay);
			
			
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			
			
			
			System.out.println("아아아");
			try{
				sqlSession = MySqlSessionFactory.openSession();
				ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
				Reservation reser = new Reservation();
				reser.setU_id(id);
				reser.setRes_no(res_no);
				reser.setRes_startdate(sf.parse(res_startDate));
				reser.setRes_enddate(sf.parse(res_endDate));
				reser.setRes_stay(res_stay);
				
				int result = dao.updateReservationById(reser);
				System.out.println(result);
				sqlSession.commit();
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}	
			return "/WEB-INF/view/updateReservationOk.jsp";
		}
		return null;
	}

}
