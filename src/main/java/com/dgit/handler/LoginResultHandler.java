package com.dgit.handler;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class LoginResultHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("get")){
			return "/WEB-INF/view/loginFormResult.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			String name= req.getParameter("name");
			String id= req.getParameter("id");
			String password= req.getParameter("pass1");
			String addr1= req.getParameter("addr1");
			String addr2= req.getParameter("addr2");
			String addr3= req.getParameter("addr3");
			String phone = req.getParameter("phone");
			String e1 = req.getParameter("e1");
			String e2 = req.getParameter("e2");
			Date date = new Date();
			
			String phpone1="";
			int le = phone.length()-4;
			phpone1 += phone.substring(0, 3)+"-";
			phpone1 +=phone.substring(3,le)+"-";
			phpone1 += phone.substring(le,phone.length());
			
			SqlSession session = null;
			try {
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);		

				User user = new User(id, name, password, phpone1, e1+"@"+e2,addr1+","+addr2+","+addr3 , date);
				
				
				int tf = dao.insertUser(user);
				session.commit();
				if(tf>0){
					/*req.setAttribute("name", name);*/
					return "/WEB-INF/view/loginFormResult.jsp";
				}							
			} finally {
				session.close();
			}		
			return "/WEB-INF/view/loginFormResult.jsp";
		}
		return null;
	}

}
