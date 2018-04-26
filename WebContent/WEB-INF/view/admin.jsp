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
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#search").click(function(){
			var search=$("input[name='name']").val();
			var sel = $("#sel").val();
			if(search.length==0){
				alert("검색할 단어가 없습니다.");
				return false;
			}
			
			$.ajax({
				url : "adminReservationRoomList.do",
				type : "get",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				data:{"sel":sel,
					"search":search},
				success : function(data) {
					console.log(data);
					
					$(".reservationRoomList").find("table").remove();
					
					if(data.length==0){
						alert("검색된 내용이 없습니다.");
					}
					
					//검색된 데이터 넣기
					var $tr1 = $('<tr>');
					var $th1 = $('<th>').html("예약번호");
					var $th2 = $('<th>').html("예약ID");
					var $th3 = $('<th>').html("예약날짜");
					var $th4 = $('<th>').html("입실날짜");
					var $th5 = $('<th>').html("퇴실날짜");
					var $th6 = $('<th>').html("숙박기간");
					var $th7 = $('<th>').html("총 금액");
					var $th8 = $('<th>').html("휴양림");
					var $th9 = $('<th>').html("방 이름");
					var $th10 = $('<th>').html("결제상태");
					
					
					$tr1.append($th1).append($th2).append($th3).append($th4).append($th5)
					.append($th6).append($th7).append($th8).append($th9).append($th10);
					
					var $table = $('<table>').append($tr1);
					$(data).each(function(i, obj){
						var $tr2 = $('<tr>');
						var $td1 = $('<td>').html(obj.res_no);
						var $td2 = $('<td>').html('<a href="adminForestIntroUpdate.do?id='+obj.u_id+'&res_no='+obj.res_no+'">'+obj.u_id+'</a>');
						
						var $td3 = $('<td>').html(dateFormat(obj.res_now));
						var $td4 = $('<td>').html(dateFormat(obj.res_startdate));
						var $td5 = $('<td>').html(dateFormat(obj.res_enddate));
						var $td6 = $('<td>').html(obj.res_stay + "일");
						var $td7 = $('<td>').html(obj.res_fprice + "원");
						var str = obj.res_forname.split(" ");
						var $td8 = $('<td>').html(str[0]);
						var $td9 = $('<td>').html(obj.r_name);
						switch(obj.res_his){
						case 0:
							var $td10 = $('<td>').html("예약");
							break;
						case 1:
							var $td10 = $('<td>').html("결제");
							break;
						case 2:
							var $td10 = $('<td>').html("취소");
							break;
						case 3:
							var $td10 = $('<td>').html("이용");
							break;
						}
						
						$tr2.append($td1).append($td2).append($td3).append($td4).append($td5)
						.append($td6).append($td7).append($td8).append($td9).append($td10);
						
						$table.append($tr2);
					})
					
					$(".reservationRoomList").append($table);
				
				}	/* success 끝 */
			});
		})
	})
	
	function dateFormat(date){
		var formatDate = new Date();
		formatDate.setTime(date);
		var year = formatDate.getFullYear();
		var month = (formatDate.getMonth()+1>9?formatDate.getMonth()+1:"0"+(formatDate.getMonth()+1));
		var day = (formatDate.getDate()>9?formatDate.getDate():"0"+(formatDate.getDate()+1));
		var resultDate = year + "-" + month + "-" + day;
		return resultDate;
	}
	
</script>
</head>
</head>
<body>
	<jsp:include page="admin_header.jsp" />

	<div id="content">
		<jsp:include page="forest_ReservationSubMenuAdmin.jsp" />
		<div id="content_reservation">
			<div class="reservationTop">
				<h1>예약 현황</h1>
				<!-- <h3>
					<a href="#">예약추가</a>
				</h3> -->
			</div>

			<div id="reservation_innerline"></div>
			<div id="searchReservation">
				<select name="sel" id="sel">
					<option value="예약번호">예약번호</option>
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
						<th>휴양림</th>
						<th>방 이름</th>
						<th>상태</th>
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
								<td><fmt:formatDate value="${item.res_now }" pattern="yyyy-MM-dd"/></td>
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
									<c:when test="${item.res_his == 3 }">
										<td>이용</td>
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