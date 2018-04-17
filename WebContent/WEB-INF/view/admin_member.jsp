<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 #content{
		width: 1180px;
		margin: 0 auto;		
		height: 900px;
		overflow: hidden;
	}
	#content_login{
		width: 930px;
		height:800px;
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
	/* 안에큰div */
	#content_content{
		width: 99%;
		height: 700px;
		margin-top: 50px;
	}
	#content_count{
		width: 100%;
		height: 60px;
		line-height: 60px;
		background-color:rgba(213,213,213,0.3);
		border-bottom: 1px solid #ccc;
	}
	#content_span{
		display: inline-block;
		width: 530px;
		margin-left: 20px;
		font-size: 13px;
		font-weight: 600;		
	}
	#content_count>select{
		width: 100px;
		height: 37px;
	}
	#content_count>input{		
		width: 180px;
		height: 30px;
	}
	#content_a{
		display: inline-block;
		width: 50px;
		height: 30px;
		border: 1px solid black;
		line-height: 30px;
		background-color: #797d89;
		color: white;
		text-align: center;
	}
	#content_member{
		width: 100%;
		height: 550px;
		margin-top: 30px;
	}
	#content_div{
		width: 100%;
		height: 60px;
		background-color:rgba(213,213,213,0.5);
		border-top: 2px solid black;
		border-bottom: 1px solid #ccc;
	}
	#content_div>span{
		display: inline-block;
		font-size: 15px;
		font-weight: bold;
		height:20px;
		margin-top:15px;	 
		text-align: center;
	}
	#span_no{
		width: 80px;
		border-right: 1px solid #ccc;
	}
	#span_name{
		width: 80px;
		border-right: 1px solid #ccc;
	}
	#span_id{
		width: 80px;
		border-right: 1px solid #ccc;
	}
	#span_phone{
		width: 120px;
		border-right: 1px solid #ccc;
	}
	#span_email{
		width: 160px;
		border-right: 1px solid #ccc;
	}
	#span_addr{
		width: 265px;
		border-right: 1px solid #ccc;
	}
	#span_data{
		width: 100px;		
	}
	.content_divmember{
		width: 100%;
		height: 80px;
		border-bottom:1px solid #ccc;
		overflow: hidden;
	}
	.content_divmember>span{
		display: inline-block;
		font-size: 13px; 
		text-align: center;
	}
	.c_no{
		width: 80px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_name{
		width: 82px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_id{
		width: 85px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_phone{
		width: 125px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_email{
		width: 162px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_divaddr{
		width: 270px;
		height: 80px;
		border-left:1px solid #ccc;
		border-right:1px solid #ccc;
		float: left;
	}
	.c_divaddr>span{
		margin-left: 5px;
	}
	.c_data{
		width: 105px;
		height: 80px;
		line-height: 80px;
	}
	#div_a{
		width: 100%;
		height: 50px;
		margin-top: 40px;
		overflow: hidden;
	}

	#div_left{
		/* width: 8%;
		height: 50px;  */
		float: left;
		margin-left: 330px;
		margin-right: 3px;
	}
	#div_left>img{
		border: 1px solid #ccc;
	}
	#div_pagea{
		 width: 20.3%;
		height: 50px;
		margin: 0 auto;
	 	float: left; 
	}
	#div_pagea>a{
		display: inline-block;
		width: 32px;
		height: 32px;
		border: 1px solid #ccc;
		text-align: center;
		line-height: 30px;
		font-size: 15px;
		margin-left: 2px;
		
	}
	#div_right{
		width: 8%;
		height: 50px;
		float: left;
		margin-left: 3px;
	}
	#div_right>img{
		border: 1px solid #ccc;
	}
 	#div_aleft{
		display: none;
	} 
	 #div_astart{
		visibility: hidden;
	}  
	#div_aright{
		display: none;
	}
	#div_aend{
		visibility: hidden;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$.ajax({
			url:"adminMember.do",
			type:"get",
			dataType:"json",//서버로 부터 돌려받을 데이터의 타입
			data:{"all":"all"},
			success:function(data){
				console.log(data);
				
				var name="";
				$("#content_span").append("총 회원수 :"+data.usersize+"");
				for(var i =0;i<data.user.length;i++){
					
					var $span1= $("<span class='c_no'>").html(i);
					var $span2= $("<span class='c_name'>").html(data.user[i].uName);
					var $span3= $("<span class='c_id'>").html(data.user[i].uId);
					var $span4= $("<span class='c_phone'>").html(data.user[i].uPhone);
					var $span5= $("<span class='c_email'>").html(data.user[i].uEmail);
					var addr =data.user[i].uAddress;
					
					date = new Date(data.user[i].uDate);
					
					var month = date.getMonth()+1;
					month = String(month);
					
					var da = date.getDate();
					da = String(da);
					
					
					var mon ="";
					
					if(month.length==1){
						mon += "0"+month;
					}else if(month.length==2){
						mon +=month;
					}
					var d ="";
					if(da.length==1){
						d +="0"+da;
					}else if(da.length==2){
						d +=da;
					}
					
					
					var $span7= $("<span class='c_data'>").html(date.getFullYear()+"-"+mon+"-"+d);
					
					
					var spanaddr1 = "";
					var spanaddr2 = "";
					var spanaddr3 ="";
					var add1 = addr.split(",");
					
					if(add1.length==2){
						spanaddr1 = $("<span class='c_addr1'>").append(add1[0]+"<br>");
						spanaddr2 = $("<span class='c_addr2'>").append(add1[1]+"<br>");
						spanaddr3 = $("<span class='c_addr3'>").html("");
					}else if(add1.length==3){
						spanaddr1 = $("<span class='c_addr1'>").append(add1[0]+"<br>");
						spanaddr2 = $("<span class='c_addr2'>").append(add1[1]+"<br>");
						spanaddr3 = $("<span class='c_addr3'>").html(add1[2]);
					}
	
					var $addrdiv =$("<div class='c_divaddr'>").append("<br>").append(spanaddr1).append(spanaddr2).append(spanaddr3);				
					var $div1 = $("<div class='content_divmember'>").append($span1).append($span2).append($span3).append($span4).append($span5).append($addrdiv).append($span7);
					$("#content_member").append($div1);				
				}
				
				var a="";
				
				for(var i =data.pages;i<=data.page;i++){
				
					a = $("<a href='adminMember.do?pa="+i+"'>").html(i);
					$("#div_pagea").append(a);	
				}					
			}
 		})
 		
 		
 	
	})
</script>
</head>
</head>
<body>
	<jsp:include page="admin_header.jsp"/>
	
	<div id="content">
		<jsp:include page="memberSide.jsp"/>
		<div id="content_login">
			<div id="content_h3">
				<h3>회원 관리</h3>
			</div>
			<div id="content_content">
				<div id="content_count">
					<span id="content_span"></span>
					<select name="sel">
						<option>이름</option>
						<option>아이디</option>
						<option>휴대전화</option>
					</select>
					<input type="text" name="name">
					<a href="#" id="content_a">검색</a>
				</div>
				
				<div id="content_member">
					<div id="content_div">
						<span id="span_no">No</span>
						<span id="span_name">이름</span>
						<span id="span_id">아이디</span>
						<span id="span_phone">연락처</span>
						<span id="span_email">메일</span>
						<span id="span_addr">주소</span>
						<span id="span_data">가입일자</span>
					</div>
					
					<!-- 들어올내용 -->
					
					
				</div>
				
				<div id="div_a">
				<%-- ${page }
					<c:if test="${page <= 5 }">
	
				<c:forEach var="p" begin="${pages }" end="${page}"> 	
						<a href="adminMember.do?pa=${p }">${p }</a>
				</c:forEach>
					</c:if> --%>
				
					
					<div id="div_left">
					<a><img src="/forest/css/images/login/startpage.png" id="div_astart"></a>
					<img src="/forest/css/images/login/left.png" id="div_aleft">
					</div>
					
					
					<div id="div_pagea">
						<!-- <a href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a> -->
					</div>
					
					<div id="div_right">
					<img src="/forest/css/images/login/right.png" id="div_aright">
						<img src="/forest/css/images/login/endpage.png" id="div_aend">
					</div>
					
					
				</div>
				
			</div>
		</div>
		
	</div>
	
	<%-- <jsp:include page="mainSection.jsp"/> --%>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>