package com.dgit.handler;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class UpdateMypageMemberUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("get")){
			
			return "/WEB-INF/view/updateMypageMemberUpdate.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
			String test = req.getParameter("test");
			if(test==null){
			HttpSession httpsession = req.getSession();
			String id = (String) httpsession.getAttribute("id");
			
			SqlSession session = null;
			
			try {
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);
				
				User user = dao.SelectById(id);
				if(user==null){
					user=null;
				}
				
				Map<String, Object> map = new HashMap<>();
				map.put("user", user);
				
				ObjectMapper om = new ObjectMapper();
				String json = om.writeValueAsString(map);
				res.setContentType("application/json;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.println(json);
				out.flush();

			} finally {
				session.close();
			}	
			}else if(test.equals("test1")){
				
				HttpSession httpsession = req.getSession();
				String id = (String) httpsession.getAttribute("id");
				
				String addr1= req.getParameter("addr1");
				String addr2= req.getParameter("addr2");
				String addr3= req.getParameter("addr3");
				String phone = req.getParameter("phone");
				String e1 = req.getParameter("e1");
				String e2 = req.getParameter("e2");
								
				String phpone1="";
				int le = phone.length()-4;
				phpone1 += phone.substring(0, 3)+"-";
				phpone1 +=phone.substring(3,le)+"-";
				phpone1 += phone.substring(le,phone.length());
				SqlSession session = null;
				try {
					session = MySqlSessionFactory.openSession();
					UserDao dao = session.getMapper(UserDao.class);		

					User user = new User();
					user.setuId(id);
					user.setuAddress(addr1+","+addr2+","+addr3);
					user.setuEmail(e1+"@"+e2);
					user.setuPhone(phpone1);
					Boolean tf = true;
					int i =dao.updateUser(user);
					session.commit();
					if(i==0){
						tf=false;
					}
					
					
					Map<String, Object> map = new HashMap<>();
					map.put("tf", tf);
					
					ObjectMapper om = new ObjectMapper();
					String json = om.writeValueAsString(map);
					res.setContentType("application/json;charset=utf-8");
					PrintWriter out = res.getWriter();
					out.println(json);
					out.flush();
					
					
				} finally {
					session.close();
				}		
				
			}
		}
		return null;
	}

}
