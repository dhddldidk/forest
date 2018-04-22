package com.dgit.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ReservationDao;
import com.dgit.model.Reservation;
import com.dgit.util.MySqlSessionFactory;

public class AdminHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession session = null;
		
		if(req.getMethod().equalsIgnoreCase("get")){

			try{
				session = MySqlSessionFactory.openSession();
				
				ReservationDao reser = session.getMapper(ReservationDao.class);
				
				List<Reservation> list = reser.selectReservationByAll();
				
				req.setAttribute("list", list);
				
			}catch (Exception e){
				e.printStackTrace();
			}finally {
				session.close();
			}

			return "/WEB-INF/view/admin.jsp";
		}
		return null;
	}

}
