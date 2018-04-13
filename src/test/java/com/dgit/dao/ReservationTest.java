package com.dgit.dao;

import java.util.List;
import java.util.Map;

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
	public void testselectRoomByNo(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			ReservationDao reservationDao = session.getMapper(ReservationDao.class);
			
			
			List<Reservation> room = reservationDao.selectRoomByNo("test");
			
			
			for(Reservation reservation:room ){
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
}
