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
import com.dgit.dao.QuestionDao;
import com.dgit.model.Question;
import com.dgit.util.MySqlSessionFactory;

public class QaBoardUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			
			String no = req.getParameter("key");
			SqlSession session = null;
			
			
			
			try{
				session = MySqlSessionFactory.openSession();
				QuestionDao dao = session.getMapper(QuestionDao.class);
				Question question = dao.selectAllQuestionLimit(new Question(Integer.parseInt(no)));
				String content = question.getqContent();
				content = content.replace("<pre>", "");
				content = content.replace("</pre>", "");
				question.setqContent(content);
				req.setAttribute("question", question);
			}
			finally {
				session.close();

			}	
			
			
			
			return "/WEB-INF/view/qaBoardUpdate.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String sel = req.getParameter("sel");
			String search= req.getParameter("search");
			SqlSession session = null;

			HttpSession httpsession = req.getSession();
			try {	
			session = MySqlSessionFactory.openSession();
			QuestionDao dao = session.getMapper(QuestionDao.class);

			Map<String,Object> mapper = new HashMap<>();
			if(sel.equals("제목")){
				mapper.put("searchBy", "qTitle");
				mapper.put("qTitle", "%"+search+"%");
			}else if(sel.equals("작성자")){
				mapper.put("searchBy", "uName");
				mapper.put("uName", search);
			}
			List<Question> question = dao.selectChooseQuestion(mapper);
			
			

			Map<String, Object> map = new HashMap<>();
			map.put("question", question);
			ObjectMapper om = new ObjectMapper();
			String json = om.writeValueAsString(map);
			res.setContentType("application/json;charset=utf-8");

			/* httpsession.setMaxInactiveInterval(60); */
			PrintWriter out = res.getWriter();
			out.println(json);
			out.flush();

		} finally {
			session.close();

		}
		}
		return null;
	}

}
