package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.NoticeBoardDao;
import com.dgit.model.Notice;
import com.dgit.util.MySqlSessionFactory;

public class AdminNoticeModHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session = null;

		if (req.getMethod().equalsIgnoreCase("get")) {

			try {
				session = MySqlSessionFactory.openSession();
				String nb_no = req.getParameter("nb_no");
				int snb_no = Integer.parseInt(nb_no);
				
				NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
				
				Notice notice = noticeboardDao.selectNoticeNo(snb_no);
				
				req.setAttribute("notice", notice);
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
			return "WEB-INF/view/admin_noticeWriteMod.jsp";

		} else if (req.getMethod().equalsIgnoreCase("post")) {

			try {
				session = MySqlSessionFactory.openSession();
				String nb_no = req.getParameter("nb_no");
				
				int snb_no = Integer.parseInt(nb_no);
				
				String title = req.getParameter("texttitle");
				String forest = req.getParameter("forest");
				String content = req.getParameter("content");
				
				NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
				
				
				Notice notice = new Notice();
				notice.setNb_title(title);
				notice.setNb_content(content);		
				notice.setNb_forest(forest);						
				notice.setNb_no(snb_no);
				
				noticeboardDao.updateNoticeBoard(notice);
				session.commit();
				notice = noticeboardDao.selectNoticeNo(snb_no);
				req.setAttribute("notice", notice);
				
				
				
				
				return "WEB-INF/view/admin_noticeBoard_content.jsp";			
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
