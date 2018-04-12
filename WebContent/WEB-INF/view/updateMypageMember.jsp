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
		height: 730px;
		overflow: hidden;
	}
	#content_member{
		width: 930px;
		float: right;
	}
	#content_h3{
		width: 930px;
		height: 77px;
		border-bottom: 1px solid #ccc;
	}
	#content_h3>h3{
	 	padding: 20px 0 15px 0;
	 	font-size: 32px;
	}
	#content_content{
		width: 99%;
		height: 390px;
		border: 1px solid #ccc;
		margin-top: 50px;

	}

</style>
</head>
<body>
	 <jsp:include page="header.jsp"/> 
		<div id="content">
		
		<jsp:include page="mypage_aside.jsp"/>
		<div id="content_member">
			<div id="content_h3">
				<h3>웹 고객 정보</h3>
			</div>
		</div>
		
		<div id="content_content">
		</div>
		
		</div>
	
	 <jsp:include page="footer.jsp"/> 
</body>
</html>