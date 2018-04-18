package com.dgit.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.RoomDao;
import com.dgit.model.Room;
import com.dgit.util.MySqlSessionFactory;

public class RoomJsonListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = MySqlSessionFactory.openSession();
		System.out.println("RoomJsonListHandler");
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		String dis = req.getParameter("dis");
		String homepage = req.getParameter("homeList");
		String fac = req.getParameter("fac");
		String[] arrHome = null;
		String[] arrFac = null;
		HashMap<String, List<String>> hm = new HashMap<>();
		List<String> dislist = new ArrayList<String>();
		List<String> homeList = new ArrayList<String>();
		List<String> facList = new ArrayList<String>();

		dislist.add(dis);
		arrHome = homepage.split(",");
		System.out.println(arrHome[0] + "split");

		for (int i = 0; i < arrHome.length; i++) {
			arrHome[i] = "%" + arrHome[i];
			System.out.println(arrHome[i]);
		}
		for (int i = 0; i < arrHome.length; i++) {
			homeList.add(arrHome[i]);
		}
		;
		System.out.println("homeList" + homeList);

		arrFac = fac.split(",");
		
		for (int i = 0; i < arrFac.length; i++) {
			facList.add(arrFac[i]);
		}
		;
		System.out.println("facList" + facList);

		hm.put("dis", dislist);
		hm.put("homepage", homeList);
		hm.put("arrFac", facList);

		/*List<Room> roomList = dao.selectByAll(hm);
		System.out.println(roomList);

		// {"article":{"no":1, "id":test, "name":"정현락"}}...
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(roomList);
		System.out.println(json);

		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();

		sqlSession.close();*/
		return null;
	}

}
