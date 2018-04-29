package com.dgit.dao;

import java.sql.SQLException;

import com.dgit.model.Resevepayment;

public interface ResevepaymentDao {
	public int insertResevepayment(Resevepayment resevepayment) throws SQLException;
	
	public int deleteresevepaymentByNoId(String res_no)  throws SQLException;
	
	public Resevepayment selectResevepayment(String res_no) throws SQLException;
	
	public int updateBankNum(Resevepayment resevepayment) throws SQLException;
}
