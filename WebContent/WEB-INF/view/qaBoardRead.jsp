<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		   
		height:1300px;      
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
	min-height: 800px;
	margin-top: 50px;  

	}
	#div_span{
		width: 100%;
		height: 50px;
		overflow: hidden;
		border-bottom: 2px solid black;
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
		min-height: 1100px;
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
		width: 95%;
		min-height: 350px;
		margin: 20px;
	}
	#answer{
		width: 100%;
		min-height: 500px;
		border-bottom: 2px solid black;
	}
	#atitle{
		width: 100%;
		height: 30px;
		color: #a67533;
		font-weight: bold;
		font-size: 20px;
		border-bottom: 2px solid black;
	}
	#diva{
		width: 100%;
		height: 40px;
		border-bottom: 1px solid #ccc;
		overflow: hidden;
	}
	
	.a_1{
		font-weight: bold;
		margin-left: 10px;
		margin-right: 15px;
	}
	#a1{
		width: 160px;
		height: 20px;
		border-right: 1px solid #ccc;
		float: left;
		margin-top: 10px;
		
	}
	#a2{
		width: 160px;
		height: 20px;
		float: left;
		margin-top: 10px;
	}
	#a3{
		width: 130px;
		height: 20px;
		float: right;
		margin-top: 10px;
		border-left: 1px solid #ccc;
	}
	#a11>img{
		float: left;
		margin-left: 5px;
	}
	#a12{
		float: left;
		margin-left: 5px;
	}
	#divacontent{
		width: 95%;
		min-height: 400px;
		margin: 20px;
	}
	#divabtn{
		width: 100%;
		height: 30px;
		text-align: right;
		margin-top: 10px;
	}
	#divabtn>a{
		display: inline-block;  
		width: 70px;
		height: 30px;
		border: 1px solid #2d905b;
		background-color: #2d905b;
		color:white;
		text-align: center;
		line-height: 30px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".intro_menu").eq(3).css("color","#2d905b");
		
		$("#btndelete").click(function(){
			
			var content = "";
			content = "${question.answer.aContent}";  
			if(content.length >0){
				alert("게시글을 삭제할 수 없습니다.");
				return false;  
			}
			
			
			var con = confirm("삭제하시겠습니까?");
			if(con){
				location.href="qaBoardDelete.do?key=${question.qNo}";
			}
		})
	})
</script>
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
					${question.qTitle }
				</div>
			</div>
			  
			<div id="divWrite">   
				<div id="divid">
					<div id="c1">
					<span class='c_1'>등록자</span>
					<span class='c_2'>${question.user.uName }</span>
					</div>
					<div id="c2">
					<span class='c_1'>등록일</span>
					<span class='c_2'>
						<fmt:formatDate value="${question.qDate }" pattern="yyyy-MM-dd"/>
					</span>
					</div>
					<div id="c3">
					<span class='c_1'>조회수</span>
					<span class='c_2'>${question.qCount }</span>
					</div>
				</div>
				  
				  <div id="divfile">
				  			<span id="df1">첨부 파일</span>
				  			<c:choose>
				  				<c:when test="${question.qUpload !=null }">
				  					<span id="df2"><a href="download.do?filename=${question.qUpload }">${question.qUpload }</a></span>
				  				</c:when>
				  				<c:otherwise>
				  					<span id="df2">첨부파일이 없습니다.</span>
				  				</c:otherwise>
				  			</c:choose>
				  			
				  </div>
				  
				  <div id="divcontent">
				  		${question.qContent }
				  </div>
				  
				  <div id="answer">
				  	<div id="atitle">
				  		Re.${question.qTitle }
				  	</div>
				  
				  	<div id="diva">
					<div id="a1">
					<span class='a_1'>담당자</span>
					<span class='a_2'>관리자</span>
					</div>
					<div id="a2">
					<span class='a_1'>등록일</span>
					<span class='c_2'>
					<fmt:formatDate value="${question.answer.aDate }" pattern="yyyy-MM-dd"/>
					</span>
					</div>
					<div id="a3">
					<c:choose>
						<c:when test="${question.answer.aContent !=null }">
							<span id='a11'><img src="/forest/css/images/intro/2.png"></span>
							<span id='a12'>처리완료</span>		
						</c:when>
						<c:otherwise>
							<span id='a11'><img src="/forest/css/images/intro/1.png"></span>
							<span id='a12'>처리중</span>		
						</c:otherwise>
					</c:choose>
							
					</div>
				</div>
				  
				  <div id="divacontent">
				  	${question.answer.aContent}
				  </div>
				  
				  </div>
				  <div id="divabtn">
				  <c:if test="${id == question.user.uId}">
				  <a href="qaBoardUpdate.do?key=${question.qNo }">수정</a>
				  <a href="#" id="btndelete">삭제</a>
				  </c:if>
				  	<a href="qaBoard.do?pa=1">목록</a>
				  </div>
			</div>
			
		</div>
		
		</div>
	</div>
	
	
	<jsp:include page="footer.jsp"/>
</body>
</html>