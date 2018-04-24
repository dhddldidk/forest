<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionRoomsInsertAdmin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[type='button']").click(function(){
			location.href="adminForestIntroRoomsList.do";
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
				<h1>숙박시설 추가</h1>
			</div>
			<div id="forestIntro_innerline"></div>
			<div id="forestInsertForm">
				<form action="adminForestIntroRoomsInsert.do" method="post">
					<fieldset>
						<legend></legend>
						<p>
							<label>숙박시설 이름</label>
							<input type="text" name="rName" placeholder="다람쥐 2층"> 
						</p>
						<p>
							<label>숙박시설 설명</label>
							<textarea name="rExplan" rows="8" cols="90" placeholder="원룸식(방1,다락1,화장실겸 샤워실)"></textarea> 
						</p>
						<p>
							<label>숙박시설 가격</label>
							<input type="text" name="rPrice" placeholder="50000"> 
						</p>
						<p>
							<label>인원수</label>
							<input type="text" name="rPax" placeholder="6"> 
						</p>
						<p>
							<label>휴양림 연락처</label>
							<input type="text" name="rPhone" placeholder="031-774-8133"> 
						</p>
						<p>
							<label>숙박시설 사진</label>
							<input type="text" name="rPic" placeholder="02031_1.gif"> 
						</p>
						<p>
							<label>휴양림 이름</label>
							<select name="forNo" id="forName">
							
								<option value="선택하세요">선택하세요</option>
							<c:forEach var="item" items="${forestSelectBox }">
								<option value="${item.forNo }">${item.forName }</option>
	
							</c:forEach>
							</select>
						</p>
						<p>
							<label>숙박시설종류</label>
							<select name="facNo">
								<option value="선택하세요">선택하세요</option>
								<c:forEach var="item" items="${facilitiesBox }">
								<option value="${item.facNo }">${item.facName }</option>
							</c:forEach>
							</select>
						</p>
						<!-- <p>
							<label>지역</label>
							<select>
								<option value="선택하세요">선택하세요</option>
								<option value="02031">서울/경기</option>
								<option value="033">강원</option>
								<option value="043">충북</option>
								<option value="041">충남</option>
								<option value="063">전북</option>
								<option value="061">전남</option>
								<option value="054">경북</option>
								<option value="055">경남</option>
							</select>
						</p> -->
						<p>
							<input type="submit" value="추가하기">
							<input type="reset" value="다시작성하기">
							<input type="button" value="리스트보기">
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>