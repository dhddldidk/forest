<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* min-height */
#content {
	width: 1180px;
	margin: 0 auto;
	min-height:1100px;       
	overflow: hidden;
}
/* min-height */
#content_login {
	width: 930px;    
	min-height: 900px;             
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
/* min-height */
#content_content {
	width: 99%;
	min-height: 1250px;    
	margin-top: 50px;
	margin-bottom: 20px;
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
	width: 720px;
	margin-left: 20px;
	font-size: 13px;
	font-weight: 600;
}

#content_count>select {
	width: 100px;
	height: 37px;
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

/* min-height */
#content_member {
	width: 100%;
	min-height: 1100px;
	margin-top: 30px;
	margin-bottom: 20px;
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
	width: 90px;
	border-right: 1px solid #ccc;
}
#span_title {
	width: 360px;   
	border-right: 1px solid #ccc;
}

#span_name {
	width: 100px;
	border-right: 1px solid #ccc;
}
 
#span_date {
	width: 140px;
	border-right: 1px solid #ccc;
}

#span_state {  
	width: 200px;
	border-right: 1px solid #ccc;
}
.content_condiv{
	width: 100%;
	height: 50px;
	overflow: hidden;
	border-bottom: 1px solid #ccc;
}
.content_condiv>span{
	display: inline-block;
	font-size: 15px;
	height: 20px;
	margin-top: 15px;
}
.c_no {
	text-align:center;
	width: 90px;
	border-right: 1px solid #ccc;
}
.c_title {
	width: 360px;   
	border-right: 1px solid #ccc;
		text-overflow: ellipsis;
		overflow: hidden;
		white-space: nowrap;
}  
  
.c_name {
	text-align:center;
	width: 100px;
	border-right: 1px solid #ccc;
}
 
.c_date {	
	text-align:center;
	width: 140px;
	border-right: 1px solid #ccc;
}

.c_state {    
	float:right;  
	width: 200px;   
	border-right: 1px solid #ccc;
}
.c_state>a{
	width: 75px;  
	height: 40px;
}
	.c_1 {
		margin-left: 10px;
		background-color:#2d905b;
		border: 1px solid #2d905b;
		color: white;
	}
	.c_2 {
	margin-left:10px;
	background-color: #797d89;
	border: 1px solid #797d89;
	color: white;
}
	#div_a {
	width: 100%;
	height: 50px;  
	overflow: hidden;
	text-align: center;
}

#div_left {
	/*  width: 8%; */
	height: 50px;   
	float: left;
	margin-left: 350px;    
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
.cstate0,.cstate1{
	float:left;
	width: 60px;  
}
.cstate0{
	color: red;
	font-weight: bold;
}
.content_d{
	width: 100%;
	height: 50px;
	margin-top: 10px;
}
.content_d>a{
	float:right;
	width: 90px;
	line-height:40px;
	text-align:center;
	height: 40px;
	background-color: #2d905b;
	color: white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".c_2").click(function(){
			var con = confirm("삭제하시겠습니까?");
			if(!con){
				return false;
			}
		})
		
		$("#content_a").click(function(){
			
			
			var sel = $("#sel").val();

			
			$.ajax({
				url : "adminQaBoard.do",
				type : "post",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				data:{"sel":sel},
				success : function(data) {
					console.log(data);
					$("#div_a").remove();
					$(".content_condiv").remove();
					$("#content_span").empty();
					$("#content_span").append("총 질문" + data.question.length+"건");
					$(".content_d").remove();
					if(data.question.length==0){
						
						var $p = $("<p id='idp'>").html("검색된 결과가 없습니다.");
						$("#content_member").append($p);
						return false;
					}
					
					
					for(var i = 0;i<data.question.length;i++){
						
						var $span_no = $("<span class='c_no'>").html(data.question[i].qNo);
						
						
						var $spnaa = $("<a href='adminQaBoardRead.do?key="+data.question[i].qNo+"'>").html(data.question[i].qTitle);
						var $span3 = $("<span class='c_title'>").append($spnaa);
						var $span4 = $("<span class='c_name'>").html(data.question[i].user.uName);        
						var date = new Date(data.question[i].qDate);
						var month = date.getMonth() + 1;
							month = String(month);
						var da = date.getDate();
							da = String(da);
						var mon = "";
							if (month.length == 1) {
								mon += "0" + month;
							} else if (month.length == 2) {
								mon += month;
							}
						var d = "";
							if (da.length == 1) {
								d += "0" + da;
							} else if (da.length == 2) {
								d += da;
							}
														   
						var $span5 = $("<span class='c_date'>").html(date.getFullYear()+ "-"+ mon+ "-"+ d);
						
						var $state =data.question[i].qState;
						var $cstate0 ="";
						var $cstaa ="";
						if($state==0){
						$cstate0 = $("<span class='cstate0'>").html("처리중");
						$cstaa = $("<a href='adminQaBoardRead.do?key="+data.question[i].qNo +"' class='c_1'>").html("글쓰기");
						}else{
							$cstate0 = $("<span class='cstate0'>").html("처리완료");
							$cstaa = $("<a href='adminQaBoardRead.do?key="+data.question[i].qNo+"' class='c_1'>").html("수정");
						}
						var	$delete = $("<a href='adminQaBoardDelete.do?key="+data.question[i].qNo+"' class='c_2'>").html("삭제하기");
						var $qstate = $("<span class='c_state'>").append($cstate0).append($cstaa).append($delete);
						   
						var $divcontent = $("<div class='content_condiv'>").append($span_no).append($span3).append($span4).append($span5).append($qstate);
						
						
						
						$("#content_member").append($divcontent);
					} 
					
					 var $div2 =$("<div class='content_d'>");
						var $div2_a= $("<a href='adminQaBoard.do'>").html("전체목록 보기");
						$($div2).append($div2_a);
						$("#content_member").append($div2);
				}
			})
		})
		
	})
</script>  
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
			<div id="content_count">
					<span id="content_span">총 질문  ${quesize }건</span>
					 <select name="sel" id="sel">
						<option value="처리중">처리중</option>
						<option value="처리완료">처리완료</option>
					</select> 
					<a href="#" id="content_a">검색</a>
				</div>
				
			<div id="content_member">
					<div id="content_div">
						<span id="span_no">No</span>
						 <span id="span_title">제목</span>
						 <span id="span_name">이름</span> 
						 <span id="span_date">날짜</span>
						  <span id="span_state">처리상태</span>
					</div>
					
					
					<c:forEach var="list" items="${que }">
						<div class="content_condiv">
						<span class="c_no">${list.qNo }</span>
						 <span class="c_title"><a href="adminQaBoardRead.do?key=${list.qNo }">${list.qTitle }</a></span>  
						 <span class="c_name">${list.user.uName } </span> 
						 <span class="c_date">
						 <fmt:formatDate value="${list.qDate }" pattern="yyyy-MM-dd"/></span>
						  <span class="c_state">
						  <c:choose>
						  	<c:when test="${list.qState==0 }">
						  		<span class="cstate0">처리중</span>
						  		<a href="adminQaBoardRead.do?key=${list.qNo }" class="c_1">글쓰기</a>
						  	</c:when>
						  	<c:otherwise>
						  	<a href="adminQaBoardRead.do?key=${list.qNo }" class="c_1"> 수정 </a>
						  		<span class="cstate1">처리완료</span>
						  	</c:otherwise>
						  </c:choose>
						  	
						  	<a href="adminQaBoardDelete.do?key=${list.qNo }" class="c_2">삭제하기</a>
						  </span>
					</div>
					</c:forEach>
					
				</div>	
					
					<!-- 페이징 -->
					<div id="div_a">
				
					<div id="div_left">
					
					<c:if test="${pagestart > 1}">
					<a href="adminQaBoard.do?pa=${1 }" >
					<img src="/forest/css/images/login/startpage.png" id="div_astart"></a>
					<script type="text/javascript">
					$("#div_astart").show();
					</script>
					</c:if>
			
					<c:if test="${pages > 5 }">
						<a href="adminQaBoard.do?pa=${(pages-5) }&key=left" >
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
						<a href="adminQaBoard.do?pa=${p }">${p }</a>
					</c:if>
					</c:forEach>
					</c:if>  
			
			
					<c:if test="${page <= 5 }">
					<c:forEach var="p" begin="${pages }" end="${page}"> 	
						<a href="adminQaBoard.do?pa=${p }">${p }</a>
					</c:forEach>
					</c:if>
					</div>
					
					<div id="div_right">
					<c:if test="${page > 5||(page-pages)>5 }">
					<a href="adminQaBoard.do?pa=${(pages+5) }&key=right"><img src="/forest/css/images/login/right.png" id="div_aright"></a>					
					<script type="text/javascript">
					$("#div_aright").show();
					</script>
					</c:if>	
					<c:if test="${(page-pages)<5 }">
					<script type="text/javascript">
					$("#div_aright").css("display","none");
					</script>
					</c:if>
					
					
					<c:if test="${page > 5  || (page-pages)>5}">
					<a href="adminQaBoard.do?pa=${page }"><img src="/forest/css/images/login/endpage.png" id="div_aend"></a>
					<script type="text/javascript">
					$("#div_aend").css("visibility","visible");
					</script>
					</c:if> 	
					<c:if test="${(page-pages)<5 }">
					
					<script type="text/javascript">
					$("#div_aend").css("visibility","hidden");
					</script>
					</c:if>
					   
					</div> 
					
			</div>
				
		</div>
		</div>
</div>


	<jsp:include page="footer.jsp" />
	
	<c:if test="${tf>0 }">
		<script type="text/javascript">
			location.href="adminQaBoard.do";
		</script>
	</c:if>
	
	<c:if test="${i>0 }">
		<script type="text/javascript">
			alert("삭제되었습니다.");
			location.href="adminQaBoard.do";
		</script>
	</c:if>
	
</body>
</html>