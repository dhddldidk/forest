package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class MainForestSliderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		System.out.println("ddddd");
		SqlSession session = null;
		session = MySqlSessionFactory.openSession();
		ForestDao dao = session.getMapper(ForestDao.class);
		try {
			
			List<Forest> listSGyeonggi = dao.selectListSGyeonggi();
			req.setAttribute("listSGyeonggi", listSGyeonggi);			
			System.out.println("서울경기"+listSGyeonggi);
			
			List<Forest> listGangwon = dao.selectListGangwon();
			req.setAttribute("listGangwon", listGangwon);	
			System.out.println("강원"+listGangwon);
			
			List<Forest> listChungbuk = dao.selectListChungbuk();
			req.setAttribute("listChungbuk", listChungbuk);
			System.out.println("충북"+listChungbuk);
			
			List<Forest> listChungnam = dao.selectListChungnam();
			req.setAttribute("listChungnam", listChungnam);
			System.out.println("충남"+listChungnam);
			
			List<Forest> listJeonbuk = dao.selectListJeonbuk();
			req.setAttribute("listJeonbuk", listJeonbuk);
			System.out.println("전북"+listJeonbuk);
			
			List<Forest> listJeonnam = dao.selectListJeonnam();
			req.setAttribute("listJeonnam", listJeonnam);
			
			List<Forest> listGyeongbuk = dao.selectListGyeongbuk();
			req.setAttribute("listGyeongbuk", listGyeongbuk);
			
			List<Forest> listGyeongnam = dao.selectListGyeongnam();
			req.setAttribute("listGyeongnam", listGyeongnam);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return "/WEB-INF/view/main.jsp";
	}

}
