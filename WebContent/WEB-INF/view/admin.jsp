<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 #content{
		width: 1180px;
		margin: 0 auto;		
		height: 1500px;
		overflow: hidden;
	}
	#content_login{
		width: 930px;
		height:600px;
		border:1px solid red;
		float: right;
	} 
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
</head>
<body>
	<jsp:include page="admin_header.jsp"/>
	
	<div id="content">
		<jsp:include page="memberSide.jsp"/>
		<div id="content_login">
		
		</div>
		
	</div>
	
	<%-- <jsp:include page="mainSection.jsp"/> --%>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>