package com.dgit.dao;

import java.sql.SQLException;
import java.util.List;

import com.dgit.model.ForestChart;

public interface ForestChartDao {
	public List<ForestChart> selectForestByYears(ForestChart chart) throws SQLException;
}
