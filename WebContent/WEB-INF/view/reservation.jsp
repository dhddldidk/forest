<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	background: #fff url(css/images/common/btn_whitegray_bg.png)
		repeat-x bottom;
}

.reserve_select .select_area>li:first-child a {
	border-top: 1px solid #8b8b8b;
}

.select_area>li>a>span {
	display: block;
	font-size: 15px;
	margin-left: 15px;
	background: url(images/common/snb_n_active.png) no-repeat
		right center;
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
	background: url("css/images/common/snb_active.png") no-repeat
		right 50%;
}

.select_area>li.select_tab>.deth1 span {
	display: block;
	background: url("css/images/common/snb_n_active.png") no-repeat
		right 50%;
	padding: 0;
}

.select_area>li.select_tab.selected>.deth1_nc span {
	display: block;
	background: url("css/images/common/snb_active_nc.png") no-repeat
		right 50%;
}

.select_area>li.select_tab>.deth1_nc span {
	display: block;
	background: url("css/images/common/snb_n_active_no.png") no-repeat
		right 50%;
	padding: 0;
}

.select_area li .deth2 {
	display: none;
}

.select_area li .deth2.on {
	display: block;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/jqwidget/jqxcore.js"></script>
<script type="text/javascript" src="js/jqwidget/jqxdatetimeinput.js"></script>
<script type="text/javascript" src="js/jqwidget/jqxcalendar.js"></script>
<script type="text/javascript" src="js/jqwidget/globalize.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#jqxcalendar").jqxCalendar({
			width : '100%',
			height : '100%',
			titleFormat : [ "yyyy년 MM월" ]
		});
		$('#jqxcalendar').bind('valuechanged', function(event) {
			var date = event.args.date;
			$("#log").text(date.toDateString());
		});

		$(".select_tab").addClass("selected");
		$("#dprtm_tab").addClass("sort_wrap");
		$(".select_tab a").click(function() {
			$(this).parent().toggleClass("selected");
			$(this).next().slideToggle(400);
		})
		
		
		$("#upper_dprtm_id").change(function(){
			$("#areabox").children().css("display", "none");
			var number = $("#upper_dprtm_id option:selected").val();
			var id = "#area_" + number;
			$(".btn_check").css("display", "block");
			$(id).css("display", "block");
		})
		// 기본 전체 체크
		$("input:checkbox").attr("checked",true);
		
		$("#areaAll").click(function(){
			if($("#areaAll").is(":checked") == true){
				$("input:checkbox[name=dprtmId]").prop("checked", true);				
			}else{
				$("input:checkbox[name=dprtmId]").prop("checked", false);
			}
		})
		$("#facAll").click(function(){
			if($("#facAll").is(":checked") == true){
				$("input:checkbox[name=facilChk]").prop("checked", true);				
			}else{
				$("input:checkbox[name=facilChk]").prop("checked", false);
			}
		})
		
		
	});
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
								<div id='jqxcalendar'></div>
							</div>
							<div class="calendar_sort">
								<div class="select_day">
									<div id="div_rsrvtQntt" class="select wid120">
										<label class="blind">숙박 기간 선택</label> <select id="rsrvtQntt"
											name="rsrvtQntt" class="calb w110">
											<option value="">숙박기간선택</option>
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
								<li class="select_tab">
									<a href="#huyang" class="deth1_nc"><span>휴양림 선택</span></a>
									<div id="dprtm_tab" class="sort_wrap top_sort deth2 on">
										<div class="area_sort">
											<h4>
												<span>지역선택 :
												<select id="upper_dprtm_id" name="upper_dprtm_id" style="color: white; background-color: #797d89;" class="" title="지역 선택">
														<option value="3000001">서울/경기</option>
														<option value="3000002">강원</option>
														<option value="3000003">충북</option>
														<option value="3000004">충남</option>
														<option value="3000005">전북</option>
														<option value="3000006">전남</option>
														<option value="3000007">경북</option>
														<option value="3000008">경남</option>
												</select>
												</span>
											</h4>
											<!-- 지역명 -->
											<!-- 지역별 영역 DIV START -->
											<div id="areabox" class="select_box_wrap">
												<span class="btn_check all_select" id="areaSpan">
													<input id="areaAll" name="dprtmId" type="checkbox" value="0000">
													<label for="areaAll">전체선택</label>
													<input type="hidden" name="_dprtmId" value="on">
												</span>
												<!-- 서울/경기 -->
												<div id="area_3000001">
													<span class="btn_check DPRT_3000001">
														<input id="3000002_0103" name="dprtmId" type="checkbox"	value="0103">
														<label for="3000002_0103">산음(양평)</label>
														<input type="hidden" name="_dprtmId" value="on">
													</span>
														<span class="btn_check DPRT_3000001">
														<input id="3000002_0104" name="dprtmId" type="checkbox"	value="0104">
														<label for="3000002_0104">아세안(양주)</label>
														<input type="hidden" name="_dprtmId" value="on"></span>
													<span class="btn_check DPRT_3000001">
														<input id="3000002_0224" name="dprtmId" type="checkbox"	value="0224">
														<label for="3000002_0224">운악산(포천)</label>
														<input type="hidden" name="_dprtmId" value="on"></span>
													<span class="btn_check DPRT_3000001">
														<input id="3000002_0101" name="dprtmId" type="checkbox"	value="0101">
														<label for="3000002_0101">유명산(가평)</label>
														<input type="hidden" name="_dprtmId" value="on"></span>
													<span class="btn_check DPRT_3000001">
														<input id="3000002_0108" name="dprtmId" type="checkbox"	value="0108">
														<label for="3000002_0108">중미산(양평)</label>
														<input type="hidden" name="_dprtmId" value="on">
													</span>
												</div>
												<!-- 강원 -->
												<div id="area_3000002" style="display: none;">
													<span class="btn_check DPRT_3000002"><input
														id="3000002_0113" name="dprtmId" type="checkbox"
														value="0113"><label for="3000002_0113">가리왕산(정선)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0244" name="dprtmId" type="checkbox"
														value="0244"><label for="3000002_0244">검봉산(삼척)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0111" name="dprtmId" type="checkbox"
														value="0111"><label for="3000002_0111">대관령(강릉)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0243" name="dprtmId" type="checkbox"
														value="0243"><label for="3000002_0243">두타산(평창)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0112" name="dprtmId" type="checkbox"
														value="0112"><label for="3000002_0112">미천골(양양)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0109" name="dprtmId" type="checkbox"
														value="0109"><label for="3000002_0109">방태산(인제)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0223" name="dprtmId" type="checkbox"
														value="0223"><label for="3000002_0223">백운산(원주)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0110" name="dprtmId" type="checkbox"
														value="0110"><label for="3000002_0110">복주산(철원)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0107" name="dprtmId" type="checkbox"
														value="0107"><label for="3000002_0107">삼봉(홍천)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0102" name="dprtmId" type="checkbox"
														value="0102"><label for="3000002_0102">용대(인제)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0222" name="dprtmId" type="checkbox"
														value="0222"><label for="3000002_0222">용화산(춘천)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000002"><input
														id="3000002_0106" name="dprtmId" type="checkbox"
														value="0106"><label for="3000002_0106">청태산(횡성)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 충북 -->
												<div id="area_3000003" style="display: none;">
													<span class="btn_check DPRT_3000003"><input
														id="3000003_0300" name="dprtmId" type="checkbox"
														value="0300"><label for="3000003_0300">상당산성(청주)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000003"><input
														id="3000003_0115" name="dprtmId" type="checkbox"
														value="0115"><label for="3000003_0115">속리산(보은)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000003"><input
														id="3000003_0242" name="dprtmId" type="checkbox"
														value="0242"><label for="3000003_0242">황정산(단양)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 충남 -->
												<div id="area_3000004" style="display: none;">
													<span class="btn_check DPRT_3000004"><input
														id="3000004_0191" name="dprtmId" type="checkbox"
														value="0191"><label for="3000004_0191">오서산(보령)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000004"><input
														id="3000004_0220" name="dprtmId" type="checkbox"
														value="0220"><label for="3000004_0220">용현(서산)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000004"><input
														id="3000004_0187" name="dprtmId" type="checkbox"
														value="0187"><label for="3000004_0187">희리산(서천)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 전북 -->
												<div id="area_3000005" style="display: none;">
													<span class="btn_check DPRT_3000005"><input
														id="3000005_0141" name="dprtmId" type="checkbox"
														value="0141"><label for="3000005_0141">덕유산(무주)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000005"><input
														id="3000005_0189" name="dprtmId" type="checkbox"
														value="0189"><label for="3000005_0189">변산(부안)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000005"><input
														id="3000005_0194" name="dprtmId" type="checkbox"
														value="0194"><label for="3000005_0194">운장산(진안)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000005"><input
														id="3000005_0188" name="dprtmId" type="checkbox"
														value="0188"><label for="3000005_0188">회문산(순창)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 전남 -->
												<div id="area_3000006" style="display: none;">
													<span class="btn_check DPRT_3000006"><input
														id="3000006_0200" name="dprtmId" type="checkbox"
														value="0200"><label for="3000006_0200">낙안민속(순천)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000006"><input
														id="3000006_0181" name="dprtmId" type="checkbox"
														value="0181"><label for="3000006_0181">방장산(장성)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000006"><input
														id="3000006_0196" name="dprtmId" type="checkbox"
														value="0196"><label for="3000006_0196">천관산(장흥)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000006"><input
														id="3000006_0201" name="dprtmId" type="checkbox"
														value="0201"><label for="3000006_0201">진도(진도)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 경북 -->
												<div id="area_3000007" style="display: none;">
													<span class="btn_check DPRT_3000007"><input
														id="3000007_0184" name="dprtmId" type="checkbox"
														value="0184"><label for="3000007_0184">검마산(영양)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000007"><input
														id="3000007_0245" name="dprtmId" type="checkbox"
														value="0245"><label for="3000007_0245">대야산(문경)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000007"><input
														id="3000007_0195" name="dprtmId" type="checkbox"
														value="0195"><label for="3000007_0195">운문산(청도)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000007"><input
														id="3000007_0183" name="dprtmId" type="checkbox"
														value="0183"><label for="3000007_0183">청옥산(봉화)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000007"><input
														id="3000007_0182" name="dprtmId" type="checkbox"
														value="0182"><label for="3000007_0182">칠보산(영덕)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000007"><input
														id="3000007_0193" name="dprtmId" type="checkbox"
														value="0193"><label for="3000007_0193">통고산(울진)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 경남 -->
												<div id="area_3000008" style="display: none;">
													<span class="btn_check DPRT_3000008"><input
														id="3000008_0192" name="dprtmId" type="checkbox"
														value="0192"><label for="3000008_0192">남해편백(남해)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000008"><input
														id="3000008_0105" name="dprtmId" type="checkbox"
														value="0105"><label for="3000008_0105">신불산(울주)</label><input
														type="hidden" name="_dprtmId" value="on"></span> <span
														class="btn_check DPRT_3000008"><input
														id="3000008_0190" name="dprtmId" type="checkbox"
														value="0190"><label for="3000008_0190">지리산(함양)</label><input
														type="hidden" name="_dprtmId" value="on"></span>
												</div>
												<!-- 지역에 소속된 휴양림 목록 출력 END -->
											</div>
											<!-- 지역별 영역 DIV END -->
										</div>
									</div></li>
								<li class="select_tab"><a href="#huyang" class="deth1_nc"><span>시설	선택</span></a>
									<div id="fclt_tab" class="sort_wrap deth2" style="display: block;">
                                        <!-- 시설 선택  -->
                                        <div class="area_sort">
                                            <div class="select_box_wrap">
                                                <span class="btn_check all_select">
                                                    <input id="facAll" name="facilChk" type="checkbox" value="00000"><label for="facAll">전체선택</label><input type="hidden" name="_fcltMdclsCd" value="on">
                                                </span>
		                                            <span class="btn_check" id="CLS_03001">
		                                                <input id="fcltMdclsCd1" name="facilChk" type="checkbox" value="03001"><label for="fcltMdclsCd1">숲속의집</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>
		                                            <span class="btn_check" id="CLS_03002">
		                                                <input id="fcltMdclsCd2" name="facilChk" type="checkbox" value="03002"><label for="fcltMdclsCd2">휴양관</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>
		                                            <span class="btn_check" id="CLS_03003">
		                                                <input id="fcltMdclsCd3" name="facilChk" type="checkbox" value="03003"><label for="fcltMdclsCd3">연립동</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>
		                                            <span class="btn_check" id="CLS_03004">
		                                                <input id="fcltMdclsCd4" name="facilChk" type="checkbox" value="03004"><label for="fcltMdclsCd4">숲속수련장</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>
	                                            	<span class="btn_check" id="CLS_04001">
		                                                <input id="fcltMdclsCd5" name="facilChk" type="checkbox" value="04001"><label for="fcltMdclsCd5">노지야영장</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>    
		                                            <span class="btn_check" id="CLS_04002">
		                                                <input id="fcltMdclsCd6" name="facilChk" type="checkbox" value="04002"><label for="fcltMdclsCd6">야영데크</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>    
		                                            <span class="btn_check" id="CLS_04003">
		                                                <input id="fcltMdclsCd7" name="facilChk" type="checkbox" value="04003"><label for="fcltMdclsCd7">황토온돌테크</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>    
		                                            <span class="btn_check" id="CLS_04005">
		                                                <input id="fcltMdclsCd8" name="facilChk" type="checkbox" value="04005"><label for="fcltMdclsCd8">오토캠핑장</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>    
		                                            <span class="btn_check" id="CLS_04006">
		                                                <input id="fcltMdclsCd9" name="facilChk" type="checkbox" value="04006"><label for="fcltMdclsCd9">캐빈</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>    
		                                            <span class="btn_check" id="CLS_04007">
		                                                <input id="fcltMdclsCd10" name="facilChk" type="checkbox" value="04007"><label for="fcltMdclsCd10">캠핑카야영장</label><input type="hidden" name="_fcltMdclsCd" value="on">
		                                            </span>
                                            </div>
                                        </div>
                                    </div>
								</li>
								<li class="select_tab"><a href="#huyang" class="deth1_nc"><span>인원수
											선택</span></a>
									<div id="accpcnt_tab" class="sort_wrap deth2" style="display: block;">
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
		                                            	<option value="9">9</option>
		                                            	<option value="10">10</option>
		                                            	<option value="11">11</option>
		                                            	<option value="12">12</option>
		                                            </select>
	                                            </div>
												인실 (인원수 선택 시 선택하신 숫자이상의 객실이 검색되어 집니다.)
                                            </div>
                                        </div>
                                    </div>
								</li>
							</ul>

							<div class="button_wrap" align="right">
								<div class="reserv_search_btn_wrap board_btn_green">
									<button id="imgSearch" type="button" class="reserv_search_btn"
										style="cursor: pointer;">
										<span>주단위조회</span>
									</button>
								</div>
								<div class="reserv_search_btn_wrap board_btn_blue">
									<button id="psraser" type="button" class="reserv_search_btn"
										style="cursor: pointer;">
										<span>예약가능조회</span>
									</button>
								</div>
								<div class="reserv_search_btn_wrap board_btn_perple">
									<button id="pswait" type="button" class="reserv_search_btn"
										style="cursor: pointer;">
										<span>대기가능조회</span>
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
										<span class="icon_roomwait">대기가능</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_roomcom">예약 및 대기완료</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_disable2">장애인우선예약</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_asean2">아세안우선예약</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_ars2">ARS우선예약</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_voucher2">바우처우선예약</span>
									</div>
								</li>
								<li>
									<div class="inner">
										<span class="icon_raserno">선착순예약 개시전</span>
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
											예약 가능한 방 목록 입니다.
										<ul class="day_hero">
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
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
				</div>
			</div>
		</div>
	</section>
	<!-- end section -->
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<!-- end footer -->
</body>
</html>