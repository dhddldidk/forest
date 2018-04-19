package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.dgit.model.Reservation;
import com.dgit.model.Room;
import com.dgit.model.RoomJoinForest;

public interface RoomDao {
	public List<Room> selectByAll(Map<String, Object> hm) throws SQLException;
	public RoomJoinForest selectRoomJoinForestByNo(int no)  throws SQLException;
	public int insertReservationRoom(RoomJoinForest reser) throws SQLException;
	
	
	
	
	public Room selectRoomByNO(Reservation reservation) throws SQLException;
}
