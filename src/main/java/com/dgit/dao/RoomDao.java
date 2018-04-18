package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.dgit.model.Reservation;
import com.dgit.model.Room;

public interface RoomDao {
	public List<Room> selectByAll(Map<String, Object> hm) throws SQLException;
	
	
	
	
	
	public Room selectRoomByNO(Reservation reservation) throws SQLException;
}
