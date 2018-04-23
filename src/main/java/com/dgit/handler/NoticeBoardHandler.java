package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.NoticeBoardDao;
import com.dgit.model.Notice;
import com.dgit.util.MySqlSessionFactory;

public class NoticeBoardHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session = null;

		if (req.getMethod().equalsIgnoreCase("get")) {
			
			try {
				session = MySqlSessionFactory.openSession();
				
				NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
											
				int boardcount = noticeboardDao.selectBoardCount();
				List<Notice> list = noticeboardDao.selectNoticeAll();
				
				req.setAttribute("list", list);	
				req.setAttribute("boardcount", boardcount);
				

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
			return "WEB-INF/view/noticeBoard.jsp";

		} else if (req.getMethod().equalsIgnoreCase("post")) {

			try {
				session = MySqlSessionFactory.openSession();
				
				NoticeBoardDao noticeboardDao = session.getMapper(NoticeBoardDao.class);
				
				String search = req.getParameter("search");
				String searchselect = req.getParameter("searchselect");
				
				

				Map<String, Object> map = new HashMap<>();
				
				if(searchselect.equals("제목")){
					 map.put("search", "title");
					 map.put("title", search);
				}else if(searchselect.equals("휴양림")){
					map.put("search", "forest");
					map.put("forest", search);
				}

				List<Notice> list = noticeboardDao.selectNoticeSearch(map);
				
				int boardcount = noticeboardDao.selectBoardCount();
				req.setAttribute("boardcount", boardcount);
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(list);
				
				res.setContentType("application/json;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.print(json);
				out.flush();
				
				
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
