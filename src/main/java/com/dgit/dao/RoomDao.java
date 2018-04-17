package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Reservation;
import com.dgit.model.Room;

public interface RoomDao {
	public List<Room> selectByAll();
	
	
	
	
	
	public Room selectRoomByNO(Reservation reservation) throws SQLException;
}
