<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionUpdateAdmin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="admin_header.jsp" />
	<div id="container">
		<jsp:include page="forest_introductionSideAdmin.jsp" />
		<div id="container_forestIntro">
			<div class="forestTop">
				<h1>휴양림 수정</h1>
			</div>
			<div id="forestIntro_innerline"></div>
			<div id="forestInsertForm">
				<form action="adminForestIntroUpdate.do" method="post">
					<input type="hidden" name="forNo" value="${forest.forNo }">
					<fieldset>
						<legend></legend>
						<p>
							<label>휴양림 이름</label>
							<input type="text" name="forName" value="${forest.forName }"> 
						</p>
						<p>
							<label>휴양림 설명</label>
							<textarea name="forDetail" rows="8" cols="90">${forest.forDetail }</textarea> 
						</p>
						<p>
							<label>휴양림 이메일 주소</label>
							<input type="text" name="forHomepage" value="${forest.forHomepage }"> 
						</p>
						<p>
							<label>휴양림 주소</label>
							<input type="text" name="forPost" value="${forest.forPost }"> 
						</p>
						<p>
							<label>휴양림 연락처</label>
							<input type="text" name="forPhone" value="${forest.forPhone }"> 
						</p>
						<p>
							<label>휴양림 사진</label>
							<input type="text" name="forPic" value="${forest.forPic }"> 
						</p>
						<p>
							<label>휴양림 위도</label>
							<input type="text" name="forLatitude" value="${forest.forLatitude }"> 
						</p>
						<p>
							<label>휴양림 경도</label>
							<input type="text" name="forLongitude" value="${forest.forLongitude }"> 
						</p>
						<p>
							<label>지역</label>
							<select name="sel">
								<option>선택하세요</option>
								<option ${forest.dNo == '02031'? 'selected':'' } value="02031">서울/경기</option>
								<option ${forest.dNo == '033'? 'selected':'' } value="033">강원</option>
								<option ${forest.dNo == '043'? 'selected':'' } value="043">충북</option>
								<option ${forest.dNo == '041'? 'selected':'' } value="041">충남</option>
								<option ${forest.dNo == '063'? 'selected':'' } value="063">전북</option>
								<option ${forest.dNo == '061'? 'selected':'' } value="061">전남</option>
								<option ${forest.dNo == '054'? 'selected':'' } value="054">경북</option>
								<option ${forest.dNo == '055'? 'selected':'' } value="055">경남</option>
							</select>
						</p>
						<p>
							<input type="submit" value="수정하기" name="update">
							<input type="reset" value="다시작성하기">
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