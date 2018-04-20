package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ChoiceForestDao;
import com.dgit.model.ForestName;
import com.dgit.util.MySqlSessionFactory;

public class ReservationHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		/*HttpSession httpSession = req.getSession();
		String id = (String) httpSession.getAttribute("id");
		if(id == null){
			return "loginLogin.do";
		}*/
		
		SqlSession session = null;
		session = MySqlSessionFactory.openSession();
		ChoiceForestDao dao = session.getMapper(ChoiceForestDao.class);
		try {
			List<ForestName> list = dao.selectListForestNameBySGyeonggi();
			req.setAttribute("nameListSGyeonggi", list);
			list = dao.selectListForestNameByGangwon();
			req.setAttribute("nameListGangwon", list);
			list = dao.selectListForestNameByChungbuk();
			req.setAttribute("nameListChungbuk", list);
			list = dao.selectListForestNameByChungnam();
			req.setAttribute("nameListChungnam", list);
			list = dao.selectListForestNameByJeonbuk();
			req.setAttribute("nameListJeonbuk", list);
			list = dao.selectListForestNameByJeonnam();
			req.setAttribute("nameListJeonnam", list);
			list = dao.selectListForestNameByChungbuk();
			req.setAttribute("nameListGyeongbuk", list);
			list = dao.selectListForestNameByChungnam();
			req.setAttribute("nameListGyeongnam", list);
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return "/WEB-INF/view/reservation.jsp";
	}

}
