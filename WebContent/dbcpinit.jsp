<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	try{
		String jdbcDriver = "jdbc:apache:commons:dbcp:forest";
		conn = DriverManager.getConnection(jdbcDriver);
		if(conn != null){
			out.print("커넥션 풀에 연결되었습니다.");
		}
		
	}finally{
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException ex){
				
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>