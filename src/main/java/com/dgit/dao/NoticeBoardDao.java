package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Notice;

public interface NoticeBoardDao {
	
	public List<Notice> selectNoticeAll() throws SQLException;
	
	public Notice selectNoticeNo(int nb_no) throws SQLException;
}
