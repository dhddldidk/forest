<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionInsertAdmin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[type='button']").click(function(){
			location.href="adminForestIntroList.do";
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
				<h1>휴양림 추가</h1>
			</div>
			<div id="forestIntro_innerline"></div>
			<div id="forestInsertForm">
				<form action="adminForestIntroInsert.do" method="post">
					<fieldset>
						<legend></legend>
						<p>
							<label>휴양림 이름</label>
							<input type="text" name="forName" placeholder="산음(양평) 자연휴양림"> 
						</p>
						<p>
							<label>휴양림 설명</label>
							<textarea name="forDetail" rows="8" cols="90" placeholder="자연 그대로의 모습이 보존된 산음 자연휴양림"></textarea> 
						</p>
						<p>
							<label>휴양림 이메일 주소</label>
							<input type="text" name="forHomepage" placeholder="http://www.huyang.go.kr/comforestmain.action?dprtmId=0103"> 
						</p>
						<p>
							<label>휴양림 주소</label>
							<input type="text" name="forPost" placeholder="경기도 양평균 단원면 고북길 347"> 
						</p>
						<p>
							<label>휴양림 연락처</label>
							<input type="text" name="forPhone" placeholder="031-774-8133"> 
						</p>
						<p>
							<label>휴양림 사진</label>
							<input type="text" name="forPic" placeholder="02031_1.gif"> 
						</p>
						<p>
							<label>휴양림 위도</label>
							<input type="text" name="forLatitude" placeholder="37.5970696"> 
						</p>
						<p>
							<label>휴양림 경도</label>
							<input type="text" name="forLongitude" placeholder="127.5706887"> 
						</p>
						<p>
							<label>지역</label>
							<select name="sel">
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
						</p>
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