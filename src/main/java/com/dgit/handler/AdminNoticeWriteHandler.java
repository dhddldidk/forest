package com.dgit.handler;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.NoticeBoardDao;
import com.dgit.model.Notice;
import com.dgit.util.MySqlSessionFactory;

public class AdminNoticeWriteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub

		SqlSession session = null;

		if (req.getMethod().equalsIgnoreCase("get")) {

			try {
				session = MySqlSessionFactory.openSession();
				
				
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
			return "WEB-INF/view/admin_noticeWrite.jsp";

		} else if (req.getMethod().equalsIgnoreCase("post")) {

			try {
				session = MySqlSessionFactory.openSession();
				
				
				String title = req.getParameter("texttitle");
				String forest = req.getParameter("forest");
				String content = req.getParameter("content");
				
				NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
				Date now = new Date();		
				
				Notice notice = new Notice(0,title,now,0,content,forest);
				
				System.out.println(forest);
				noticeboardDao.insertNotice(notice);
				
				
				session.commit();
				res.sendRedirect("adminnoticeBoard.do");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		return null;
	}
}
