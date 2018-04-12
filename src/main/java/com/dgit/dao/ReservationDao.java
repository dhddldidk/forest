package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.dgit.model.Reservation;
import com.dgit.model.Room;

public interface ReservationDao {
	
	public List<Reservation> selectReservationById(String u_id) throws SQLException;
	
	public List<Reservation> selectRoomByNo(String u_id) throws SQLException;
	
}
