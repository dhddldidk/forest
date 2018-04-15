package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Reservation;

public interface ReservationDao {
	
	public List<Reservation> selectReservationById(String u_id) throws SQLException;
	
	public List<Reservation> selectRoomByNo(Reservation reservation) throws SQLException;
	
	public Reservation selectReservationinquiryById(String res_no) throws SQLException;
	
	public Reservation deleteByNoId(Reservation reservation) throws SQLException;
}
