<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionUpdateAdmin.css">
<link rel="stylesheet" href="css/jquery-ui.css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" ></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$( function() {
		$( "#res_save" ).datepicker({
			dateFormat: "yy-mm-dd"
		});
		$( "#res_startdate" ).datepicker({
			dateFormat: "yy-mm-dd"
		});
		$( "#res_enddate" ).datepicker({
			dateFormat: "yy-mm-dd"
		});
		
	});
	
	function goList(){
		location.href="admin.do";
	}
</script>
</head>
<body>
<jsp:include page="admin_header.jsp" />
	<div id="container">
		<jsp:include page="forest_ReservationSubMenuAdmin.jsp" />
		<div id="container_forestIntro">
			<div class="forestTop">
				<h1>예약 수정</h1>
			</div>
			<div id="forestIntro_innerline"></div>
			<div id="forestInsertForm">
				<form action="adminReservationRoomUpdate.do" method="post">
					<fieldset>
						<legend></legend>
						<p>
							<label>휴양림 이름</label>
							<input type="text" name="forName" value="${resRoom.res_forname }"> 
						</p>
						<p>
							<label>방 이름</label>
							<input type="text" name="r_name" value="${resRoom.r_name}"> 
						</p>
						<p>
							<label>아이디</label>
							<input type="text" name="u_id" value="${resRoom.u_id}"> 
						</p>
						<p>
							<label>예약날짜</label>
							<input type="text" id="res_save" name="res_save" value="<fmt:formatDate value="${resRoom.res_save }" pattern="yyyy-MM-dd"/>"> 
						</p>
						<p>
							<label>입실날짜</label>
							<input type="text" id="res_startdate" name="res_startdate" value="<fmt:formatDate value="${resRoom.res_startdate }" pattern="yyyy-MM-dd"/>"> 
						</p>
						<p>
							<label>퇴실날짜</label>
							<input type="text" id="res_enddate" name="res_enddate" value="<fmt:formatDate value="${resRoom.res_enddate }" pattern="yyyy-MM-dd"/>"> 
						</p>
						<p>
							<label>예약번호</label>
							<input type="text" name="res_no" value="${resRoom.res_no }"> 
						</p>
						<p>
							<label>숙박기간</label>
							<select name="res_stay">
								<option value='0'>숙박기간 선택</option>
								<option ${resRoom.res_stay == 1? 'selected':'' } value='1'>1박2일</option>
								<option ${resRoom.res_stay == 2? 'selected':'' } value='2'>2박3일</option>
								<option ${resRoom.res_stay == 3? 'selected':'' } value='3'>3박4일</option>
							</select>
						</p>
						<p>
							<label>결제상태</label>
							<select name="res_his">
								<option value='100'>결제상태</option>
								<option ${resRoom.res_his == 0? 'selected':'' } value='0'>예약완료</option>
								<option ${resRoom.res_his == 1? 'selected':'' } value='1'>결제완료</option>
								<option ${resRoom.res_his == 2? 'selected':'' } value='2'>취소완료</option>
								<option ${resRoom.res_his == 3? 'selected':'' } value='3'>이용완료</option>
							</select>
						</p>
						<p>
							<input type="submit" value="수정하기" name="update">
							<input type="submit" value="삭제하기" name="update" onClick="if(confirm('정말 삭제 하시겠습니까?')==false) return false">
							<input type="button" value="리스트보기" onclick="javascript:goList()">
						</p>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>