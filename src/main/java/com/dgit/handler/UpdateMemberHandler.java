package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.UserDao;
import com.dgit.model.User;
import com.dgit.util.MySqlSessionFactory;

public class UpdateMemberHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")){
			
			HttpSession httpsession = req.getSession();
			String id = (String) httpsession.getAttribute("id");		
			SqlSession session = null;

			try {
				session = MySqlSessionFactory.openSession();
				UserDao dao = session.getMapper(UserDao.class);
				
				User user = dao.SelectById(id);
				String[] addr = user.getuAddress().split(",");
				String address ="";
				if(addr.length==2){
					address = "["+addr[0]+"] "+addr[1];
				}else{
				address = "["+addr[0]+"] "+addr[1]+" "+addr[2];
				}
				user.setuAddress(address);
				req.setAttribute("user", user);

			} finally {
				session.close();

			}			
			return "/WEB-INF/view/updateMypageMember.jsp";
		}
		return null;
	}

}
