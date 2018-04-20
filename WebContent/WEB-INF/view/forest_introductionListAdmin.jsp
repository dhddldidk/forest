<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionAdmin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#container>#container_forestIntro>#searchForest a").click(function(){
			var search=$("input[name='name']").val();
			var sel = $("#sel").val();
			
			if(search.length==0){
				alert("검색할 단어가 없습니다.");
				return false;
			}
			/* alert(search); */
			$.ajax({
				url : "adminForestIntroList.do",
				type : "post",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				data:{"sel":sel,
					"search":search},
				success : function(data) {
				console.log(data);
				
				$(".forestList").find("table").remove();
				
				if(data.forest.length==0){
					alert("검색된 내용이 없습니다.");
				}
				
				//검색된 데이터 넣기
				var $tr1 = $('<tr>');
				var $th1 = $('<th>').html("No.");
				var $th2 = $('<th>').html("휴양림 이름");
				var $th3 = $('<th>').html("휴양림 주소");
				var $th4 = $('<th>').html("휴양림 연락처");
				var $th5 = $('<th>').html("지역");
				
				
				$tr1.append($th1).append($th2).append($th3).append($th4).append($th5);
				
				var $div = $('<table>').append($tr1);
				for(var i = 0; i<data.forest.length; i++){
					var $tr2 = $('<tr>');
					var $td1 = $('<td>').html(data.forest[i].forNo);
					var $td2 = $('<td>').html('<a href="#.do?forest='+data.forest[i].forNo+'">'+data.forest[i].forName+'</a>');
					var $td3 = $('<td>').html(data.forest[i].forPost);
					var $td4 = $('<td>').html(data.forest[i].forPhone);
					var $td5 = $('<td>').html(data.forest[i].district.dSido);
					$div.append($tr2.append($td1).append($td2).append($td3).append($td4).append($td5));
				}

				$(".forestList").append($div);
				}
			});
		})
	});
</script> 
</head>
<body>
	<jsp:include page="admin_header.jsp" />
	<div id="container">
		<jsp:include page="forest_introductionSideAdmin.jsp" />
		<div id="container_forestIntro">
			<div class="forestTop">
			<h1>휴양림 리스트</h1>
		<h3><a href="adminForestIntroInsert.do">휴양림 추가하기</a></h3>
			</div>
		
		<div id="forestIntro_innerline"></div>
		<div id="searchForest">
			<select name="sel" id="sel">
				<option value="휴양림이름">휴양림이름</option>
				<option value="지역">지역</option>
			</select>
			<input type="text" name="name">
			<a href="#null" id="search">검색</a>
		</div>
		<div class="forestList" id="forestList">
			<table>
				<tr>
					<th>No.</th>
					<th>휴양림 이름</th>
					<th>휴양림 주소</th>
					<th>휴양림 연락처</th>
					<th>지역</th>
				</tr>
				<c:if test="${introAllForest.size() == 0 }">
			<tr>
				<td colspan="5">
					등록된 게시글이 없습니다.
				</td>
			</tr>
		</c:if>
				<c:if test="${introAllForest.size() > 0 }">
			<c:forEach var="item" items="${introAllForest }">
				<tr>
					<td>${item.forNo }</td>
					<!-- number값을 들고 감 -->
					<td><a href="#.do?forest=${item.forNo }">${item.forName }</a></td>
					<td>${item.forPost }</td>
					<td>${item.forPhone }</td>
					<td>${item.district.dSido }</td>
				</tr>
			</c:forEach>
		</c:if>
			</table>
			</div>
			<!-- <div class="forestList"></div> -->
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>