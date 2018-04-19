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
	
	
	/*------------------------ table ------------------------*/
	#noticeboard_All #table_list table{
	border-top: 2px solid #787b86;
		width:100%;
		margin-top:25px;
	}
	#noticeboard_All #table_list table tr:FIRST-CHILD{
		border-top: 2px solid #787b86;
	}
	#noticeboard_All #table_list table tr th.tr1_th{
		
	}
	#noticeboard_All #table_list table tr th#th1{
		/* width:180px; */
		width:10%;
	}
	#noticeboard_All #table_list table tr th#th2{
		/* width:400px; */
		width:45%;
	}
	#noticeboard_All #table_list table tr th#th3{
		/* width:220px; */
		width:15%;
	}
	#noticeboard_All #table_list table tr th#th4{
		/* width:250px; */
		width:25%;
	}
	#noticeboard_All #table_list table tr th#th5{
		/* width:90px; */
		
	}
	
	  

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#btnsearch").click(function(){
			
			var text = $("input[name='search']").val();
			alert(text);
			
		})
		
	})
</script>
</head>
<body>
	<% pageContext.include("admin_header.jsp"); %>
	<!-- <form action="noticeBoard.do" method="post"> -->
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
				<input type="text" name="search" placeholder="검색어 입력">
				<button id="btnsearch" name="search">검색</button>
			</div>
			<div id="table_list">
				<table>
					<tr>
						<th id="th1" class="tr1_th">No</th>
						<th id="th2" class="tr1_th">제목</th>
						<th id="th3" class="tr1_th">등록자</th>
						<th id="th4" class="tr1_th">등록일</th>
						<th id="th5" class="tr1_th">조회수</th>
					</tr>
					<tr>
						
					</tr>
					<tr>
					
					</tr>
					<tr>
					
					</tr>
				</table>			
			</div>
		</div>		
	</div>
	<!-- </form> -->
	<% pageContext.include("footer.jsp"); %>
</body>
</html>