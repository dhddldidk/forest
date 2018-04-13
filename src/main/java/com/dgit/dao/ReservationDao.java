package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;


import com.dgit.model.Reservation;

public interface ReservationDao {
	
	public List<Reservation> selectReservationById(String u_id) throws SQLException;
	
	
}
