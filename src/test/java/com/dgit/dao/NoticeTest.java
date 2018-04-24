package com.dgit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.dgit.model.Notice;
import com.dgit.util.MySqlSessionFactory;

public class NoticeTest {
	//@Test
	public void testselectNoticeAll(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			
			
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
	
	//@Test
	public void testselectNoticeNo(){
		SqlSession session = null;
		
		try {
			session = MySqlSessionFactory.openSession();
			
			NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
			
			Notice notice = noticeboardDao.selectNoticeNo(1);
			
			System.out.println(notice);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
}
