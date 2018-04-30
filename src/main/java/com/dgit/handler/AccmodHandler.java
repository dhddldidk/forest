package com.dgit.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.dgit.controller.CommandHandler;
import com.dgit.dao.ResevepaymentDao;
import com.dgit.model.Resevepayment;
import com.dgit.util.MySqlSessionFactory;

public class AccmodHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		SqlSession session = null;

		if (req.getMethod().equalsIgnoreCase("get")) {

			try {
				session = MySqlSessionFactory.openSession();
				String res_no = req.getParameter("res_no");
				
				ResevepaymentDao noticeboardDao = session.getMapper(ResevepaymentDao.class);
				
				Resevepayment acc = noticeboardDao.selectResevepayment(res_no);
				
				req.setAttribute("acc", acc);
				
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
			return "WEB-INF/view/mypage_section_inquiry_paymentrescancel_accmod.jsp";

		} else if (req.getMethod().equalsIgnoreCase("post")) {
			System.out.println("afdaf");

			try {
				session = MySqlSessionFactory.openSession();
				
				String res_no = req.getParameter("res_no");
				String bank = req.getParameter("bank");
				String bankusername = req.getParameter("accountname");
				String banknum = req.getParameter("accountnum");
				
				ResevepaymentDao resevepaymentDao = session.getMapper(ResevepaymentDao.class);
				
				Resevepayment resevepayment = new Resevepayment();
				resevepayment.setBankname(bank);
				resevepayment.setBankusername(bankusername);
				resevepayment.setBanknum(banknum);
				resevepayment.setRes_no(res_no);
				
				System.out.println(resevepayment);
				
			
				resevepaymentDao.updateBankNum(resevepayment);
				
				
				session.commit();
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		return null;
	}
}
