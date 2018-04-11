package com.dgit.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			req.setAttribute("size", 0);
			req.setAttribute("error", 1);
			String addr = req.getParameter("searchaddr");
			if(addr.equals("")){
				req.setAttribute("error", 0);
				return "/WEB-INF/view/searchAddress.jsp";
			}
			SqlSession session = null;
			try {
				List<Post> list =  new ArrayList<>();
				session = MySqlSessionFactory.openSession();
				PostDao dao = session.getMapper(PostDao.class);		
							
				String st ="%";
				for(int i =1;i<addr.length()+1;i++){
					st+=addr.substring(--i,++i)+"%";		
					/*if(i==addr.length()-1){
						st+=addr.substring(i,++i);
					}*/
				}
				st =  st.replace(" ", "");
				list = dao.selectDoro(st);
				if(list.size()==0){
					list = dao.selectOldDoro(st);
					if(list.size()==0){
						req.setAttribute("error", 0);
					}else{
						changeDoro(list);
						req.setAttribute("list", list);
						req.setAttribute("size",1);
					}
				}else{
					changeDoro(list);
					req.setAttribute("list", list);
					req.setAttribute("size", 1);
				}
				
			} finally {
				session.close();
			}
			
			return "/WEB-INF/view/searchAddress.jsp";
		}
		return null;
	}

	private void changeDoro(List<Post> list) {
		String replacedoro= "";
		for(int i =0; i<list.size();i++){
			replacedoro = list.get(i).getDoro().replace("-0", "");
			list.get(i).setDoro(replacedoro);
			replacedoro = "";
			replacedoro =list.get(i).getOldDoro().replace("-0", "");
			list.get(i).setOldDoro(replacedoro);
		}
	}

}
