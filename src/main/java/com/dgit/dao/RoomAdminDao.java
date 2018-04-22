package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.RoomAdmin;

public interface RoomAdminDao {
	// 관리자 RoomList
	public List<RoomAdmin> selectRoomAllListAdmin() throws SQLException;
}
