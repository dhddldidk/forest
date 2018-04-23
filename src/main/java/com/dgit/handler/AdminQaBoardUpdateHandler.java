package com.dgit.handler;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.AnswerDao;
import com.dgit.dao.QuestionDao;
import com.dgit.model.Answer;
import com.dgit.model.Question;
import com.dgit.util.MySqlSessionFactory;

public class AdminQaBoardUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		if (req.getMethod().equalsIgnoreCase("post")) {

			String no = req.getParameter("no");
			String content = req.getParameter("content");

			try (SqlSession session = MySqlSessionFactory.openSession()) {

				AnswerDao dao = session.getMapper(AnswerDao.class);

				List<String> list = dao.selectAnswer();
				QuestionDao qustiondao = session.getMapper(QuestionDao.class);
				Date now = new Date();
				int tf = 0;
				boolean btf = false;

				for (int i = 0; i < list.size(); i++) {
					String attr = list.get(i);
					if (no.equals(attr)) {
						btf = true;
					}
				}

				if (btf) {

					Answer answer = new Answer();
					answer.setaContent(content);
					answer.setqNo(Integer.parseInt(no));
					tf = dao.updateAnswer(answer);
					session.commit();
					req.setAttribute("tf", tf);
				} else {
					Answer answer = new Answer(content, now, Integer.parseInt(no));
					tf = dao.insertAnswer(answer);
					if (tf > 0) {
						Question question = new Question();
						question.setqState(1);
						question.setqNo(Integer.parseInt(no));
						int tfQ = qustiondao.updateAnswerQuState(question);
						session.commit();
						req.setAttribute("tf", tf);
					}

				}
				return "/WEB-INF/view/admin_qa.jsp";
			}

		}
		return null;
	}

}
