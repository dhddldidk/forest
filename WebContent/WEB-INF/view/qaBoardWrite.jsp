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
		height: 1450px;
		overflow: hidden;
	}
	#content_login{
		width: 930px;
		height:77px;
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
	#content_content {
	width: 99%;
	height: 1350px;
	margin-top: 50px;
	border: 1px solid red;
	}
	#div_span{
		width: 100%;
		height: 50px;
		overflow: hidden;
	}
	#spandiv{
		float:left;
		width: 50px;
		border-top: 2px solid #2d905b;
	}
	#divWrite{
	
		width: 100%;
		height: 500px;
		border: 1px solid red;
	}
	.content_agree_01_h4{
		clear:both;
		width: 100%;
		height: 45px;
		font-size: 18px;
		font-weight: 600;
		line-height: 35px;
		margin-left: 10px;
	}
	.content_agree_topbar{
		float:left;
		margin-left:10px;
		width:50px;
		border-top: 2px solid #2d905b;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
	
	<div id="content">
		<jsp:include page="introductionSide.jsp"/>
		<div id="content_login">
		<div id="content_h3">
				<h3>질문과 답변</h3>	
		</div>
		
		<div id="content_content">
			<div id="div_span">
				<span class="content_agree_topbar"></span>
				<div class="content_agree_01_h4">
					질문 등록
				</div>
			</div>
			
			<div id="divWrite">
				<form action="">
					<div>
						<label>제목</label>
					</div>
				</form>
			</div>
			
		</div>
		
		</div>
	</div>
	
	
	<jsp:include page="footer.jsp"/>
</body>
</html>