<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionRoomsListAdmin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="admin_header.jsp" />
	<div id="container">
		<jsp:include page="forest_introductionSideAdmin.jsp" />
		<div id="container_forestIntro">
			<div class="forestTop">
			<h1>숙박시설 리스트</h1>
		<h3><a href="adminForestIntroInsert.do">숙박시설 추가하기</a></h3>
			</div>
		
		<div id="forestIntro_innerline"></div>
		<div id="searchForest">
			<select name="sel" id="sel">
				<option value="휴양림이름">휴양림이름</option>
				<option value="지역">지역</option>
				<option value="방이름">방이름</option>
			</select>
			<input type="text" name="name">
			<a href="#null" id="search">검색</a>
			<a href="adminForestIntroList.do" id="showList">숙박시설 리스트 보기</a>
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
		<c:set var="number" value="0"/>
				<c:if test="${introAllForest.size() > 0 }">
			<c:forEach var="item" items="${introAllForest }">
				<tr>
					<td>${number=number+1 }</td>
					<!-- number값을 들고 감 -->
					<td><a href="adminForestIntroRoomsUpdate.do?forNo=${item.forNo }">${item.forName }</a></td>
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
	
	<c:if test="${newNo>0 }">
		<script type="text/javascript">
			alert("휴양림추가가 완료 되었습니다.");   
			location.href="adminForestIntroRoomsList.do";
		</script>
	</c:if>
</body>
</html>