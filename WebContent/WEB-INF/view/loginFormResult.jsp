<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국립자연휴양림관리소-웹고객 가입</title>
<style>
	#content{
		width: 1180px;
		height:800px;
		
		margin: 0 auto;		
	}
	#content_loginForm{
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
	#cotent_agree>ul{
		width: 100%;
		height: 66px;
		margin-top: 40px;
		position: relative;
	}
	#cotent_agree>ul>li{
		width: 241px;
		height: 65px;
		background-color:rgba(213,213,213,0.5);
		float: left;
		line-height: 65px;
		border-radius: 50px;
		text-align: center;
		font-size: 15px;
		font-weight: 700;
		position: absolute;
	}
	/* 약관동의위에 */
	#cotent_agree>ul>li:FIRST-CHILD {
		margin-left: 115px;
		
	}
	#cotent_agree>ul>li:NTH-CHILD(2){
		top: 0;
		left: 335px;
	}
	#cotent_agree>ul>li:NTH-CHILD(3){
		top: 0;
		left: 560px;
		background-color:rgba(41,144,91,1);
		color: white;
		z-index: 5;
	}
	#content_number{
		margin-top:15px;
		width: 100%;
		height: 37px;
	}
	#content_number>ul>li{
		float: left;
		width: 200px;
		text-align: center;
	}
	#content_number>ul>li:FIRST-CHILD{
		margin-left: 140px;
	}
	#content_number>ul>li:NTH-CHILD(2){
		margin-left: 20px;
	}
	#content_number>ul>li:NTH-CHILD(3){
		margin-left: 20px;
	}
	#content_number>ul>li>span{
		display: inline-block;
		line-height: 37px;
	}
	#content_number>ul>li>.content_num{
		width: 37px;
		height: 37px;
		border-radius: 50px;
		background-color: #6F6F6F;
		color: white;
		font-weight: bold;
		margin-left: 3px;
		margin-right: 5px;
	}
	.content_com{
		color:#ccc;
		font-size: 5px;
		letter-spacing: 5px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	/* 웹고객가입 색 */
	$("#loginSide_web").css("color","#2d905b");
	
 
})
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="content">
		<jsp:include page="loginSide.jsp"/>
		<div id="content_loginForm">
			<div id="content_h3">
				<h3>웹고객 가입</h3>
			</div>
			<div id="cotent_agree">
				<ul>
					<li>약관동의</li>
					<li>정보입력</li>
					<li>가입완료</li>
				</ul>
			</div>
			<div id="content_number">
				<ul>
					<li><span class="content_com">●●●</span><span class="content_num">01</span><span class="content_com">●●●</span></li>
					<li><span class="content_com">●●●</span><span class="content_num">02</span><span class="content_com">●●●</span></li>
					<li><span class="content_com">●●●</span><span class="content_num">03</span><span class="content_com">●●●</span></li>
				</ul>
			</div>
			
			
			
			
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>