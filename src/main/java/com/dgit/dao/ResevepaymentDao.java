package com.dgit.dao;

import java.sql.SQLException;

import com.dgit.model.Resevepayment;

public interface ResevepaymentDao {
	public int insertResevepayment(Resevepayment resevepayment) throws SQLException;
}
