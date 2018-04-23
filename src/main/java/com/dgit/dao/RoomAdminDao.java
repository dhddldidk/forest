package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.dgit.model.RoomAdmin;

public interface RoomAdminDao {
	// 관리자 RoomList
	public List<RoomAdmin> selectRoomAllListAdmin() throws SQLException;
	
	//숙소관리 추가 insert
	public int insertRoomsAdmin(RoomAdmin roomAdmin) throws SQLException;
	
	// 숙소관리 검색
	public List<RoomAdmin> selectSearchByRooms(Map<String,Object> map) throws SQLException;
	
	// 숙소관리 방번호로 찾기
	public RoomAdmin selectRoomsbyrNo(int rNo) throws SQLException;
}