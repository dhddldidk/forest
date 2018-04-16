<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 630px;
		overflow: hidden;
	}
	#content_member{
		width: 930px;
		float: right;
	}
	#content_mypageaside{
		width: 250px;
		float: left;
	}
	/* side메뉴 magin */
	#content_mypageaside>#aside{
		margin: 0;
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
		margin-top: 50px;

	}
	.content_agree_topbar{
		float:left;
		margin-left:10px;
		width:50px;
		border-top: 2px solid #2d905b;
	}
	#content_h4{
		clear: both;
		width: 100%;
		height: 45px;
		font-size: 18px;
		font-weight: 600;
		line-height: 35px;
		margin-left: 10px;
	}
	#content_text{
		width: 99%;
		height:277px;
		margin:0 auto;
		background-color:rgba(213,213,213,0.3);
		margin-top: 20px;
	}
	.content_member{
		width: 100%;
		height: 55px;
		line-height: 55px;
	}
	.content_member>label{
		float: left;
		width: 100px;
		margin-left: 20px;
		color: #2d905b;
		font-weight: 600;
	}
	.content_span{
		margin-left: 40px;
		border-bottom: 1px solid #ccc;
		display: inline-block;
		width: 80%;
	}
	#content_btn{
		width: 35%;
		height: 30px;
		margin:0 auto;
		margin-top: 40px;
	}
	#content_btn>a{
		display: inline-block;
		width: 120px;
		height: 37px;
		border: 1px solid black;
		line-height: 37px;
		background-color: #797d89;
		color: white;
		text-align: center;
		margin: 10px;
	}
</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<body>
	 <jsp:include page="header.jsp"/> 
		<div id="content">
		
		
		<div id="content_mypageaside">
		<jsp:include page="mypage_aside.jsp"/>
		</div>
		<div id="content_member">
			<div id="content_h3">
				<h3>웹 고객 정보</h3>
			</div>
		
		
		<div id="content_content">
			<div id="content_span">
			<span class="content_agree_topbar"></span>
			<div id="content_h4">
				기본정보
				</div>
			</div>
			
			<div id="content_text">
				
				<div class="content_member">
					<label>아이디/이름</label>
					<span class="content_span">${user.uId }/${user.uName }</span>
				</div>
				<div class="content_member">
					<label>주소</label>
					<span class="content_span">${user.uAddress }</span>
				</div>
				<div class="content_member">
					<label>휴대전화</label>
					<span class="content_span">${user.uPhone }</span>
				</div>
				<div class="content_member">
					<label>이메일</label>
					<span class="content_span">${user.uEmail }</span>
				</div>
				<div class="content_member">
					<label>가입일</label>
					<span class="content_span">
					<fmt:formatDate value="${user.uDate }" pattern="yyyy-MM-dd"/>
					</span>
				</div>	
			</div>
			
			<div id="content_btn">
				<a href="updateMemberCheck.do">정보 수정</a>
				<a href="updateMemberpassword.do">비밀번호 변경</a>
			</div>
			
		</div>
		</div>
		
		
		
		</div>
	
	 <jsp:include page="footer.jsp"/> 
</body>
</html>