<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#content {
	width: 1180px;
	margin: 0 auto;
	height: 900px;
	overflow: hidden;
}

#content_login {
	width: 930px;
	height: 800px;
	float: right;
}

#content_h3 {
	width: 930px;
	height: 77px;
	border-bottom: 1px solid #ccc;
}

#content_h3>h3 {
	padding: 20px 0 15px 0;
	font-size: 32px;
}
/* 안에큰div */
#content_content {
	width: 99%;
	height: 700px;
	margin-top: 50px;
	border: 1px solid red;
}

</style>
</head>
<body>
	<jsp:include page="admin_header.jsp" />

	<div id="content">
		<jsp:include page="notice_Side.jsp" />
		<div id="content_login">
			<div id="content_h3">
				<h3>질문과 답변 관리</h3>
			</div>
		<div id="content_content">
			안에내용
		</div>
		</div>

	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>