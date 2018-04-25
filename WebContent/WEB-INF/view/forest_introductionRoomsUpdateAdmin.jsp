<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionRoomsUpdateAdmin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[type='button']").click(function(){
			location.href="adminForestIntroRoomsList.do";
		})
		
		$(".newPic").css("display","none");
		$("#close").click(function(){
			$(".oldPic").css("display","none");
			$(".newPic").css("display","block");
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
				<h1>숙박시설 수정</h1>
			</div>
			<div id="forestIntro_innerline"></div>
			<div id="forestInsertForm">
				<form action="adminForestIntroRoomsUpdate.do" method="post" enctype="multipart/form-data">
					<input type="hidden" name="rNo" value="${roomAdmin.rNo }">
					<fieldset>
						<legend></legend>
						<p>
							<label>숙박시설 이름</label>
							<input type="text" name="rName" value="${roomAdmin.rName }"> 
						</p>
						<p>
							<label>숙박시설 설명</label>
							<textarea name="rExplan" rows="8" cols="90">${roomAdmin.rExplan }</textarea> 
						</p>
						<p>
							<label>숙박시설 가격</label>
							<input type="text" name="rPrice" value="${roomAdmin.rPrice }"> 
						</p>
						<p>
							<label>인원수</label>
							<input type="text" name="rPax" value="${roomAdmin.rPax }"> 
						</p>
						<p>
							<label>휴양림 연락처</label>
							<input type="text" name="rPhone" value="${roomAdmin.rPhone }"> 
						</p>
						<p class="oldPic">
							<label>숙박시설 사진</label>
							<img src="css/images/mainImages/${roomAdmin.rPic }">
							<img src="css/images/mainImages/close.png" id="close">
							<input type="hidden" name="oldPic" value="${roomAdmin.rPic }"> 
						</p>
						<p class="newPic">
							<label>숙박시설 사진</label>
							<input type="file" name="rPic"> 
						</p>
						<p>
							<label>휴양림 이름</label>
							<select name="forNo" id="forName">
							
								<option value="선택하세요">선택하세요</option>
							<c:forEach var="item" items="${forestSelectBox }">
								<option ${item.forNo==roomAdmin.forNo? 'selected':'' } value="${item.forNo }">${item.forName }</option> 
	
							</c:forEach>
							</select>
						</p>
						<p>
							<label>숙박시설종류</label>
							<select name="facNo">
								<option value="선택하세요">선택하세요</option>
								<c:forEach var="item" items="${facilitiesBox }">
								 <option ${item.facNo==roomAdmin.facNo? 'selected':'' } value="${item.facNo }">${item.facName }</option>
							</c:forEach> 
							</select> 
						</p>
						<p>
							<input type="submit" value="수정하기" name="update">
							<input type="submit" value="삭제하기" name="update" id="forestDelete" onClick="if(confirm('선택한 숙박시설 방을 삭제하시겠습니까?')==false) return false">
							<input type="submit" value="리스트보기" name="update">
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	
</body>
</html>