<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 870px;
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
	height: 700px;
	margin-top: 50px;
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
		height: 700px;
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
	form{
		width: 100%;
		height: 700px;
	}
	#divt1{
		border-top:2px solid black;
		width: 100%;
		height: 50px;
		border-bottom: 1px solid #ccc;
		overflow: hidden;
	}
	#divt1>label{
		height: 50px;
		line-height: 50px;
		
	}
	#divt1>input{
		width: 700px;
		height: 30px;
		margin: 5px;
		
	}
	label{
		float: left;
		width: 100px;
		background-color:rgba(213,213,213,0.2);
		font-size: 20px;
		padding-left: 10px;
	} 
	#divcontent{
		width: 100%;
		height: 490px;
		border-bottom: 1px solid #ccc;
	}
	#divcontent>label{
		height:480px;
		padding-top: 10px;
	}
	#divcontent>textarea{
		margin: 10px;
	}
	#divFile{
		width: 100%;
		height: 45px;
		border-bottom: 1px solid #ccc;
	}#divFile>label{
		height: 45px;
		line-height: 45px;
	}
	#divFile>input{
		margin: 10px;
	}
	#btn{
		width: 100%;
		height: 50px;
		text-align: right;
		margin-top: 10px;		
	}
	#btnsub{
		width: 80px;
		height: 40px;
		background-color: #2d905b;
		border: 1px solid #2d905b;
		color: white;
	}  
	#btnre{
		width: 80px;
		height: 40px;
		background-color: #fff;
		border: 1px solid black;
		margin-right: 20px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".intro_menu").eq(3).css("color","#2d905b");
		
		$("#btnre").click(function(){
			location.href="qaBoard.do";
		})
		$("#btnsub").click(function(){
			var title = $("input[name='title']").val();
			
			if(title.length==0){
				alert("제목을 입력해주세요."); 
				return false;
			}
			  		 
			var content = $("textarea").val().replace(/(^\s*)|(\s*$)/gi, "");
			if(content.length==0){
				alert("내용을 입력해주세요.");
			return false;
			}
		
			var con =  confirm("등록하시겠습니까?");
			if(!con){
				return false;
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
				<span class="content_agree_topbar"></span>
				<div class="content_agree_01_h4">
					질문 등록
				</div>
			</div>
			
			<div id="divWrite">
				<form action="qaBoardWriteResult.do" method="post" enctype="multipart/form-data">
					<div id="divt1">
						<label>제목</label>
						<input type="text" name="title">
					</div>
					<div id="divcontent">
						<label>내용</label>
						<textarea rows="30" cols="100" name="content">
						
						</textarea>
					</div>
					<div id="divFile">
						<label>파일 첨부</label>
						<input type="file"  name="file1">
					</div>
					
					<div id="btn">
						<input type="submit" value="등록하기" id="btnsub">
						<input type="reset" value="취소하기" id="btnre">
					</div>
				</form>
			</div>
			
		</div>
		
		</div>
	</div>
	
	
	<jsp:include page="footer.jsp"/>
	
	
</body>
</html>