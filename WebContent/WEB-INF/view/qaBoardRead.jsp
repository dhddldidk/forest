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
	
	.content_agree_01_h4{
		clear:both;
		width: 100%;
		height: 45px;
		font-size: 18px;
		font-weight: 600;
		line-height: 35px;
		margin-left: 10px;
		color:#2d905b;
	}
	#divWrite{
	
		width: 100%;
		height: 500px;
		border: 1px solid red;
	}
	#divid{
		width: 100%;
		height: 40px;
		border-bottom: 1px solid #ccc;
		overflow: hidden;
		}
	#divid>span{
		float: left;
		margin-left: 10px;
	}
	.c_1{
		font-weight: bold;
		margin-left: 10px;
		margin-right: 15px;
	}
	#c1{
		width: 160px;
		height: 20px;
		border-right: 1px solid #ccc;
		float: left;
		margin-top: 10px;
		
	}
	#c2{
		width: 160px;
		height: 20px;
		float: left;
		margin-top: 10px;
	}
	#c3{
		width: 130px;
		height: 20px;
		float: right;
		margin-top: 10px;
		border-left: 1px solid #ccc;
	}
	#divfile{
		width: 100%;
		height: 50px;
		border-bottom: 1px solid #ccc;
		overflow: hidden;
	}
	#df1{
		float: left;
		width: 120px;
		height: 30px;
		font-weight: bold;
		margin-left:10px;
		border-right: 1px solid #ccc;
		margin-top: 15px;
	}
	#df2{
		float: left;
		margin-left: 15px;
		margin-top: 15px;
	}
	#divcontent{
		width: 100%;
		min-height: 400px;
		border: 1px solid red;
		margin: 20px;
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
				<div class="content_agree_01_h4">
					제목이요
				</div>
			</div>
			  
			<div id="divWrite">   
				<div id="divid">
					<div id="c1">
					<span class='c_1'>등록자</span>
					<span class='c_2'>매미</span>
					</div>
					<div id="c2">
					<span class='c_1'>등록일</span>
					<span class='c_2'>2018-04-12</span>
					</div>
					<div id="c3">
					<span class='c_1'>조회수</span>
					<span class='c_2'>1</span>
					</div>
				</div>
				  
				  <div id="divfile">
				  			<span id="df1">첨부 파일</span>
				  			<span id="df2">첨푸파일이 있을까???</span>
				  </div>
				  
				  <div id="divcontent">
				  		rkwqnldwqddllqwdwmlqdw
				  </div>
				  
				  
			</div>
			
		</div>
		
		</div>
	</div>
	
	
	<jsp:include page="footer.jsp"/>
</body>
</html>