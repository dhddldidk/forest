<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container_forestIntro>.forestList>table a {
	color:#237349;
	font-weight: bold;
}
</style>
<link rel="stylesheet" href="css/forest_introductionRoomsListAdmin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#container>#container_forestIntro>#searchForest #search").click(function(){
			var search=$("input[name='name']").val();
			var sel = $("#sel").val();
			
			if(search.length==0){
				alert("검색할 단어가 없습니다.");
				return false;
			}
			/* alert(search); */
			$.ajax({
				url : "adminForestIntroRoomsList.do",
				type : "post",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				data:{"sel":sel,
					"search":search},
				success : function(data) {
				console.log(data);
				
				$(".forestList").find("table").remove();
				
				if(data.roomAdmin.length==0){
					alert("검색된 내용이 없습니다.");
				}
				
				//검색된 데이터 넣기
				var $tr1 = $('<tr>');
				var $th1 = $('<th>').html("No.");
				var $th2 = $('<th>').html("지역");
				var $th3 = $('<th>').html("휴양림 이름");
				var $th4 = $('<th>').html("휴양림 시설명");
				var $th5 = $('<th>').html("휴양림 방이름");
				var $th6 = $('<th>').html("인원수");
				var $th7 = $('<th>').html("가격");
				var $th8 = $('<th>').html("휴양림 연락처");
			
				
				$tr1.append($th1).append($th2).append($th3).append($th4).append($th5).append($th6).append($th7).append($th8);
				
				var $div = $('<table>').append($tr1);
				for(var i = 0; i<data.roomAdmin.length; i++){
					var $tr2 = $('<tr>');
					var $td1 = $('<td>').html(i+1);
					var $td2 = $('<td>').html(data.roomAdmin[i].forest.district.dSido);
					var $td3 = $('<td>').html(data.roomAdmin[i].forest.forName);
					var $td4 = $('<td>').html(data.roomAdmin[i].facilities.facName);
					var $td5 = $('<td>').html('<a href="adminForestIntroRoomsUpdate.do?rNo='+data.roomAdmin[i].rNo+'">'+data.roomAdmin[i].rName+'</a>');
					var $td6 = $('<td>').html(data.roomAdmin[i].rPax);
					var $td7 = $('<td>').html(data.roomAdmin[i].rPrice);
					var $td8 = $('<td>').html(data.roomAdmin[i].rPhone);
					$div.append($tr2.append($td1).append($td2).append($td3).append($td4).append($td5).append($td6).append($td7).append($td8));
					
				}

				$(".forestList").append($div);
				}
			});
		})
	})
</script> 
</head>
<body>
	<jsp:include page="admin_header.jsp" />
	<div id="container">
		<jsp:include page="forest_introductionSideAdmin.jsp" />
		<div id="container_forestIntro">
			<div class="forestTop">
			<h1>숙박시설 리스트</h1>
		<h3><a href="adminForestIntroRoomsInsert.do">숙박시설 추가하기</a></h3>
			</div>
		
		<div id="forestIntro_innerline"></div>
		<div id="searchForest">
			<select name="sel" id="sel">
				<option value="휴양림 이름">휴양림 이름</option>
				<option value="숙박시설">숙박시설</option>
				<option value="숙박시설 방이름">숙박시설 방이름</option>
				<option value="지역">지역</option>
			</select>
			<input type="text" name="name">
			<a href="#null" id="search">검색</a>
			<a href="adminForestIntroRoomsList.do" id="showList">숙박시설 리스트 보기</a>
		</div>
		<div class="forestList" id="forestList">
			<table>
				<tr>
					<th>No.</th>
					<th>지역</th>
					<th>휴양림 이름</th>
					<th>숙박시설</th>
					<th>숙박시설 방이름</th>
					<th>인원수</th>
					<th>가격</th>
					<th>휴양림 연락처</th>
				</tr>
				<c:if test="${roomAdminList.size() == 0 }">
			<tr>
				<td colspan="5">
					등록된 게시글이 없습니다.
				</td>
			</tr>
		</c:if>
		<c:set var="number" value="0"/>
				<c:if test="${roomAdminList.size() > 0 }">
			<c:forEach var="item" items="${roomAdminList }">
				<tr>
					<td>${number=number+1 }</td>
					<!-- number값을 들고 감 -->
					<td>${item.forest.district.dSido }</td>
					<td>${item.forest.forName }</td>
					<td>${item.facilities.facName }</td>
					<td><a href="adminForestIntroRoomsUpdate.do?rNo=${item.rNo }">${item.rName }</a></td>
					<td>${item.rPax }</td>
					<td>${item.rPrice }원</td>
					<td>${item.rPhone }</td>
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