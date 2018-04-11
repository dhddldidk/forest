package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Forest;

public interface ForestDao {
	// 서울경기지역
	public List<Forest> selectListSGyeonggi() throws SQLException;

	// 강원
	public List<Forest> selectListGangwon() throws SQLException;

	// 충북
	public List<Forest> selectListChungbuk() throws SQLException;

	// 충남
	public List<Forest> selectListChungnam() throws SQLException;

	// 전북
	public List<Forest> selectListJeonbuk() throws SQLException;

	// 전남
	public List<Forest> selectListJeonnam() throws SQLException;

	// 경북
	public List<Forest> selectListGyeongbuk() throws SQLException;

	// 경남
	public List<Forest> selectListGyeongnam() throws SQLException;
}
