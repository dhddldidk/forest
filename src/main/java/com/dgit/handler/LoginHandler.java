package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
	

		if(req.getMethod().equalsIgnoreCase("get")){	
			
		
			return "/WEB-INF/view/loginAgreement.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			
			return "/WEB-INF/view/loginForm.jsp";
		}
		return null;
	}

}
