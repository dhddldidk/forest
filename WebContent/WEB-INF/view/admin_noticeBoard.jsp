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
*{
	margin:0;
	padding:0;
}

#noticeboard {
	width: 930px;
	height: 800px;
	padding-left: 35px;
	padding-right: 20px;
	padding-top: 20px;
	overflow: hidden;
}

#noticeboard p {
	height: 60px;
	font-size: 30px;
	color: #333;
	font-weight: bold;
	border-bottom: 1px solid #e3e3e3;
	line-height: 60px;
}

/*----------------------- search -----------------------*/
#noticeboard_All {
	width: 100%;
	height: 50px;
	background: #f7f7f7;
	margin-top: 30px;
	
}

#noticeboard_All>span {
	float: left;
	display: block;
	height: 50px;
	line-height: 50px;
	margin-left: 30px;
	font-size: 15px;
	font-weight: bold;
}

#noticeboard_All #search_div {
	text-align: right;
	line-height: 50px;
	padding-right: 10px;
}

#noticeboard_All #search_div select {
	width: 100px;
	height: 30px;
}

#noticeboard_All #search_div>input {
	width: 200px;
	height: 24px;
}
 
#noticeboard_All #search_div>button#btnsearch {
	width:60px;
	height: 30px;
	border: 1px solid #656873;
	background: #848894;
	color: #fff;
}

/*------------------------ table ------------------------*/
#noticeboard_All #table_list{
	margin-top: 25px;
}  

#noticeboard_All #table_list table {
	border-top: 2px solid #787b86;
	width: 100%;
	
}
#noticeboard_All table, th, td {
    margin: 0;
    padding: 0;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
#noticeboard_All #table_list table tr{
	
	font-size:15px;
	display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
#noticeboard_All #table_list table tr td{
	text-align: center;
}
#noticeboard_All #table_list table tr td.td_left{
	text-align: left;
	padding-left:10px;
	
}
#noticeboard_All #table_list table tr:FIRST-CHILD {
	border-top: 2px solid #787b86;
	background: #f7f7f7;	
	border-bottom: 1px solid #c2c2c2;
}

   
#noticeboard_All #table_list table tr th.tr1_th {
	border-right: 1px solid #e3e3e3;
	height:50px;
}

#noticeboard_All #table_list table .tr_for{
	height:50px;
	border-bottom: 1px solid #c2c2c2;
}  

#noticeboard_All #table_list table tr th#th1 {
	width: 10%;
}

#noticeboard_All #table_list table tr th#th2 {
	width: 45%;
}

#noticeboard_All #table_list table tr th#th3 {
	width: 15%;
}

#noticeboard_All #table_list table tr th#th4 {
	width: 20%;
}

#noticeboard_All #table_list table tr th#th5 {
	width: 10%;
}

#noticeside{
	margin-left:360px;
} 
   
   

#noticeboard_All #writebtn{
	height:40px;
	margin-top:10px;
	text-align: right;
}
#noticeboard_All #writebtn>div{
	display: inline-block;
	background: #2d905b;
	border: 1px solid #22794b;
	height:30px;
	margin-right:5px;
	
}
#noticeboard_All #writebtn>div a{
	color:#fff;
	padding:8px 10px;
	line-height: 30px;
	
}
   
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function() {
		$("#btnsearch").click(function() {
			
			var text = $("input[name='search']").val();
			var searchselect =$("#searchselect option:selected").val();
			
			if(text == ""){
				alert("입력하세요");
			}else{
				$.ajax({
					url:"noticeBoard.do",
					type:"post",
					dataType:"json", //서버로부터 돌려받을 데이터의 타입
					data:{
						"searchselect":searchselect,
						"search":text,
					},
					success:function(data){
						console.log(data);
						$("#table_list").find("table").remove();
						var th1 = $("<th id='th1' class='tr1_th'>").html("No");
						var th2 = $("<th id='th2' class='tr1_th'>").html("제목");
						var th3 = $("<th id='th3' class='tr1_th'>").html("등록자");
						var th4 = $("<th id='th4' class='tr1_th'>").html("등록일");
						var th5 = $("<th id='th5' class='tr1_th'>").html("조회수");
						var table = $("<table>");
						var tr1 = $("<tr id='tr1'>");
						tr1.append(th1).append(th2).append(th3).append(th4).append(th5);
						table.append(tr1);
						if(data.length == 0){
							var ciftr = $("<tr>");
							var ciftd = $("<td colspan='5'>").html("등록된 게시물이 없습니다.");
							ciftr.append(ciftd);
							table.append(tr1).append(ciftr);
						}else if(data.length > 0){
							$(data).each(function(i,obj){
								$("#count").html("총 게시글 "+ data.length +"건");
								var date = new Date();
								date.setTime(obj.nb_date);
								var year = date.getFullYear();
								var month = date.getMonth()+1;
								var day = date.getDate();
								
								if(month < 10 ){
									month = "0"+month;
								}
								if(day < 10){
									day = "0"+day;
								}								
								
									  
								
								var ciftr2 = $("<tr class='tr_for'>");
								var ciftd1 = $("<td>").html(obj.nb_no);								
								var ciftd2 = $("<td class='td_left'><a href='noticeBoardcontent.do?nb_no='"+obj.nb_no+"'>").html(obj.nb_title);
								var ciftd3 = $("<td>").html("관리자");
								var ciftd4 = $("<td>").html(year+"-"+month+"-"+day);
								var ciftd5 = $("<td>").html(obj.nb_count);
								
								ciftr2.append(ciftd1).append(ciftd2).append(ciftd3).append(ciftd4).append(ciftd5);
								table.append(ciftr2);
								
							})
														
						}
						
					$("#table_list").append(table);
						
					}
						
				})
			}
		})

	})
</script>
</head>
<body>
	<%
		pageContext.include("admin_header.jsp");
	%>
	<div id="noticeside">
		<% pageContext.include("notice_Side.jsp"); %>
	</div>
	<div id="noticeboard">		
		<p>공지사항</p>
		<div id="noticeboard_All">
			<span id="count">총 게시글 ${boardcount }건</span>
			<div id="search_div">
				<select name="searchselect" id="searchselect" >
					<option value="제목">제목</option>
					<option value="휴양림">휴양림</option>
				</select> <input type="text" name="search" placeholder="검색어 입력">
				<button id="btnsearch" name="search">검색</button>
			</div>
			<div id="table_list">
				<table>
					<tr id="tr1">
						<th id="th1" class="tr1_th">No</th>
						<th id="th2" class="tr1_th">제목</th>
						<th id="th3" class="tr1_th">등록자</th>
						<th id="th4" class="tr1_th">등록일</th>
						<th id="th5" class="tr1_th">조회수</th>
					</tr>
					<c:if test="${list.size() == 0 }">
						<tr>
							<td colspan="5">등록된 게시글이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${list.size() > 0 }">
						<c:forEach var="item" items="${list }">
							<tr class="tr_for">
								<td>${item.nb_no }</td>
								<td class="td_left"><a href="adminnoticeBoardContent.do?nb_no=${item.nb_no }">${item.nb_title }</a></td>
								<td>관리자</td>
								<td><fmt:formatDate value="${item.nb_date }" type="date" pattern="yyyy-MM-dd"/></td>
								<td>${item.nb_count }</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
			<div id="writebtn">
				<div>					
					<a href="adminnoticeWrite.do">글쓰기</a>
				</div>
			</div>		
		</div>
	</div>
	<%
		pageContext.include("footer.jsp");
	%>
</body>
</html>