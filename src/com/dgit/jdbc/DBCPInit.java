package com.dgit.jdbc;

import java.sql.DriverManager;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;


public class DBCPInit extends HttpServlet {
	@Override
	public void init(ServletConfig config) throws ServletException {
		loadJdbcDriver();//드라이버 로딩 함수
		initConnectionPool();	//커넥션 풀 만들어주는 함수
	}
	private void loadJdbcDriver(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	// 쓸수 있는 커넥션을 검사?!
	private void initConnectionPool(){
		try{
			
		String jdbcDriver = "jdbc:mysql://localhost:3306/forest?"
				+ "userUnicode=true&characterEncoding=utf8";
		String user = "root";
		String password = "rootroot";
		
		ConnectionFactory connFactory =
				new DriverManagerConnectionFactory(jdbcDriver, user,password);
		
		PoolableConnectionFactory poolableConnectionFactory = 
				new PoolableConnectionFactory(connFactory, null);
		//커넥션을 검사할 때 사용할 쿼리를 설정한다.
		//select 1은 마이크로소프트 SQL Server에서 권장하는 방법이다.
		poolableConnectionFactory.setValidationQuery("select 1");	//노는 커넥션은 없는지 확인
		
		GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
		// 풀에 있는 유휴 커넥션 검사 주기를 설정. 단위 밀리초. 5분설정
		poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 5L);	//검사주기
		// true이면 유휴 커넥션이 유효한지 검사.
		poolConfig.setTestWhileIdle(true);	// 주기가 있어야 true가 될수 있다
		// 커넥션 풀이 유지할 최소 유휴 커넥션 개수
		poolConfig.setMinIdle(4);	//최소 4개 보장
		// 풀이 관리하는 커넥션의 최대 개수를 설정
		poolConfig.setMaxIdle(50);	// 쓰레기까지 포함 50개
		
		GenericObjectPool<PoolableConnection> connectionPool = 
				new GenericObjectPool<>(poolableConnectionFactory, poolConfig);
		poolableConnectionFactory.setPool(connectionPool);
		
		Class.forName("org.apache.commons.dbcp2.PoolingDriver");
		PoolingDriver driver =
				(PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
		// 아래 있는 chap14는 커넥션 풀 이름
		// ex)jdbc:apache:commons:dbcp:chap14 요청시 불러주는 방법
		driver.registerPool("forest", connectionPool);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
		
	}
}
