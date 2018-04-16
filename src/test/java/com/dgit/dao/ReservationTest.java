package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.model.Reservation;
import com.dgit.model.Room;
import com.dgit.util.MySqlSessionFactory;

public class ReservationTest {
	
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
	@Test
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
	
	
}
