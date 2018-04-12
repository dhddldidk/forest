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
		height:700px;	
		margin: 0 auto;		
		overflow: hidden;
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
	#loginR{
		width: 90%;
		height: 300px;
		margin: 0 auto;
		background-color:rgba(255,242,158,0.5);
		margin-top: 30px;
	}
	#login_sub1{
		width: 60%;
		height: 200px;
		margin: 0 auto;
		text-align: center;
		border: 1px solid rgba(255,242,158,0.3);
	}

	#LoginRimg{
		width: 35%;
		height: 100px;
		margin: 0 auto;
		margin-top: 20px;
	}
	#LoginRimg img{
		color: #ccc;
		width:90%;
	}
	#idp{
		margin-top: 40px;
		font-size: 18px;
		color:#121212;
		
	}
	#idspan{
		color:#2F9D27;
	}
	#login_sub2{
		width: 60%;
		height: 100px;
		border-top:1px solid #ccc;
		margin: 0 auto;
	}
	#login_span{
		display: inline-block;
		margin-top: 20px;
		margin-bottom: 10px;
	}
	#btnlogin{
		display:inline-block;
		width: 100px;
		height: 40px;
		margin-top: 40px;
		margin-left: 430px;
		font-size: 14px;
		line-height: 40px;	
		background-color:rgba(41,144,91,1);
		text-align:center;
		color: white;	
		
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
			
			
			<div id="loginR">
				<div id="login_sub1">

				<div id="LoginRimg">
					 <img src="/forest/css/images/common/sub_2_bg.png">
				</div>
				<p id="idp">
			<span id="idspan"> ${name } </span>님의 웹고객 가입이 완료 되었습니다.</p>
	
			</div>
				<div id="login_sub2">
					
					<span id="login_span">＊고객정보는 마이페이지 웹고객정보에서 변경하실 수 있습니다.</span><br>
					<span>＊보다 안정적인 서비스를 제공하는 국립자연휴양림관리소가 되도록 노력하겠습니다.</span>
				</div>
			</div>
			<a href="loginLogin.do" id="btnlogin">로그인</a>
		</div>
			
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>