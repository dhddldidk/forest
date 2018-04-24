package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.RoomAdminDao;
import com.dgit.model.RoomAdmin;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionRoomsListAdminHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			SqlSession sqlSession = null;
			sqlSession = MySqlSessionFactory.openSession();
			RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
			
			try {
				List<RoomAdmin> roomAdminList = dao.selectRoomAllListAdmin();
				req.setAttribute("roomAdminList", roomAdminList);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return "WEB-INF/view/forest_introductionRoomsListAdmin.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String sel = req.getParameter("sel");
			String search = req.getParameter("search");
			SqlSession sqlSession = null;
			
			HttpSession httpsession = req.getSession();
			try {
				sqlSession = MySqlSessionFactory.openSession();
				RoomAdminDao dao = sqlSession.getMapper(RoomAdminDao.class);
				Map<String, Object> mapper = new HashMap<>();
				
				if(sel.equals("휴양림 이름")){
					mapper.put("searchBy", "forName");
					mapper.put("forName", search);
				}else if(sel.equals("지역")){
					mapper.put("searchBy", "dSido");
					mapper.put("dSido", search);
				}
				else if(sel.equals("숙박시설 방이름")){
					mapper.put("searchBy", "rName");
					mapper.put("rName", search);
				}
				else if(sel.equals("숙박시설")){
					mapper.put("searchBy", "facName");
					mapper.put("facName", search);
				}
				List<RoomAdmin> roomAdmin = dao.selectSearchByRooms(mapper);
				
				Map<String, Object> map = new HashMap<>();
				map.put("roomAdmin", roomAdmin);
				
				
				
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(map);
				res.setContentType("application/json;charset=utf-8");

				/*httpsession.setMaxInactiveInterval(60); */
				PrintWriter out = res.getWriter();
				out.println(json);
				out.flush();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		}
		return null;
	}

}
