package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.ForestName;

public interface ChoiceForestDao {
	// 서울경기지역
	public List<ForestName> selectListForestNameBySGyeonggi() throws SQLException;

	// 강원
	public List<ForestName> selectListForestNameByGangwon() throws SQLException;

	// 충북
	public List<ForestName> selectListForestNameByChungbuk() throws SQLException;

	// 충남
	public List<ForestName> selectListForestNameByChungnam() throws SQLException;

	// 전북
	public List<ForestName> selectListForestNameByJeonbuk() throws SQLException;

	// 전남
	public List<ForestName> selectListForestNameByJeonnam() throws SQLException;

	// 경북
	public List<ForestName> selectListForestNameByGyeongbuk() throws SQLException;

	// 경남
	public List<ForestName> selectListForestNameByGyeongnam() throws SQLException;
}
