package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.Facilities;

public interface FacilitiesDao {
	public List<Facilities> selectListAllFacilities() throws SQLException;
}
