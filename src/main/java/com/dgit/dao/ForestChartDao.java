package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.ForestChart;
import com.dgit.model.ReservationChart;

public interface ForestChartDao {
	public List<ForestChart> selectForestByYears(ForestChart chart) throws SQLException;
	public ReservationChart selectResChart() throws SQLException;
}
