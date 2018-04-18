package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ForestDao;
import com.dgit.model.Forest;
import com.dgit.util.MySqlSessionFactory;

public class ForestIntroductionHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		sqlSession = MySqlSessionFactory.openSession();
		ForestDao dao = sqlSession.getMapper(ForestDao.class);
		
		try{
			
			List<Forest> introAllForest = dao.selectIntroAllForest();
			req.setAttribute("introAllForest", introAllForest);
			
			List<Forest> introSGyeonggi = dao.selectIntroSGyeonggi();
			req.setAttribute("introSGyeonggi", introSGyeonggi);
			
			List<Forest> introGangwon = dao.selectIntroGangwon();
			req.setAttribute("introGangwon", introGangwon);
			
			List<Forest> introChungbuk = dao.selectIntroChungbuk();
			req.setAttribute("introChungbuk", introChungbuk);
			
			List<Forest> introChungnam = dao.selectIntroChungnam();
			req.setAttribute("introChungnam", introChungnam);
			
			List<Forest> introJeonbuk = dao.selectIntroJeonbuk();
			req.setAttribute("introJeonbuk", introJeonbuk);
			
			List<Forest> introJeonnam = dao.selectIntroJeonnam();
			req.setAttribute("introJeonnam", introJeonnam);
			
			List<Forest> introGyeongbuk = dao.selectIntroGyeongbuk();
			req.setAttribute("introGyeongbuk", introGyeongbuk);
			
			List<Forest> introGyeongnam = dao.selectIntroGyeongnam();
			req.setAttribute("introGyeongnam", introGyeongnam);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}	
		return "/WEB-INF/view/forest_introduction.jsp";
	}

}
