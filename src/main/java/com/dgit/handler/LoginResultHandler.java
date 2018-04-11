package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;

public class LoginResultHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("get")){
			
		}else if(req.getMethod().equalsIgnoreCase("post")){
		
			
			return "/WEB-INF/view/loginFormResult.jsp";
		}
		return null;
	}

}
