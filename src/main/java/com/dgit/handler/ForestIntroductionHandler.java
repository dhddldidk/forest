package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;

public class ForestIntroductionHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		return "/WEB-INF/view/forest_introduction.jsp";
	}

}
