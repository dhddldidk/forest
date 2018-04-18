<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
}

#content_count {
	width: 100%;
	height: 60px;
	line-height: 60px;
	background-color: rgba(213, 213, 213, 0.3);
	border-bottom: 1px solid #ccc;
}

#content_span {
	display: inline-block;
	width: 530px;
	margin-left: 20px;
	font-size: 13px;
	font-weight: 600;
}

#content_count>select {
	width: 100px;
	height: 37px;
}

#content_count>input {
	width: 180px;
	height: 30px;
}

#content_a {
	display: inline-block;
	width: 50px;
	height: 30px;
	border: 1px solid black;
	line-height: 30px;
	background-color: #797d89;
	color: white;
	text-align: center;
}

#content_member {
	width: 100%;
	height: 550px;
	margin-top: 30px;
}

#content_div {
	width: 100%;
	height: 60px;
	background-color: rgba(213, 213, 213, 0.5);
	border-top: 2px solid black;
	border-bottom: 1px solid #ccc;
}

#content_div>span {
	display: inline-block;
	font-size: 15px;
	font-weight: bold;
	height: 20px;
	margin-top: 15px;
	text-align: center;
}

#span_no {
	width: 80px;
	border-right: 1px solid #ccc;
}

#span_name {
	width: 80px;
	border-right: 1px solid #ccc;
}

#span_id {
	width: 80px;
	border-right: 1px solid #ccc;
}

#span_phone {
	width: 120px;
	border-right: 1px solid #ccc;
}

#span_email {
	width: 160px;
	border-right: 1px solid #ccc;
}

#span_addr {
	width: 265px;
	border-right: 1px solid #ccc;
}

#span_data {
	width: 100px;
}

.content_divmember {
	width: 100%;
	height: 80px;
	border-bottom: 1px solid #ccc;
	overflow: hidden;
}

.content_divmember>span {
	display: inline-block;
	font-size: 13px;
	text-align: center;
}

.c_no {
	width: 80px;
	height: 80px;
	border-left: 1px solid #ccc;
	float: left;
	line-height: 80px;
	
}

.c_name {
	width: 82px;
	height: 80px;
	border-left: 1px solid #ccc;
	float: left;
	line-height: 80px;
	color:#2d905b;
}

.c_id {
	width: 85px;
	height: 80px;
	border-left: 1px solid #ccc;
	float: left;
	line-height: 80px;
	color:#2d905b;
}

.c_phone {
	width: 125px;
	height: 80px;
	border-left: 1px solid #ccc;
	float: left;
	line-height: 80px;
	color:#2d905b;
}

.c_email {
	width: 162px;
	height: 80px;
	border-left: 1px solid #ccc;
	float: left;
	line-height: 80px;
}

.c_divaddr {
	width: 270px;
	height: 80px;
	border-left: 1px solid #ccc;
	border-right: 1px solid #ccc;
	float: left;
}

.c_divaddr>span {
	margin-left: 5px;
}

.c_data {
	width: 105px;
	height: 80px;
	line-height: 80px;
}

#div_a {
	width: 100%;
	height: 50px;
	margin-top: 40px;
	overflow: hidden;
	text-align: center;
}

#div_left {
	/*  width: 8%; */
	height: 50px;   
	float: left;
	margin-left: 330px;
	margin-right: 3px;
}

#div_left>a>img {
	border: 1px solid #ccc;
}

#div_pagea {
/* 	width: 22%; */
	height: 50px;
	margin: 0 auto;
	float: left;
}

#div_pagea>a {
	display: inline-block;
	width: 32px;
	height: 32px;
	border: 1px solid #ccc;
	text-align: center;
	line-height: 30px;
	font-size: 15px;
	margin-left: 2px;
}

#div_right {
	/* width: 8%; */
	height: 50px;
	float: left;
	margin-left: 3px;
}

#div_right>a>img {
	border: 1px solid #ccc;
}
   
#div_aleft {
	display: none;
}

#div_astart {
	display: none;
}

#div_aright {
	display: none;
}

#div_aend {
	visibility: hidden;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function() {
		
		
		$("#content_a").click(function(){
			  
			var search =$("input[name='name']").val();
			
			if(search.length==0){
				alert("검색할 단어가 없습니다.");
				return false;
			}
			
			alert(search);
			
			$.ajax({
				url : "adminMember.do",
				type : "post",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				success : function(data) {
				console.log(data);
				}
			})
		})   
					
	})
</script>
</head>
</head>
<body>
	<jsp:include page="admin_header.jsp" />

	<div id="content">
		<jsp:include page="memberSide.jsp" />
		<div id="content_login">
			<div id="content_h3">
				<h3>회원 관리</h3>
			</div>
			<div id="content_content">
				<div id="content_count">
					<span id="content_span">총 회원수 : ${usersize }</span>
					 <select name="sel">
						<option value="이름">이름</option>
						<option value="아이디">아이디</option>
						<option value="휴대전화">휴대전화</option>
					</select> 
					<input type="text" name="name"> 
					<a href="#" id="content_a">검색</a>
				</div>

				<div id="content_member">
					<div id="content_div">
						<span id="span_no">No</span> <span id="span_name">이름</span>
						 <span id="span_id">아이디</span> <span id="span_phone">연락처</span>
						  <span id="span_email">메일</span> <span id="span_addr">주소</span>
						   <span id="span_data">가입일자</span>
					</div>

					<!-- 들어올내용 -->
					<c:forEach var="list" items="${user }" varStatus="p">
					<div class="content_divmember">
					<span class="c_no">${stateno-p.index}</span>
					<span class="c_name">${list.uName }</span>
					<span class="c_id">${list.uId }</span>
					<span class="c_phone">${list.uPhone }</span>
					<span class="c_email">${list.uEmail }</span>
					<div class='c_divaddr'>
					<br>
					<c:set var="add" value="${fn:split(list.uAddress,',')}" />				
					<span class='c_addr1'>${add[0] }</span><br>
					<span class='c_addr2'>${add[1] }</span><br>
					<span class='c_addr3'>${add[2] }</span>
					</div>
					<span class='c_data'> <fmt:formatDate value="${list.uDate }" pattern="yyyy-MM-dd"/></span>			
					</div>
					</c:forEach>
				</div>

				<div id="div_a">
					<%-- ${page }
					<c:if test="${page <= 5 }">
	
				<c:forEach var="p" begin="${pages }" end="${page}"> 	
						<a href="adminMember.do?pa=${p }">${p }</a>
				</c:forEach>
					</c:if> --%>


					<div id="div_left">
					
					<c:if test="${pagestart > 1}">
					<a href="adminMember.do?pa=${1 }" >
					<img src="/forest/css/images/login/startpage.png" id="div_astart"></a>
					<script type="text/javascript">
					$("#div_astart").show();
					</script>
					</c:if>
			
					<c:if test="${pages > 5 }">
						<a href="adminMember.do?pa=${(pages-5) }&key=left" >
						<img src="/forest/css/images/login/left.png" id="div_aleft"></a>
						
					</c:if>
					<script type="text/javascript">
					$("#div_aleft").show();
					</script>
					</div>


					<div id="div_pagea">
					<c:if test="${page > 5 }"> 
					<c:forEach var="p" begin="${pages }" end="${page}"> 	
					<c:if test="${p <pages+5 }">
						<a href="adminMember.do?pa=${p }">${p }</a>
					</c:if>
					</c:forEach>
					</c:if>  
			
			
					<c:if test="${page <= 5 }">
					<c:forEach var="p" begin="${pages }" end="${page}"> 	
						<a href="adminMember.do?pa=${p }">${p }</a>
					</c:forEach>
					</c:if>
					</div>

					<div id="div_right">
					<c:if test="${page > 5 &&(page-pages)>5}">
					
					<a href="adminMember.do?pa=${(pages+5) }&key=right"><img src="/forest/css/images/login/right.png" id="div_aright"></a>					
					<script type="text/javascript">
					$("#div_aright").show();
					</script>
					</c:if>	
					
					<c:if test="${page > 5  &&(page-pages)>5}">
					<a href="adminMember.do?pa=${page }"><img src="/forest/css/images/login/endpage.png" id="div_aend"></a>
					<script type="text/javascript">
					$("#div_aend").css("visibility","visible");
					</script>
					</c:if> 		
					</div> 


				</div>

			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>