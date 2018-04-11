<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	aside{
		float:left;
	
	}
	#section{		
		padding-left:590px;	
	
	}
</style>
</head>
<body>
	<header>
		<% pageContext.include("/WEB-INF/view/header.jsp"); %>
	</header>
	<aside>
		<% pageContext.include("mypage_aside.jsp"); %>			
	</aside>
	<div id="section">
		<% pageContext.include("mypage_section_inquiry_rescancel.jsp"); %>
	</div>
	<% pageContext.include("/WEB-INF/view/footer.jsp"); %>
</body>
</html>