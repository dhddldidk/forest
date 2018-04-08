<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reservation.css">
<link rel="stylesheet" href="css/common.css">
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
								<!-- <div id="jqxWidget" data-role="calendar" tabindex="0"
									class="jqx-calendar jqx-widget jqx-widget-content jqx-rc-all"
									style="width: 100%; height: 100%; outline: none;">
									<div id="ViewjqxWidget"
										class="jqx-widget-content jqx-calendar-month-container"
										style="width: 100%; height: 100%;">
										<div style="height: 45px;">
											<table role="grid"
												style="margin: 0px; width: 100%; height: 100%; border-spacing: 0px;"
												cellspacing="0" cellpadding="0">
												<tbody style="border: none; background: transparent;">
													<tr role="row" id="calendarTitleViewjqxWidget" width="100%"
														class="jqx-calendar-title-container jqx-reset jqx-widget-header jqx-calendar-title-header">
														<td role="gridcell" nowrap=""
															id="leftNavigationArrowViewjqxWidget"
															style="background-color: transparent;"><div
																role="button" style="float: left;"
																class="jqx-calendar-title-navigation jqx-icon-arrow-left"></div></td>
														<td aria-live="assertive" aria-atomic="true"
															role="gridcell" align="center" nowrap=""
															id="calendarTitleHeaderViewjqxWidget"
															style="background-color: transparent;"><div
																style="background: transparent; margin: 0; padding: 0; border: none;"
																class="jqx-calendar-title-content">2018년 04월</div></td>
														<td role="gridcell" nowrap=""
															id="rightNavigationArrowViewjqxWidget"
															style="background-color: transparent;"><div
																role="button" style="float: right;"
																class="jqx-calendar-title-navigation jqx-icon-arrow-right"></div></td>
													</tr>
												</tbody>
											</table>
										</div>
										<table role="grid" class="jqx-calendar-month"
											style="margin: 0px; border-spacing: 0px;" cellspacing="0"
											cellpadding="0">
											<tbody style="border: none; background: transparent;">
												<tr role="row" id="calendarHeaderViewjqxWidget" height="40"
													class="calendar-header jqx-reset">
													<td role="gridcell" id="selectCellViewjqxWidget" width="0"
														class="jqx-reset jqx-calendar-top-left-header"
														style="display: none;"></td>
													<td role="gridcell" colspan="3"
														style="border: none; padding-left: 2px; padding-right: 2px"
														id="calendarColumnHeaderViewjqxWidget"><table
															role="grid"
															style="border-spacing: 0px; border-collapse: collapse; width: 100%; height: 100%;"
															cellspacing="0" cellpadding="1"
															class="jqx-reset jqx-widget-content jqx-calendar-column-header">
															<tbody style="border: none; background: transparent;">
																<tr role="row" class="jqx-reset">
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell1jqxWidget"
																			class="jqx-calendar-column-cell">일</div></td>
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell2jqxWidget"
																			class="jqx-calendar-column-cell">월</div></td>
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell3jqxWidget"
																			class="jqx-calendar-column-cell">화</div></td>
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell4jqxWidget"
																			class="jqx-calendar-column-cell">수</div></td>
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell5jqxWidget"
																			class="jqx-calendar-column-cell">목</div></td>
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell6jqxWidget"
																			class="jqx-calendar-column-cell">금</div></td>
																	<td role="gridcell"
																		style="background: transparent; padding: 1px; margin: 0px; border: none; width: 57px;"><div
																			style="padding: 0; margin: 0; border: none; background: transparent;"
																			id="columnCell7jqxWidget"
																			class="jqx-calendar-column-cell">토</div></td>
																</tr>
															</tbody>
														</table></td>
												</tr>
												<tr role="row" id="calendarContent" class="jqx-reset">
													<td role="gridcell" id="calendarRowHeaderViewjqxWidget"
														valign="top" height="220" width="0"
														style="display: none; height: 220px;"></td>
													<td role="gridcell" valign="top" colspan="3"
														style="padding-left: 2px; padding-right: 2px; border-color: transparent; height: 220px;"
														id="cellsTableViewjqxWidget" height="220"><table
															role="grid"
															style="width: 100%; height: 100%; border-color: transparent;"
															cellspacing="2" cellpadding="1"
															id="cellTableViewjqxWidget">
															<tbody style="border: none; background: transparent;">
																<tr role="row">
																	<td role="gridcell" id="cell11jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">25</td>
																	<td role="gridcell" id="cell12jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">26</td>
																	<td role="gridcell" id="cell13jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">27</td>
																	<td role="gridcell" id="cell14jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">28</td>
																	<td role="gridcell" id="cell15jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">29</td>
																	<td role="gridcell" id="cell16jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">30</td>
																	<td role="gridcell" id="cell17jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell-othermonth jqx-calendar-cell jqx-calendar-cell-month">31</td>
																</tr>
																<tr role="row">
																	<td role="gridcell" id="cell21jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">1</td>
																	<td role="gridcell" id="cell22jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">2</td>
																	<td role="gridcell" id="cell23jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">3</td>
																	<td role="gridcell" id="cell24jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">4</td>
																	<td role="gridcell" id="cell25jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">5</td>
																	<td role="gridcell" id="cell26jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">6</td>
																	<td role="gridcell" id="cell27jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-disabled jqx-fill-state-disabled jqx-calendar-cell jqx-calendar-cell-month">7</td>
																</tr>
																<tr role="row">
																	<td role="gridcell" id="cell31jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month jqx-calendar-cell-today special-y">8</td>
																	<td role="gridcell" id="cell32jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">9</td>
																	<td role="gridcell" id="cell33jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-restrictedDate jqx-calendar-cell jqx-calendar-cell-month special-n">10</td>
																	<td role="gridcell" id="cell34jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">11</td>
																	<td role="gridcell" id="cell35jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">12</td>
																	<td role="gridcell" id="cell36jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">13</td>
																	<td role="gridcell" id="cell37jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">14</td>
																</tr>
																<tr role="row">
																	<td role="gridcell" id="cell41jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">15</td>
																	<td role="gridcell" id="cell42jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">16</td>
																	<td role="gridcell" id="cell43jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-restrictedDate jqx-calendar-cell jqx-calendar-cell-month special-n">17</td>
																	<td role="gridcell" id="cell44jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">18</td>
																	<td role="gridcell" id="cell45jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">19</td>
																	<td role="gridcell" id="cell46jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">20</td>
																	<td role="gridcell" id="cell47jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">21</td>
																</tr>
																<tr role="row">
																	<td role="gridcell" id="cell51jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">22</td>
																	<td role="gridcell" id="cell52jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">23</td>
																	<td role="gridcell" id="cell53jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-restrictedDate jqx-calendar-cell jqx-calendar-cell-month special-n">24</td>
																	<td role="gridcell" id="cell54jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">25</td>
																	<td role="gridcell" id="cell55jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">26</td>
																	<td role="gridcell" id="cell56jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">27</td>
																	<td role="gridcell" id="cell57jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">28</td>
																</tr>
																<tr role="row">
																	<td role="gridcell" id="cell61jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">29</td>
																	<td role="gridcell" id="cell62jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">30</td>
																	<td role="gridcell" id="cell63jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-restrictedDate jqx-calendar-cell jqx-calendar-cell-month special-n">1</td>
																	<td role="gridcell" id="cell64jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">2</td>
																	<td role="gridcell" id="cell65jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell jqx-calendar-cell-month special-y">3</td>
																	<td role="gridcell" id="cell66jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-restrictedDate jqx-calendar-cell jqx-calendar-cell-month special-w">4</td>
																	<td role="gridcell" id="cell67jqxWidget"
																		class="jqx-rc-all jqx-item jqx-calendar-cell-restrictedDate jqx-calendar-cell jqx-calendar-cell-month special-w">5</td>
																</tr>
															</tbody>
														</table></td>
												</tr>
											</tbody>
										</table>
										<div id="footerViewjqxWidget"
											style="margin: 0px; display: none; height: undefinedpx;">
											<table
												style="width: 100%; height: 100%; border-spacing: 0px;"
												cellspacing="0" cellpadding="0">
												<tbody style="border: none; background: transparent;">
													<tr id="calendarFooterViewjqxWidget" class="jqx-reset">
														<td align="right" id="todayButtonViewjqxWidget"></td>
														<td align="left" colspan="2" id="doneButtonViewjqxWidget"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div> -->
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
								<li class="select_tab selected"><a href="#huyang"
									class="deth1_nc"><span>휴양림 선택</span></a>
									<div></div></li>
								<li class="select_tab"><a href="#huyang" class="deth1_nc"><span>시설
											선택</span></a>
									<div></div></li>
								<li class="select_tab selected"><a href="#huyang"
									class="deth1_nc"><span>인원수 선택</span></a>
									<div id="accpcnt_tab" class="sort_wrap deth2"
										style="display: block;"></div></li>
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
							<!-- <script type="text/javascript" src="/user/js/common.js"></script>
							<script type="text/javascript">
								jQuery(function($) {

								});
							</script> -->
							<!-- room table  -->
							<div class="room_table_wrap">
								<p class="table_tip">방제목을 누르시면 방 상세정보를 확인하실 수 있습니다.</p>
								<ul class="room_table">
									<li><span class="reser_tit" style="width: 100px"><font
											color="red"> 2018.04.08일 1박2일</font>로 예약가능한 시설은 총 <font
											color="red">0 개</font> 입니다.</span>
										<ul class="day_hero">
										</ul></li>
								</ul>
							</div>
							<!-- paging -->
							<!-- <div id="paging">
								<script>
									function fn_goPaging(href) {

										//alert(href);

										var tempArr = href.split("&");
										//alert(tempArr);
										var tempIdx = tempArr[0].split("=")[1];
										//alert(tempIdx);
										document.searchForm.pageIndex.value = tempIdx;

										var upper_menu_id = $("#upper_menu_id")
												.val();
										var menu_nm = $("#menu_nm").val();
										var menu_id = $("#menu_id").val();
										var leftMenuId = $("#leftMenuId").val();
										var param = "&upper_menu_id="
												+ upper_menu_id + "&menu_nm="
												+ menu_nm + "&menu_id="
												+ menu_id + "&leftMenuId="
												+ leftMenuId;
										$
												.ajax({
													url : '/reservation/reservationSearchList.action'
															+ href + param,
													dataType : 'html',

													error : function(xhr,
															status, e) {
														alert(status);
													},
													success : function(data) {
														$("#dataList").html(
																data);

													}
												});
									}
								</script>
								<div class="paging" id="paging">
									<ul>
										<ul class="pagination">
										<li><a
											href="javascript:fn_goPaging('?index=1&amp;rsrvtQntt=1&amp;elementPerPage=10&amp;useBgnDtm=20180408&amp;useEndDtm=&amp;areaCode=&amp;dprtmId=0000%2c0103%2c0104%2c0224%2c0101%2c0108&amp;fcltMdclsCd=00000%2c03001%2c03002%2c03003%2c03004%2c04001%2c04002%2c04003%2c04005%2c04006%2c04007&amp;mxmmAccptCnt=4&amp;reserCheck=Y&amp;waitCheck=N&amp;pageIndex=1&amp;view_type=PSRASER');"
											class="num active">1</a></li>
									</ul>
								</div>
							</div> -->
							<!-- //paging -->
						</div>
					</div>
					<div class="reserv_notice">
                        <h4 class="mgb15 notice_alr">휴양림 예약 전 필독 사항</h4>
                        <ul class="parent_list">
                            <li>
                                <dl class="list_style_normal">
                                    <dt>휴양림 시설 안내</dt>
                                    <dd>야영 시설 중 야영 데크, 노지 야영장, 황토 온열 데크는 주차료를 포함해 결제해야 하는 상품입니다.</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="list_style_normal">
                                <dt>휴양림 시설 예약 방법</dt>
                                    <dd>예약 신청 방법은 '선착순 방식'에 의한 예약 신청 방법과 '추첨 방식'에 의한 예약 신청 방법이 있으며, 성수기 이용객이 폭주할 경우 원활한 예약 신청을 위해 신청 방법을 변경할 수 있습니다.</dd>
                                    <dd>예약 신청 방법의 변경은 자연휴양림 이용 상황 및 예약 관리 시스템을 감안, 산림청에서 결정합니다.</dd>
                                    <dd>선착순 또는 추첨 등 예약 신청 방법을 변경하고자 할 경우, 사용 시작일 40일 전에 공지 사항에 게재합니다.</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="list_style_normal">
                                    <dt>시설물 예약 시 공지 사항에 있는 예약 제외 시설물을 확인한 후 예약하시기 바랍니다.</dt>
                                    <dd class="bg_none pd00">
                                        <div class="btn_wrap board_btn_w_gray inblk">
                                            <a href="javascript:fn_goPage('/customer/board/notice/boardList.action', 'MENU01000000', '', 'MENU01010000','');" class="inblk pd10and15">공지사항 바로가기</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="list_style_normal">
                                    <dt>선착순 방식으로 예약 신청할 경우</dt>
                                    <dd>휴양림 예약 메뉴에서 숙박일, 기간, 지역 휴양림, 시설 종류 등을 선택해 예약 신청을 합니다.</dd>
                                    <dd><span class="green_font">예약은 1일 기준, 시설물(객실+야영장) 5개까지</span>가능하며, 기간은<span class="green_font">3박 4일 이내만 가능</span>합니다.</dd>
                                    <dd>예약 신청은 매주 수요일 전체 휴양림 객실, 야영장 모두 오전 9시부터, 6주차 월요일까지 가능합니다.<br>단, 화요일이 공휴일인 경우엔 예약 가능합니다.</dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="list_style_normal">
                                    <dt>주말 예약을 신청할 경우</dt>
                                    <dd class="bg_none pd00">
                                       매주 금요일, 토요일, 법정 공휴일 전일은 주말 추첨제를 통해 신청 가능합니다.<br>
                                        <div class="btn_wrap board_btn_w_gray inblk mgt05">
                                            <a href="javascript:fn_goPage('/information/information_010_040.action', 'MENU01000000', '', 'MENU01010000','');" class="inblk pd10and15">주말 추첨 바로가기</a>
                                        </div>
                                    </dd>
                                    <dd class="green_font">다음 달 사용 예정인 주말 신청은 매월 4~9일에 접수를 받은 후 추첨을 통해 사용자를 결정합니다. </dd>
                                    <dd>추첨 후 잔여 시설은 <span class="green_font">매월 15일 오전 9시부터</span> 선착순 예약이 가능하며, 6주차 월요일까지 가능합니다.</dd>
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
                                    <dd>대기 신청은 1인당 3개까지 가능합니다. </dd>
                                </dl>
                            </li>
                            
                            <li>
                                <dl class="list_style_normal">
                                    <dt>단체 예약</dt>
                                    <dd>
                                        <span class="green_font">기관·회사·동호회 등 단체에서</span> 예약하는 경우 <span class="green_font">고객지원센터(1588-3250)로 요청</span>하면 예약이 가능합니다.<br>
                                       단, 예약이 가능한 기간에 한해 실시하며, 매주 선착순 예약 이후 일부터 가능합니다.<br>
                                        <span class="green_font">※ 결제는 고객지원센터에서 예약 후 '마이 페이지'에서 하시기 바랍니다.</span>
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