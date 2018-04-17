package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dgit.model.Reservation;
import com.dgit.model.Resevepayment;
import com.dgit.model.Room;
import com.dgit.util.MySqlSessionFactory;

public class ReservationTest {
	/*
	//@Test
	public void testselectReservationById(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			ReservationDao reservationDao = session.getMapper(ReservationDao.class);
		
			
			List<Reservation> list = reservationDao.selectReservationById("test");		
			
			for(Reservation reservation:list ){
				System.out.println(reservation);
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	//@Test
	public void testselectRoomIDByAll(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			RoomDao roomDao = session.getMapper(RoomDao.class);
			
			Reservation resrvation = new Reservation();
			resrvation.setR_no(3);
			resrvation.setU_id("test");			
			
			
			List<Room> room = roomDao.selectRoomByIdAll(resrvation);
			
			for(Room reservation:room ){
				System.out.println(reservation);
			}
						
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	//@Test
	public void testselectReservationinquiryById(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			ReservationDao reservationDao = session.getMapper(ReservationDao.class);
			
			
			Reservation list = reservationDao.selectReservationinquiryById("019618041022644");
			
			
		
			System.out.println(list);
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	//@Test
		public void testupdateReshis(){
			SqlSession session = null;
			
			try {
				session = MySqlSessionFactory.openSession();
				ReservationDao reservationDao = session.getMapper(ReservationDao.class);
				
				String res_no = req.getParameter("res_no");			
				String sr_no = req.getParameter("r_no");
				int r_no = Integer.parseInt(sr_no);
				
				Reservation resrvation2 = new Reservation();
				resrvation2.setRes_his(1);
				resrvation2.setRes_no("019618041022644");
				
				reservationDao.updateReshis(resrvation2);
				
				
				session.commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				session.close();
			}
		}
		//@Test
		public void testinsertResevepayment(){
			SqlSession session = null;
			
			try {
				session = MySqlSessionFactory.openSession();
				ResevepaymentDao resevepaymentDao = session.getMapper(ResevepaymentDao.class);		
								
				int rnd = (int) (Math.random()*100000000);
				String random = String.valueOf(rnd);
				
				Resevepayment resrvation2 = new Resevepayment(random,"농협중앙회","테스트","123456789","019618041022644");
								
				
				resevepaymentDao.insertResevepayment(resrvation2);
				
				
				session.commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				session.close();
			}
		}*/
}
