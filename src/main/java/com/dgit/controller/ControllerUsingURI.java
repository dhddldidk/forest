package com.dgit.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ControllerUsingURI extends HttpServlet {
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	@Override
	public void init() throws ServletException {
		//properties안의 command와 class를 Map에 담는다.
		String configFile = getInitParameter("configFile");	//web.xml
		Properties prop = new Properties();
		String configFilePah = getServletContext().getRealPath(configFile);
		try(FileReader fis = new FileReader(configFilePah)){
			prop.load(fis);	//properties파일안의 내용을 가져와서 담는다.
		}catch (IOException e) {
			throw new ServletException(e);
		}
		Iterator keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()){
			String command = (String) keyIter.next();//key이름 : 명령어 /simple.do
			String handlerClassName = prop.getProperty(command);//key값 : handler클래스
			try{
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();// 동적 class 로딩
				commandHandlerMap.put(command, handlerInstance);
			}catch(ClassNotFoundException | InstantiationException | IllegalAccessException e){
				throw new ServletException(e);
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	@SuppressWarnings("unused")
	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		//요청 온 command를 찾는다.
		String command = req.getRequestURI();
		if(command.indexOf(req.getContextPath()) == 0){
			command = command.substring(req.getContextPath().length());
		}
		
		// command에 해당하는 class를 map에서 가져온다.
		CommandHandler handler = commandHandlerMap.get(command);
		if(handler == null){
			handler = new NullHandler();
		}
		
		String viewPage = null;
		try{
			//찾은 class를 실행한 후 화면에 보일 jsp파일명을 받는다.
			viewPage = handler.process(req, resp);
		}catch(Throwable e ){
			throw new ServletException(e);
		}
		//jsp를 forward하여 화면에 보이도록한다.
		if(viewPage != null){
			RequestDispatcher dispatcher = req.getRequestDispatcher(viewPage);
			dispatcher.forward(req, resp);
		}
				
	}
}










