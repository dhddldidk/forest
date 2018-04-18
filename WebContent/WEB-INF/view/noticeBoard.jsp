<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#noticeboard{
		width: 1180px;
		margin: 0 auto;
		height: 1180px;
		padding-left: 20px;
		padding-right: 20px;
		padding-top: 20px;
	}
	#noticeboard p{		
		height:60px;
		font-size:30px;	
		color:#333;
		font-weight: bold;
		border-bottom:1px solid #e3e3e3;
		line-height: 60px;
	}
	  
	   
	/*----------------------- search -----------------------*/
	
	#noticeboard_All{
		width:100%;
		height:50px;
		background: #f7f7f7;
		margin-top:30px;
		margin-bottom:30px;
	}
	#noticeboard_All>span{
		float:left;
		display: block;
		height:50px;
		line-height: 50px;
		margin-left:30px;
		font-size:15px;
		font-weight: bold;
	}
	#noticeboard_All #search_div{
		text-align: right;
		line-height: 50px;
		padding-right:10px;
	}
	#noticeboard_All #search_div select{
		width:100px;
		height:30px;
	}
	#noticeboard_All #search_div>input{
		width:200px;
		height:24px;
	}
	#noticeboard_All #search_div>button#btnsearch{
		height:30px;
		border: 1px solid #656873;
		background: #848894;
		color:#fff;
	}
	


</style>
</head>
<body>
	<% pageContext.include("header.jsp"); %>
	<form action="noticeBoard.do" method="post">
	<div id="noticeboard">
		<p>공지사항</p>
		<div id="noticeboard_All">	
			<span>총 게시글 100건</span>		
			<div id="search_div">				
				<select name="search">
					<option value="제목">제목</option>
					<option value="작성자">작성자</option>
					<option value="휴양림">휴양림</option>
				</select>
				<input type="text" placeholder="검색어 입력">
				<button id="btnsearch">검색</button>
			</div>
		</div>		
	</div>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>