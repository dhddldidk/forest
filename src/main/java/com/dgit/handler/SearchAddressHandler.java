package com.dgit.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.PostDao;
import com.dgit.model.Post;
import com.dgit.util.MySqlSessionFactory;

public class SearchAddressHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			return "/WEB-INF/view/searchAddress.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			req.setAttribute("error", 1);
			String addr = req.getParameter("searchaddr");
			if(addr.equals("")){
				req.setAttribute("error", 0);
				return "/WEB-INF/view/searchAddress.jsp";
			}
			System.out.println(addr);
			SqlSession session = null;
			try {
				List<Post> list =  new ArrayList<>();
				session = MySqlSessionFactory.openSession();
				PostDao dao = session.getMapper(PostDao.class);		
							
				String st ="%";
				for(int i =1;i<addr.length();i++){
					st+=addr.substring(--i,++i)+"%";		
					if(i==addr.length()-1){
						st+=addr.substring(i,++i);
					}
				}
				st =  st.replace(" ", "");
				if(list.size()==0){
					System.out.println("없음");
					list = dao.selectOldDoro(st);
					if(list.size()==0){
						System.out.println("없음");
						req.setAttribute("error", 0);
					}else{
						for(Post p : list){
							System.out.println(p);
						}
						req.setAttribute("list", list);
					}
				}else{
					
					for(Post p : list){
						System.out.println(p);
					}
					req.setAttribute("list", list);
				}
				
			} finally {
				session.close();
			}
			
			return "/WEB-INF/view/searchAddress.jsp";
		}
		return null;
	}

}
