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
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionAdminHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
		SqlSession sqlSession = null;
		sqlSession = MySqlSessionFactory.openSession();
		ForestDao dao = sqlSession.getMapper(ForestDao.class);
			try{
				List<Forest> introAllForest = dao.selectIntroAllForest();
				req.setAttribute("introAllForest", introAllForest);
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return "/WEB-INF/view/forest_introductionAdmin.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String sel = req.getParameter("sel");
			String search = req.getParameter("search");
			SqlSession sqlSession = null;
			
			HttpSession httpsession = req.getSession();
			try {
				sqlSession = MySqlSessionFactory.openSession();
				ForestDao dao = sqlSession.getMapper(ForestDao.class);
				
				Map<String, Object> mapper = new HashMap<>();
				
				if(sel.equals("휴양림이름")){
					mapper.put("searchBy", "forName");
					mapper.put("forName", search);
				}else if(sel.equals("지역")){
					mapper.put("searchBy", "dSido");
					mapper.put("dSido", search);
				}
				List<Forest> forest = dao.selectSearchByForest(mapper);
				
				Map<String, Object> map = new HashMap<>();
				map.put("forest", forest);
				
				
				System.out.println(map);
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(map);
				res.setContentType("application/json;charset=utf-8");

				/* httpsession.setMaxInactiveInterval(60); */
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
