<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/jqwidget/jqx.base.css" type="text/css" />
<link rel="stylesheet" href="css/reservation.css" type="text/css" />
<style type="text/css">
/* 휴양림 예약 - 선착순예약 - 선택영역 */
.wid100 {
	width: 100px !important;
}

.reserve_select {
	width: 65.7%;
	display: inline-block;
	overflow: hidden;
}

.reserve_select .select_area>li {
	border: 1px solid #8b8b8b;
	border-bottom: none;
	border-top: none;
}

.reserve_select .select_area>li>a {
	border-bottom: 1px solid #8b8b8b;
	display: block;
	padding-right: 10px;
	height: 38px;
	line-height: 38px;
	background: #fff url(css/images/common/btn_whitegray_bg.png) repeat-x
		bottom;
}

.reserve_select .select_area>li:first-child a {
	border-top: 1px solid #8b8b8b;
}

.select_area>li>a>span {
	display: block;
	font-size: 15px;
	margin-left: 15px;
	background: url(images/common/snb_n_active.png) no-repeat right center;
	letter-spacing: -1px;
	font-weight: 700;
}

.sort_wrap {
	padding: 15px;
	border-bottom: 1px solid #8b8b8b;
}

.area_sort h4 {
	height: 30px;
	line-height: 30px;
	color: #fff;
	background: #797d89;
	margin-bottom: 0;
	font-size: 15px;
	letter-spacing: -1px;
	font-weight: 700;
}

.area_sort h4 span {
	margin-left: 10px;
}

.area_sort .select_box_wrap {
	position: relative;
	overflow: hidden;
	padding: 5px 0 5px 98px;
}

.area_sort .select_box_wrap.etc {
	padding-left: 0;
}

.area_sort .select_box_wrap .all_select {
	position: absolute;
	left: 0;
}

.area_sort .select_box_wrap span {
	width: 120px;
	float: left;
	margin-right: 5px;
}

.select_area>li.select_tab.selected>.deth1 span {
	display: block;
	background: url("css/images/common/snb_active.png") no-repeat right 50%;
}

.select_area>li.select_tab>.deth1 span {
	display: block;
	background: url("css/images/common/snb_n_active.png") no-repeat right
		50%;
	padding: 0;
}

.select_area>li.select_tab.selected>.deth1_nc span {
	display: block;
	background: url("css/images/common/snb_active_nc.png") no-repeat right
		50%;
}

.select_area>li.select_tab>.deth1_nc span {
	display: block;
	background: url("css/images/common/snb_n_active_no.png") no-repeat right
		50%;
	padding: 0;
}

.select_area li .deth2 {
	display: none;
}

.select_area li .deth2.on {
	display: block;
}
/* 약관 동의 부분 */
.agree_area {
	margin-top: 30px;
	display: none;
}

.stit_area {
	text-align: left;
}

.stit_area .top_bar {
	display: inline-block;
	width: 42px;
	height: 2px;
	background: #209159;
}

.stit_area .s_tit {
	font: 600 18px 'ntk';
	margin-bottom: 15px;
}

.mgt25 {
	margin-top: 25px !important;
}

.tcenter {
	text-align: center !important;
}

.button_wrap {
	position: relative;
	overflow: hidden;
	margin-top: 10px;
	height: 40px;
}

.button_wrap div {
	margin-right: 3px;
	display: inline-block;
}

.button_wrap div a {
	display: inline-block;
	padding: 10px;
}

.board_btn_w_gray {
	background: #fff url(css/images/common/btn_whitegray_bg.png) repeat-x 50%
		bottom;
	border: 1px solid #8b8b8b;
	color: #000;
	display: inline-block;
}

.pd10and15 {
	padding: 10px 15px !important;
}

.inblk {
	display: inline-block;
}

/* 숙방정보 */
.hystit {
    font-size: 15px;
    font-weight: 600;
    color: #333;
    line-height: 150%;
    margin-bottom: 10px;
    display: block;
}

.room_info_wrap {
    position: relative;
    height: 300px;
}
.room_info_area {
    border-top: 3px solid #2d905b;
}
.room_info_area .img_area {
    width: 270px;
    height: 180px;
    float: left;
    background: #efefef url(css/images/common/defalut_img.png) no-repeat center;
    margin: 20px;
}
.room_info_area .room_info {
    display: inline-block;
    margin-top: 12px;
}
.room_info_area .room_info dl {
    position: relative;
    line-height: 25px;
}
.room_info_area .room_info dt {
    position: absolute;
    left: 0;
    display: inline-block;
    margin: 6px 0;
    background: url(css/images/common/lnb_list_dot.png) no-repeat left center;
    padding-left: 10px;
}
.room_info_area .room_info .room_name {
    color: #2d905b;
}
.room_info_area .room_info dd {
    margin-left: 90px;
    padding: 6px 60px 6px 0;
    border-bottom: 1px solid #d5d5d5;
}
.reserv_area {
    position: absolute;
    top: 0;
    right: 0;
    width: 351px;
    height: 100%;
    background: #2d905b;
    color: #fff;
    overflow: hidden;
}
.reserv_area h5 {
    padding-left: 30px;
    background: url(css/images/common/money_icon.png) no-repeat left center;
    font-size: 18px;
    margin: 16px 30px 10px 30px;
}
.reserv_area dl {
    position: relative;
    font-size: 15px;
    padding: 15px 0 5px 0;
    margin: 0 30px;
    border-top: 2px solid #fff;
    border-bottom: 1px solid #6cb28d;
}
.reserv_area dl dt {
    position: absolute;
    left: 0;
    padding-left: 10px;
    background: url(css/images/common/text_indent_img.png) no-repeat left center;
}
.reserv_area dl dd {
    text-align: right;
    margin-bottom: 12px;
}
.button_wrap {
    position: relative;
    overflow: hidden;
    margin-top: 10px;
    height: 40px;
}
.reserv_area .button_wrap {
    margin: 10px 30px;
}

.reserv_area .reserv_btn {
    overflow: hidden;
}
.reserv_area .reserv_btn li {
    width: 100%;
    float: left;
}
.reserv_area .reserv_btn li:first-child button {
    margin-right: 2px;
}
.hybtn_reserv_green {
    background: #1b633c;
    border: 1px solid #185634;
    color: #fff;
    display: block;
    font-size: 15px;
    font-weight: 700;
    width: 100%;
    padding: 10px 0;
    cursor: pointer;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
}
.mgt30 {
    margin-top: 30px !important;
}
.btn_gray {
    background: #848894 url(css/images/common/btn_gray.png) repeat-x 50% bottom;
    color: #fff;
    border: 1px solid #656873;
    display: inline-block;
}
.wid_size {
    padding: 5px 18px 4px 18px;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript">
	var roomNum = 0;
	var sel_price = 0;
	$(document).ready(function() {
		/* 세부 항목 선택 애니메이션 */
		$(".select_tab").addClass("selected");
		$("#dprtm_tab").addClass("sort_wrap");
		$(".select_tab a").click(function() {
			$(this).parent().toggleClass("selected");
			$(this).next().slideToggle(400);
		})

		$("#upper_dprtm_id").change(function() {
			$("#areabox").children().css("display", "none");
			var number = $("#upper_dprtm_id option:selected").val();
			var id = "#area_" + number;
			$(".btn_check").css("display", "block");
			$(id).css("display", "block");
		})
		// 기본 전체 체크
		$("input:checkbox").attr("checked", true);

		$("#areaAll").click(function() {
			if ($("#areaAll").is(":checked") == true) {
				$("input:checkbox[name=dprtmId]").prop("checked", true);
			} else {
				$("input:checkbox[name=dprtmId]").prop("checked", false);
			}
		})
		$("#facAll").click(function() {
			if ($("#facAll").is(":checked") == true) {
				$("input:checkbox[name=facilChk]").prop("checked", true);
			} else {
				$("input:checkbox[name=facilChk]").prop("checked", false);
			}
		})
		$(document).on("click", "#reserv_btn",function(){
			$(".agree_area").css("display","block");
		})
		
		/* button : 예약하기 */
		$(document).on("click","#btnViewRoomInfo2", function(){
			var fname = $(this).parent().parent().find("dt").html();
			var pax = $(this).attr("data-pax");
			roomNum = $(this).attr("data-no");
			sel_price = $(this).attr("data-price");
			fnViewRoomInfo2(fname, pax);
		});
		
		$("#psraser").click(function(){
			$("#dataView").html("");
			$(".room_table").html("");
			var dno = "#area_" + $("#upper_dprtm_id option:selected").val();
			var homepage = new Array();
			var fac = new Array();
			$(dno).find("input[name='dprtmId']:checked").each(function(i, obj){
				
				homepage[i] = $(obj).val();
			})
			$("input[name='facilChk']:checked").each(function(i, obj){
				fac[i] = $(obj).val();
			})
			
			var dis = $("#upper_dprtm_id option:selected").val();
			
	        fnSearch(dis,homepage, fac);
	        $(".agree_area").css("display","none");
		})
		
		$("#btnReservation").click(function(){
			var result = $("input[name='allCf']:checked").val();
			if(result == 'Y'){
				fnReservationOK();
				alert("예약되었습니다");
			}else{
				alert("약관에 동의해 주시기 바랍니다.");
				return false;
			}
			
		})

	});
	
	function fnReservationOK(){
		/* alert(roomNum); */
		var no = roomNum;
		$.ajax({
			url:"reservationOk.do",
			type:"get",
			dataType:"json",	// 서버로부터 돌려받을 데이터 타입
			data:{"r_no":no,	// 방번호
				"stay":stayNum,	// 숙박기간
				"inYear":choYear,	// 해당년도
				"inMonth":firstMonth,	// 입실 달
				"inDay":firstDay,	// 입실 날
				"outMonth":(outDay>lastDay[todayMonth]?firstMonth+1:firstMonth),	// 퇴실 달
				"outDay":(outDay<lastDay[todayMonth]?outDay:outDay-lastDay[todayMonth]), // 퇴실 날
				},				//서버로 줄 타입
			success:function(data){
				
			}
		})
	}
	
	/* 날짜 변환 */
	function SimpleDateFormat(){
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth()+1;
		var day = date.getDate();
		
		return year+"."+month+"."+day;
	}
	
	//예약 대기 가능 상품 검색
	function fnSearch(dis,homeList, fac) {
		var inwon = $("#mxmmAccptCnt option:selected").val();
		$.ajax({
			url:"roomList.do",
			type:"get",
			dataType:"json",	// 서버로부터 돌려받을 데이터 타입
			data:{"dis":dis,
				"homeList":homeList.toString(),		//
				"fac":fac.toString(),
				"inwon":inwon,
				"inYear":choYear,	// 해당년도
				"stay":stayNum,	// 숙박기간
				"inMonth":firstMonth,	// 입실 달
				"inDay":firstDay,	// 입실 날
				"outMonth":(outDay>lastDay[todayMonth]?firstMonth+1:firstMonth),	// 퇴실 달
				"outDay":(outDay<lastDay[todayMonth]?outDay:outDay-lastDay[todayMonth]), // 퇴실 날
				},				//서버로 줄 타입
			success:function(data){
				/* console.log(data); */
				var strDate = SimpleDateFormat();
				var li0 = $("<li>").html("<span class='reser_tit' style='width: 100px'>"+strDate+"일 "+ stayNum +"박 "+ (Number(stayNum)+1) +"일로 예약가능한 시설은 총 "+data.length+"개 입니다.</span>");
				$(".room_table").append(li0);
				$(data).each(function(i, obj){
					var li = $("<li>");
					var dl = $("<dl class='list_room_info'>");
					var dt = $("<dt  style='width:150px'>").html(obj.for_name);
					var dd1 = $("<dd style='width:150px'>");
 					var imgArr = ["icon_soop.png","icon_hue.png","icon_yeon.png","icon_sue.png","icon_deck.png"];
 					
					switch(obj.fac_no){
					case 1:
						var span1 = $("<span class='room_icon'>").html("<img src='css/images/reservation/"+ imgArr[0] +"'>");
						break;
					case 2:
						var span1 = $("<span class='room_icon'>").html("<img src='css/images/reservation/"+ imgArr[1]  +"'>");
						break;
					case 3:
						var span1 = $("<span class='room_icon'>").html("<img src='css/images/reservation/"+ imgArr[2] +"'>");
						break;
					case 4:
						var span1 = $("<span class='room_icon'>").html("<img src='css/images/reservation/"+ imgArr[3] +"'>");
						break;
					case 5:
						var span1 = $("<span class='room_icon'>").html("<img src='css/images/reservation/"+ imgArr[4] +"'>");
						break;
					}
					var span2 = $("<span class='blind'>");
					var tagA = $("<a href='#' class='room_tit' id='roomtit' data-pax='"+obj.r_pax+"'>").html(obj.r_name + "/" + obj.r_pax + "인실");
					$(dd1).append(span1).append(span2).append(tagA);
					var dd2 = $("<dd style='width: 250px'>").html(firstMonth + "월 " + firstDay + "일 ~ " + (outDay>lastDay[todayMonth]?firstMonth+1:firstMonth) + "월 " + (outDay<=lastDay[todayMonth]?outDay:outDay-lastDay[todayMonth]) + "일");
					var dd3 = $("<dd style='width: 300px'>").html("1박:"+obj.r_price + "원 / <font color='blue'> 합계 : "+(obj.r_price*stayNum)+"</font>");
					var dd4 = $("<dd style='width: 100px'>").html("<button type='button' class='btn_gray wid_size' id='btnViewRoomInfo2' data-price='"+obj.r_price+"' data-no='"+obj.r_no+"' data-pax='"+obj.r_pax+"'>예약하기</button>")
					
					$(dl).append(dt).append(dd1).append(dd2).append(dd3).append(dd4);
					$(li).append(dl);
					$(".room_table").append(li);
					
				})
				
			}
			
		})
	}
	
	function fnViewRoomInfo2(item, pax) {
		var forestName = item;
		var roomName = "";
		$("#agree_area").css("display","none");
		$("#dataView").html('<h5 class="hystit hy_green">선택하신 숙박정보</h5>');
		var room_info_wrap = $("<div class='room_info_wrap'>");
		var room_info_area = $("<div id='room_info_area' class='room_info_area'>");
		var img_area = $("<div class='img_area'>");
		var p1 = $("<p>").html("<img src='css/images/product/2017_05_30_18_35_110.jpg' width='100%' height='100%' alt='참나무'>");
		$(img_area).append(p1);
		
		var room_info = $("<div class='room_info'>");
		var dl1 = $("<dl>");
		var dt1 = $("<dt>").html("휴양림");
		var dd1 = $("<dd class='room_name'>").html("<span>"+ forestName +"</span>");
		var dt2 = $("<dt>").html("상품정보");
		var dd2 = $("<dd>").html("숙박시설 / "+ roomName +" 1 ~ "+ pax +"인실");
		var dt3 = $("<dt>").html("숙박기간");
		var dd3 = $("<dd>").html(choYear + "."+firstMonth + "." + firstDay + " ~ " + choYear + "."+ (outDay>lastDay[todayMonth]?firstMonth+1:firstMonth) + "." + (outDay<lastDay[todayMonth]?outDay:outDay-lastDay[todayMonth]));
		
		var dt4 = $("<dt>").html("편의시설");
		var dd4 = $("<dd>").html("냉장고, 가스렌지, 이불장, 샤워실, TV");
		$(dl1).append(dt1).append(dd1).append(dt2).append(dd2).append(dt3).append(dd3).append(dt4).append(dd4);
		var dl2 = $("<dl class='park_select>'").html("<dt>주차료</dt><dd>무료</dd>");
		$(room_info).append(dl1).append(dl2);
		$(room_info_area).append(img_area).append(room_info);
		$(room_info_wrap).append(room_info_area);
		/* 예약하기 부분 */
		var reserv_area = $("<div class='reserv_area'>").html("<h5 class='mgt30'>예약금액</h5>");
		var dl5 = $("<dl>");
		var dt5 = $("<dt>").html("<span>"+stayNum+"</span>박");
		var dd5 = $("<dd>").html("<span>"+ sel_price +"원 <span class='orange01'>[할인가능]</span></span>");
		var dt6 = $("<dt class='sbg Center'>").html("합계");
		var dd6 = $("<dd class='ar'>").html("<span class='sub_text' id='allTotalPrice'>"+Number(sel_price*stayNum)+"원</span>");
		$(dl5).append(dt5).append(dd5).append(dt6).append(dd6);
		$(reserv_area).append(dl5);
		var button_wrap = $("<div class='button_wrap'>");
		var reserv_btn = $("<ul class='reserv_btn'>");
		var li1 = $("<li class='wid100p'>").html("<button type='button' class='hybtn_reserv_green' id='reserv_btn'>약관동의</button>");
		$(reserv_btn).append(li1);
		$(button_wrap).append(reserv_btn);
		$(reserv_area).append(button_wrap);
		$(room_info_wrap).append(reserv_area);
		$("#dataView").append(room_info_wrap);

	}                 
</script>

</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- end header -->
	<!-- section -->
	<section id="sub_community_wrap">
		<div id="sub_content_wrap">
			<div class="title_area">
				<h3>선착순 예약</h3>
			</div>
			<div class="content">
				<div class="reserve" id="reserve">
					<div class="top_area">
						<!-- 달력 부분 -->
						<div class="calendar_wrap">
							<h4>
								<span>날짜 선택</span>
							</h4>
							<div class="calendar_box">
								
								<jsp:include page="calendar.jsp" />
								
							</div>
							<div class="calendar_sort">
								<div class="select_day">
									<div id="div_rsrvtQntt" class="select wid120">
										<label class="blind">숙박 기간 선택</label> <select id="rsrvtQntt"
											name="rsrvtQntt" class="calb w110">
											<option value="0">숙박기간선택</option>
											<option value="1">1박2일</option>
											<option value="2">2박3일</option>
											<option value="3">3박4일</option>
										</select>
									</div>
								</div>
								<ul>
									<li><span class="yellow_box"></span><span>선착순 예약 가능
											날짜</span></li>
									<li><span class="gray_box2"></span><span>주말 추첨제 가능
											날짜</span></li>
									<li><span class="blue_box"></span><span>숙박하실 날짜</span></li>
									<li><span class="pink_box"></span><span>퇴실하실 날짜</span></li>
								</ul>
							</div>
						</div>
						<!-- 달력 부분 끝  -->
						<!-- 예약 상세선택 부분 -->
						<div class="reserve_select">
							<h4>
								<span>세부 항목 선택</span>
							</h4>
							<ul class="select_area">
								<li class="select_tab"><a href="#huyang" class="deth1_nc"><span>휴양림
											선택</span></a>
									<div id="dprtm_tab" class="sort_wrap top_sort deth2 on">
										<div class="area_sort">
											<h4>
												<span>지역선택 : <select id="upper_dprtm_id"
													name="upper_dprtm_id"
													style="color: white; background-color: #797d89;"
													title="지역 선택">
														<option value="02031">서울/경기</option>
														<option value="033">강원</option>
														<option value="043">충북</option>
														<option value="041">충남</option>
														<option value="063">전북</option>
														<option value="061">전남</option>
														<option value="054">경북</option>
														<option value="055">경남</option>
												</select>
												</span>
											</h4>
											<!-- 지역명 -->
											<!-- 지역별 영역 DIV START -->
											<div id="areabox" class="select_box_wrap">
												<span class="btn_check all_select" id="areaSpan"> <input
													id="areaAll" name="dprtmId" type="checkbox" value="0000">
													<label for="areaAll">전체선택</label> <input type="hidden"
													name="_dprtmId" value="on">
												</span>
												<!-- 서울/경기 -->
												<div id="area_02031">
													<c:if test="${nameListSGyeonggi.size() > 0 }">
														<c:forEach var="item" items="${nameListSGyeonggi }">
															<span class="btn_check DPRT_3000001">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 강원 -->
												<div id="area_033" style="display: none;">
													<c:if test="${nameListGangwon.size() > 0 }">
														<c:forEach var="item" items="${nameListGangwon }">
															<span class="btn_check DPRT_3000002">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 충북 -->
												<div id="area_043" style="display: none;">
													<c:if test="${nameListChungbuk.size() > 0 }">
														<c:forEach var="item" items="${nameListChungbuk }">
															<span class="btn_check DPRT_3000003">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 충남 -->
												<div id="area_041" style="display: none;">
													<c:if test="${nameListChungnam.size() > 0 }">
														<c:forEach var="item" items="${nameListChungnam }">
															<span class="btn_check DPRT_3000004">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 전북 -->
												<div id="area_063" style="display: none;">
													<c:if test="${nameListJeonbuk.size() > 0 }">
														<c:forEach var="item" items="${nameListJeonbuk }">
															<span class="btn_check DPRT_3000005">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 전남 -->
												<div id="area_061" style="display: none;">
													<c:if test="${nameListJeonnam.size() > 0 }">
														<c:forEach var="item" items="${nameListJeonnam }">
															<span class="btn_check DPRT_3000006">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 경북 -->
												<div id="area_054" style="display: none;">
													<c:if test="${nameListGyeongbuk.size() > 0 }">
														<c:forEach var="item" items="${nameListGyeongbuk }">
															<span class="btn_check DPRT_3000007">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 경남 -->
												<div id="area_055" style="display: none;">
													<c:if test="${nameListGyeongnam.size() > 0 }">
														<c:forEach var="item" items="${nameListGyeongnam }">
															<span class="btn_check DPRT_3000008">
																<input id="3000002_${item.home }" name="dprtmId" type="checkbox" value="${item.home }">
																<label for="3000002_${item.home }">${item.name }</label>
																<input type="hidden" name="_dprtmId" value="on">
															</span> 
														</c:forEach>
													</c:if>
												</div>
												<!-- 지역에 소속된 휴양림 목록 출력 END -->
											</div>
											<!-- 지역별 영역 DIV END -->
										</div>
									</div></li>
								<li class="select_tab"><a href="#huyang" class="deth1_nc"><span>시설 선택</span></a>
									<div id="fclt_tab" class="sort_wrap deth2" style="display: block;">
										<!-- 시설 선택  -->
										<div class="area_sort">
											<div class="select_box_wrap">
												<span class="btn_check all_select"> <input
													id="facAll" name="facilChk" type="checkbox" value="0"><label
													for="facAll">전체선택</label><input type="hidden"
													name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_03001"> <input
													id="fcltMdclsCd1" name="facilChk" type="checkbox"
													value="1"><label for="fcltMdclsCd1">숲속의집</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_03002"> <input
													id="fcltMdclsCd2" name="facilChk" type="checkbox"
													value="2"><label for="fcltMdclsCd2">휴양관</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_03003"> <input
													id="fcltMdclsCd3" name="facilChk" type="checkbox"
													value="3"><label for="fcltMdclsCd3">연립동</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_03004"> <input
													id="fcltMdclsCd4" name="facilChk" type="checkbox"
													value="4"><label for="fcltMdclsCd4">숲속수련장</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_04001"> <input
													id="fcltMdclsCd5" name="facilChk" type="checkbox"
													value="9"><label for="fcltMdclsCd5">노지야영장</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_04002"> <input
													id="fcltMdclsCd6" name="facilChk" type="checkbox"
													value="5"><label for="fcltMdclsCd6">야영데크</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_04005"> <input
													id="fcltMdclsCd8" name="facilChk" type="checkbox"
													value="6"><label for="fcltMdclsCd8">오토캠핑장</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_04006"> <input
													id="fcltMdclsCd9" name="facilChk" type="checkbox"
													value="8"><label for="fcltMdclsCd9">캐빈</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span> <span class="btn_check" id="CLS_04007"> <input
													id="fcltMdclsCd10" name="facilChk" type="checkbox"
													value="7"><label for="fcltMdclsCd10">캠핑카야영장</label><input
													type="hidden" name="_fcltMdclsCd" value="on">
												</span>
											</div>
										</div>
									</div></li>
								<li class="select_tab"><a href="#huyang" class="deth1_nc"><span>인원수
											선택</span></a>
									<div id="accpcnt_tab" class="sort_wrap deth2"
										style="display: block;">
										<div class="area_sort">
											<div class="select_box_wrap">
												<div class="select wid100">
													<select id="mxmmAccptCnt" name="mxmmAccptCnt">
														<option value="0" selected="selected">- 전체 -</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>												
													</select>
												</div>
												인실 (인원수 선택 시 선택하신 숫자이상의 객실이 검색되어 집니다.)
											</div>
										</div>
									</div></li>
							</ul>

							<div class="button_wrap" align="right">
								<div class="reserv_search_btn_wrap board_btn_green">
									<button id="imgSearch" type="button" class="reserv_search_btn"
										style="cursor: pointer;">
										<span>주단위조회</span>
									</button>
								</div>
								<div class="reserv_search_btn_wrap board_btn_blue">
									<button id="psraser" type="button" class="reserv_search_btn">
										<span>예약가능조회</span>
									</button>
								</div>
							</div>
						</div>
						<!-- 예약 상세선택 부분 끝 -->
					</div>
					<!-- 방 리스트 -->
					<div id="roomList" class="room_list_wrap">
						<!-- 방 구분  -->
						<div class="room_sort_2 mgt50 mgb50">
							<ul>
								<li>
									<div class="inner">
										<span class="icon_soop">숲속의집</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_hue">휴양관</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_yeon">연립동</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_sue">숲속수련장</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_deck">데크</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_oh">오토캠핑장</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_camp">캠핑카야영장</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_cabin">캐빈</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_noh">노지야영장</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_roomok">예약가능</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_roomcom">예약 및 대기완료</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_repair">수리중</span>
									</div>
								</li>
							</ul>
						</div>
						<!-- //방 구분  -->
						<div id="dataList">
							<!-- room table  -->
							<div class="room_table_wrap">
								<p class="table_tip">방제목을 누르시면 방 상세정보를 확인하실 수 있습니다.</p>
								<ul class="room_table">
									<li><span class="reser_tit" style="width: 100px">
										예약 가능한 방 목록 입니다.</span>
									<ul class="day_hero"></ul>
								</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 룸 리스트 -->
					<div id="dataView" class="div"><!-- 선택하신 숙박 정보 --></div>
					<!-- 약관 동의 부분 -->
					<div class="agree_area" id="agree_area">
						<div class="stit_area">
							<span class="top_bar"></span>
							<h4 class="s_tit">아래 정책을 모두 읽어보고 동의하신 경우 예약 부탁드립니다.</h4>
						</div>
						<ul>
							<li>
								<dl>
									<dt>고객 불만 관리 제도를 확인하셨습니까?</dt>
									<dd>
										<div class="agree_cont">
											<!-- 고객불만 관리 제도 이용약관 -->
											<h5>고객 불만 관리 제도</h5>
											<p>국립자연휴양림관리소에서는 선량한 이용객의 권리 및 국유재산 보호를 위해 「고객 불만 관리
												시스템(유의 고객 관리 지침)」을 제정해 '09년 7월 1일'부터 운영하오니 휴양림 이용에 많은 협조를
												바랍니다.</p>
											<div>
												<strong>고객 불만 관리 시스템이란?</strong>
												<p>국유 자연휴양림 이용 고객이 다른 이용객에게 피해를 주거나 휴양림 운영에 지장을 주는 행위를 한
													경우 구두 주의, 퇴실, 벌점 부여 등의 단계별 조치를 통해 선량한 휴양림 이용객의 권리 및 국유재산을
													보호하려는 제도</p>
												<strong>적용 대상</strong>
												<p>국유 자연휴양림 내에서 고성방가, 기물 손망실, 폭행·위협, 산림훼손, 임산물 불법 채취, 산림
													생태 자원 훼손 또는 이와 유사한 행위로 이웃 이용객에게 피해 또는 자연휴양림 운영에 지장을 준 이용객</p>
												<strong>불량 이용객 현장 조치 방법(단계별 조치)</strong>
												<div>
													<div>구두 조치</div>
													<div>타 이용객에게 피해, 민원 발생, 운영 지장 초래 등의 상황 발생</div>
													<div>질서 유지 통지서 발급</div>
													<div>구두 주의로는 질서 유지가 어렵다고 판단되는 경우, 통지서 발급</div>
													<div>강제 퇴실 및 퇴장 예고 통지서</div>
													<div>벌점 부과 및 이용이 제한될 수 있음</div>
												</div>
												<p>
													퇴장 조치한 경우에는 입장료와 시설 사용료 등 일체의 비용은 반환하지 않으며 다만, 입장 30분 이내에는
													계좌를<br> 통해 전액 환불 조치하고, 훼손한 시설물 및 물품은 변상 조치함
												</p>
												<strong>운영 방법</strong>
												<ul>
													<li>자연휴양림 및 예약 정보 시스템 운영에 지장을 초래하거나, 시설물 및 비품 손·망실 행위
														등에 대해서는 경중에 따라 벌점 부여</li>
													<li>3년간 벌점 합산 점수가 30점 혹은 1년간 3회에 도달하면 최종 위반일부터 휴양림 웹
														고객 퇴출은 물론, 1년간 자격 상실 및 사용 제한</li>
													<li>벌점의 합산 기간은 3년으로 산정하고 이후 자동 소멸됨</li>
												</ul>
												<strong>벌점 부여 기준</strong>
												<div>
													<div>벌점 30점</div>
													<div>사법관서에 의해 퇴실/퇴장 조치를 당한 경우</div>
													<div>벌점 20점</div>
													<div>강제 퇴실/퇴장 조치를 당한 경우</div>
													<div>벌점 15점</div>
													<div>시설물 및 비품을 고의로 손·망실 또는 파손한 경우</div>
													<div>벌점 10점</div>
													<div>음주 소란, 고성방가, 폭행 위협, 산림 훼손, 불법 임산물 채취, 산림 생태 훼손
														또는 이와 유사한 행위, 타 이용객에게 피해 또는 불편을 초래하여 민원 발생, 그 밖에 휴양림 운영에
														지장을 주는 고객으로 구두 경고로 질서 유지가 되지 않는 고객</div>
													<div>벌점 5점</div>
													<div>애완동물을 숨겨서 입실하거나 시설물 적정 인원 초과 입실</div>
												</div>
												<strong>사후 관리</strong>
												<p>벌점을 받은 웹 고객에게는 벌점을 부여받은 사실, 누적 점수 30점이면 1년간 국유 자연휴양림
													이용을 제한한다는 사실 통지</p>
												<!-- //고객불만 관리 제도 이용약관 -->
											</div>
										</div>
									</dd>

								</dl>
							</li>

							<li>
								<dl>
									<dt>야영장 안전수칙을 확인하셨습니까?</dt>

									<dd>
										<div class="agree_cont">
											<p class="hyinfo_t1 mgb00">자연휴양림 안전수칙 및 안전관리에 관한 지침 및
												비상연락망을 알려드리니 참조하시기 바랍니다.</p>
										</div>
									</dd>

								</dl>
							</li>

							<li>
								<dl>
									<dt>
										<font color="red">걸어가는 휴양림(신불산) 안내를 확인하셨습니까?</font>
									</dt>
									<dd>
										<div class="agree_cont">
											<p class="hyinfo_t1 mgb00">
												신불산휴양림의 상단지구는 차량 없이 1.7km(약 40분)을 걸어야 하는 휴양림으로, <br>
												11월과 3월에는 16시까지. 4월부터10월까지는 17시까지 하단 매표소에 도착 (일몰전 입실완료)<br>
												안내를 필히 받으셔야 합니다.
											</p>
										</div>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>
										<font color="red">TV 없는 자연휴양림 운영 안내를 확인하셨습니까?</font>
									</dt>
									<dd>
										<div class="agree_cont">
											<p class="hyinfo_t1 mgb00">
												국립삼봉, 검마산, 회문산자연휴양림은 가족관계를 개선하고<br> 건전한 휴양문화를 정착시키기 위해
												TV 없는 자연휴양림을 운영하고 있습니다.
											</p>
										</div>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt>
										<font color="red">자연휴양림은 산 속에 위차하여 야영장, 등산로는 물론 객실 내에서도
											곤충류(진드기, 지네, 벌 등), 파충류(뱀 등) 등이 자주 나타날 수 있으니 예약시 참고하여 주시기
											바랍니다.</font>
									</dt>
								</dl>
							</li>
							<li>
								<dl>
									<dt>
										<font color="red">산음자연휴양림 숲속수련장지구(두메지구)의 예약안내를 확인하셨습니까?</font>
									</dt>
									<dd>
										<div class="agree_cont">
											<p class="hyinfo_t1 mgb00">
												숲속수련장은 SUV, RV차량 전용 휴양시설입니다.<br> 비포장도로를 이용하셔야 하므로 승용차
												이용 고객분들은 유의하시기 바랍니다.<br> 숲속수련장은 산음자연휴양림에서 4.0km 거리에
												위치하고 있으므로 산음자연휴양림 매표소에서 체크인 하셔야 합니다.<br> 진입로(비포장도로)에
												가로등이 없으므로 가능한 일몰 전에 체크인을 완료하셔야 합니다.<br> 기상 상황 악화 또는 일몰
												후(오후06:00시) 입실에 제한이 될 수 있습니다.<br> 숲속수련장 이용에 있어 문의사항은
												국립산음자연휴양림 관리사무실(전화 031-774-3936)에 연락주시기 바랍니다.
											</p>
										</div>
									</dd>
								</dl>
							</li>
							<li class="agree_check">
								<dl>
									<dt>이 점 양해 부탁 드리며, 위 내용에 동의하십니까?</dt>
									<dd>
										<div class="btn_radio">
											<input type="radio" id="allCfY" name="allCf" value="Y">
											<label for="allCfY">약관에 동의합니다.</label>
										</div>
										<div class="btn_radio">
											<input type="radio" id="allCfN" name="allCf" value="N"
												checked=""> <label for="allCfN">동의하지 않습니다.</label>
										</div>
									</dd>
								</dl>
							</li>
						</ul>

						<!-- button -->
						<div class="button_wrap tcenter mgt25" id="buttonAgree">
							<div id="btn_reserv">
								<a href="#huyang" id="btnReservation" class="board_btn_green normal_size wid120">예약하기</a>
							</div>
						</div>
						<!-- //button -->
					</div>
					<!-- //약관 동의 부분 -->
					<div class="reserv_notice">
						<h4 class="mgb15 notice_alr">휴양림 예약 전 필독 사항</h4>
						<ul class="parent_list">
							<li>
								<dl class="list_style_normal">
									<dt>휴양림 시설 안내</dt>
									<dd>야영 시설 중 야영 데크, 노지 야영장, 황토 온열 데크는 주차료를 포함해 결제해야 하는
										상품입니다.</dd>
								</dl>
							</li>
							<li>
								<dl class="list_style_normal">
									<dt>휴양림 시설 예약 방법</dt>
									<dd>예약 신청 방법은 '선착순 방식'에 의한 예약 신청 방법과 '추첨 방식'에 의한 예약 신청 방법이
										있으며, 성수기 이용객이 폭주할 경우 원활한 예약 신청을 위해 신청 방법을 변경할 수 있습니다.</dd>
									<dd>예약 신청 방법의 변경은 자연휴양림 이용 상황 및 예약 관리 시스템을 감안, 산림청에서
										결정합니다.</dd>
									<dd>선착순 또는 추첨 등 예약 신청 방법을 변경하고자 할 경우, 사용 시작일 40일 전에 공지 사항에
										게재합니다.</dd>
								</dl>
							</li>
							<li>
								<dl class="list_style_normal">
									<dt>시설물 예약 시 공지 사항에 있는 예약 제외 시설물을 확인한 후 예약하시기 바랍니다.</dt>
									<dd class="bg_none pd00">
										<div class="btn_wrap board_btn_w_gray inblk">
											<a
												href="javascript:fn_goPage('/customer/board/notice/boardList.action', 'MENU01000000', '', 'MENU01010000','');"
												class="inblk pd10and15">공지사항 바로가기</a>
										</div>
									</dd>
								</dl>
							</li>
							<li>
								<dl class="list_style_normal">
									<dt>선착순 방식으로 예약 신청할 경우</dt>
									<dd>휴양림 예약 메뉴에서 숙박일, 기간, 지역 휴양림, 시설 종류 등을 선택해 예약 신청을 합니다.</dd>
									<dd>
										<span class="green_font">예약은 1일 기준, 시설물(객실+야영장) 5개까지</span>가능하며,
										기간은<span class="green_font">3박 4일 이내만 가능</span>합니다.
									</dd>
									<dd>
										예약 신청은 매주 수요일 전체 휴양림 객실, 야영장 모두 오전 9시부터, 6주차 월요일까지 가능합니다.<br>단,
										화요일이 공휴일인 경우엔 예약 가능합니다.
									</dd>
								</dl>
							</li>
							<li>
								<dl class="list_style_normal">
									<dt>주말 예약을 신청할 경우</dt>
									<dd class="bg_none pd00">
										매주 금요일, 토요일, 법정 공휴일 전일은 주말 추첨제를 통해 신청 가능합니다.<br>
										<div class="btn_wrap board_btn_w_gray inblk mgt05">
											<a
												href="javascript:fn_goPage('/information/information_010_040.action', 'MENU01000000', '', 'MENU01010000','');"
												class="inblk pd10and15">주말 추첨 바로가기</a>
										</div>
									</dd>
									<dd class="green_font">다음 달 사용 예정인 주말 신청은 매월 4~9일에 접수를 받은
										후 추첨을 통해 사용자를 결정합니다.</dd>
									<dd>
										추첨 후 잔여 시설은 <span class="green_font">매월 15일 오전 9시부터</span> 선착순
										예약이 가능하며, 6주차 월요일까지 가능합니다.
									</dd>
								</dl>
							</li>

							<li>
								<dl class="list_style_normal">
									<dt>예약 대기</dt>
									<dd>기존에 예약자가 있는 시설에 한해 대기 신청을 받습니다.</dd>
									<dd>대기로 예약한 시설은 먼저 예약한 분이 취소 시 예약이 가능한 상태로 바뀝니다.</dd>
									<dd>선 예약자가 예약을 취소하면 대기자는 24시간 내에 결제 가능합니다.</dd>
									<dd>결제 가능 시간(24시간)이 경과되면 자동 취소됩니다.</dd>
									<dd>결제 가능 여부는 본인이 '마이 페이지'에서 직접 확인하시기 바랍니다.</dd>
									<dd>대기 신청은 1인당 3개까지 가능합니다.</dd>
								</dl>
							</li>

							<li>
								<dl class="list_style_normal">
									<dt>단체 예약</dt>
									<dd>
										<span class="green_font">기관·회사·동호회 등 단체에서</span> 예약하는 경우 <span
											class="green_font">고객지원센터(1588-3250)로 요청</span>하면 예약이 가능합니다.<br>
										단, 예약이 가능한 기간에 한해 실시하며, 매주 선착순 예약 이후 일부터 가능합니다.<br> <span
											class="green_font">※ 결제는 고객지원센터에서 예약 후 '마이 페이지'에서 하시기
											바랍니다.</span>
									</dd>
								</dl>
							</li>
						</ul>
					</div>
					<!-- //예약전 필독사항 -->
				</div>
				<!-- //reserve -->
			</div>
			<!-- //content -->
		</div>
		<!-- sub_content_wrap -->
	</section>
	<!-- end section -->
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
</body>
</html>