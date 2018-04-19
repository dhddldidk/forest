package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.model.Notice;
import com.dgit.util.MySqlSessionFactory;

public class NoticeTest {
	@Test
	public void testselectReservationById(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			/*ReservationDao reservationDao = session.getMapper(ReservationDao.class);
		
			
			List<Reservation> list = reservationDao.selectReservationById("test");		
			
			for(Reservation reservation:list ){
				System.out.println(reservation);
			}
			*/
			NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
			List<Notice> list = noticeboardDao.selectNoticeAll();
			for(Notice notice:list ){
				System.out.println(notice);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
}
