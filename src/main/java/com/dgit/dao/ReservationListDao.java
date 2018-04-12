package com.dgit.dao;

public class ReservationListDao {
	private static final ReservationListDao dao = new ReservationListDao();
	
	private ReservationListDao(){
		
	}
	
	public static ReservationListDao getInstance() {
		return dao;
	}
	
	
	
	
}











