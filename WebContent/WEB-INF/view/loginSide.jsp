<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#side{
		width: 220px;
		float: left;
	}
	#side>#side_h2{
		padding: 33px 0 19px 15px;
   		height: 23px;
   		border: 1px solid #fff;
   		
	}
	#side_h2>h2{
		color:#2d905b;
		font-size: 24px;
		font-weight: 600;
	}
	/* ul길이 */
	#side>ul{
		border-top: 2px solid #2d905b;
  	 	font-weight: 600;
  	 	border-left: 1px solid #ccc;
  	 	border-right: 1px solid #ccc; 
  	 	height: 1300px; 
	}
	#side>ul>li:NTH-CHILD(1),#side>ul>li:NTH-CHILD(2) {
		width: 100%;
		height: 48px;
		border-bottom: 1px solid #ccc;
		font-size: 15px;
		line-height: 48px;
		
	}
	#side>ul>li:NTH-CHILD(1)>a ,#side>ul>li:NTH-CHILD(2)>a {
		margin-left: 10px;
		font-weight: 600;
	}
	#side>ul>li:LAST-CHILD {
		text-align: center;
		margin-top: 5px;
	}
	#side>ul>li:NTH-CHILD(1)>a:HOVER,#side>ul>li:NTH-CHILD(2)>a:HOVER  {
		color:  #2d905b;
	}
</style>
</head>
<body>
	<div id="side">
		<div id="side_h2"><h2>기타서비스</h2></div>
		<ul>
			<li>
			<a href="#">로그인</a></li>
			<li>
			<a href="login.do" id="loginSide_web">웹고객가입</a></li>
			<li>
				<a href="#"><img src="/forest/css/images/login/sideimg.PNG"></a>
			</li>
		</ul>		
	</div>
</body>
</html>