<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_reservationAdmin.css">
<style>
#content {
	width: 1180px;
	margin: 0 auto;
	
	overflow: hidden;
}

#content_login {
	width: 930px;
	
	border: 1px solid red;
	float: right;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
</head>
<body>
	<jsp:include page="admin_header.jsp" />

	<div id="content">
		<jsp:include page="forest_ReservationSubMenuAdmin.jsp" />
		<div id="content_reservation">
			<div class="reservationTop">
				<h1>예약 현황</h1>
				<h3>
					<a href="#">예약추가</a>
				</h3>
			</div>

			<div id="reservation_innerline"></div>
			<div id="searchReservation">
				<select name="sel" id="sel">
					<option value="휴양림이름">휴양림이름</option>
					<option value="아이디">아이디</option>
				</select>
				<input type="text" name="name">
				<a href="#null" id="search">검 색</a> 
				<a href="admin.do" id="showList">전체 예약 현황 보기</a>
			</div>
			<div class="reservationRoomList" id="reservationRoomList">
				<table>
					<tr>
						<th>예약번호</th>
						<th>예약ID</th>
						<th>예약날짜</th>
						<th>입실날짜</th>
						<th>퇴실날짜</th>
						<th>숙박기간</th>
						<th>총 금액</th>
						<th>휴양림 명</th>
						<th>방 이름</th>
						<th>결제상태</th>
					</tr>
					<c:if test="${list.size() == 0 }">
						<tr>
							<td colspan="5">등록된 게시글이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${list.size() > 0 }">
						<c:forEach var="item" items="${list }">
							<tr>
								<td>${item.res_no }</td>
								<!-- number값을 들고 감 -->
								<td><a href="adminReservationRoomUpdate.do?id=${item.u_id }&res_no=${item.res_no}">${item.u_id }</a></td>
								<td><fmt:formatDate value="${item.res_save }" pattern="yyyy-MM-dd"/></td>
								<td><fmt:formatDate value="${item.res_startdate }" pattern="yyyy-MM-dd"/></td>
								<td><fmt:formatDate value="${item.res_enddate }" pattern="yyyy-MM-dd"/></td>
								<td>${item.res_stay }일</td>
								<td>${item.res_fprice }원</td>
								<td>${fn:substringBefore(item.res_forname, '자연휴양림') }</td>
								<td>${item.r_name }</td>
								<c:choose>
									<c:when test="${item.res_his == 0 }">
										<td>예약</td>
									</c:when>
									<c:when test="${item.res_his == 1 }">
										<td>결제</td>
									</c:when>
									<c:when test="${item.res_his == 2 }">
										<td>취소</td>
									</c:when>
								</c:choose>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>