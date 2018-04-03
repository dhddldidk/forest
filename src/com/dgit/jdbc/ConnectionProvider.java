package com.dgit.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	public static Connection getConnection() throws SQLException{
		String jdbcDriver = "jdbc:apache:commons:dbcp:guestbook";
		return DriverManager.getConnection(jdbcDriver);
	}
}
