<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<% pageContext.include("header.jsp"); %>
	</header>
		
	<footer>
		<% pageContext.include("/module/bottom.jsp"); %>
	</footer>
</body>
</html>