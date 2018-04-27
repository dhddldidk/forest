package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.dgit.model.Forest;
import com.dgit.model.Reservation;

public interface ForestDao {
	// 메인 슬라이더 전국Forest
	public List<Forest> selectListAllForest() throws SQLException;

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

	// 휴양림안내 전국Forest
	public List<Forest> selectIntroAllForest() throws SQLException;

	// 휴양림안내 서울/경기
	public List<Forest> selectIntroSGyeonggi() throws SQLException;

	// 휴양림안내 강원
	public List<Forest> selectIntroGangwon() throws SQLException;

	// 휴양림안내 충북
	public List<Forest> selectIntroChungbuk() throws SQLException;

	// 휴양림안내 충남
	public List<Forest> selectIntroChungnam() throws SQLException;

	// 휴양림안내 전북
	public List<Forest> selectIntroJeonbuk() throws SQLException;

	// 휴양림안내 전남
	public List<Forest> selectIntroJeonnam() throws SQLException;

	// 휴양림안내 경북
	public List<Forest> selectIntroGyeongbuk() throws SQLException;

	// 휴양림안내 경남
	public List<Forest> selectIntroGyeongnam() throws SQLException;

	// 휴양림 검색
	public List<Forest> selectSearchByForest(Map<String,Object> map) throws SQLException;
	
	//insert 휴양림 추가
	public int insertForestIntro(Forest forest) throws SQLException;
	
	// 휴양림번호로 찾기
	public Forest selectForestbyForNo(int forNo) throws SQLException;
	
	//update 휴양림 수정
	public int updateForestIntro(Forest forest) throws SQLException;
	
	//delete 휴양림 삭제
	public int deleteForestIntroByForNo(int forNo) throws SQLException;
	
}
