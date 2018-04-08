<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="sub_community_wrap">
		<!--  서브페이지 내용부분 wrap  -->
		<div id="sub_content_wrap">
			<div class="title_area">
				<h3>선착순 예약</h3>
			</div>
			<!--  각페이지별로 바뀌는 내용부분   -->
			<div class="content">
				<form id="searchForm" name="searchForm"
					action="/reservation/reservationSearch.do" method="post">
					<input id="useBgnDtm" name="useBgnDtm" type="hidden" value="">
					<!-- 숙박시작일 -->
					<input id="useEndDtm" name="useEndDtm" type="hidden" value="">
					<input id="areaCode" name="areaCode" type="hidden" value="">
					<!-- 지역코드 -->
					<input id="paramDprtmId" name="paramDprtmId" type="hidden" value="">
					<!-- 휴양림 코드 -->
					<input id="fcltId" name="fcltId" type="hidden" value="">
					<!-- 상품ID -->
					<input id="reserCheck" name="reserCheck" value="Y" type="hidden">
					<!-- 예약 가능상품 -->
					<input id="waitCheck" name="waitCheck" value="N" type="hidden">
					<!-- 대기 가능상품 -->
					<input id="availMonth" name="availMonth" type="hidden" value="">
					<input id="slideBgnDate" name="slideBgnDate" type="hidden" value="">
					<input id="slideEndDate" name="slideEndDate" type="hidden" value="">
					<input id="clickedDate" name="clickedDate" type="hidden" value="">
					<input id="fcltRsrvtTpcd" name="fcltRsrvtTpcd" type="hidden"
						value=""> <input id="waitState" name="waitState"
						type="hidden" value=""> <input id="pageIndex"
						name="pageIndex" type="hidden" value="1"> <input
						type="hidden" id="rsrvt_st" name="rsrvt_st" value="true">
					<!--  컨텐츠 -->
					<div class="reserve" id="reserve">
						<!--  선택구분 -->
						<!-- <div class="select_title">
                        <ul>
                            <li><span>날짜선택</span></li>
                            <li><span>세부항목선택</span></li>
                        </ul>
                    </div> -->
						<!--  //선택구분 -->
						<div class="top_area">
							<!--  캘린더 부분  -->
							<div class="calendar_wrap">
								<h4>
									<span>날짜 선택</span>
								</h4>
								<div class="calendar_box">
									<div id="jqxWidget" data-role="calendar" tabindex="0"
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
														<tr role="row" id="calendarTitleViewjqxWidget"
															width="100%"
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
									</div>
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
										<li><span class="yellow_box"></span><span>선착순 예약
												가능 날짜</span></li>
										<li><span class="gray_box2"></span><span>주말 추첨제 가능
												날짜</span></li>
										<li><span class="blue_box"></span><span>숙박하실 날짜</span></li>
										<li><span class="pink_box"></span><span>퇴실하실 날짜</span></li>
									</ul>
								</div>
							</div>
							<!--  //캘린더 부분  -->

							<!-- 예약 상세선택 부분  -->
							<div class="reserve_select">
								<h4>
									<span>세부 항목 선택</span>
								</h4>
								<ul class="select_area">
									<li class="select_tab selected"><a href="#huyang"
										class="deth1_nc"><span>휴양림 선택</span></a> <!-- 휴양림 목록 전체 영역 START -->
										<div id="dprtm_tab" class="sort_wrap top_sort deth2 on">


											<div class="area_sort">
												<h4>
													<span>지역선택 : <select id="upper_dprtm_id"
														name="upper_dprtm_id"
														style="color: white; background-color: #797d89;" class=""
														title="지역 선택">
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
													<span class="btn_check all_select" id="areaSpan"> <input
														id="areaAll" name="dprtmId" type="checkbox" value="0000"><label
														for="areaAll">전체선택</label><input type="hidden"
														name="_dprtmId" value="on">
													</span>

													<!-- 지역에 소속된 휴양림 목록 출력 START -->
													<!-- 서울/경기 -->
													<div id="area_3000001">
														<span class="btn_check DPRT_3000001"><input
															id="3000002_0103" name="dprtmId" type="checkbox"
															value="0103"><label for="3000002_0103">산음(양평)</label><input
															type="hidden" name="_dprtmId" value="on"></span> <span
															class="btn_check DPRT_3000001"><input
															id="3000002_0104" name="dprtmId" type="checkbox"
															value="0104"><label for="3000002_0104">아세안(양주)</label><input
															type="hidden" name="_dprtmId" value="on"></span> <span
															class="btn_check DPRT_3000001"><input
															id="3000002_0224" name="dprtmId" type="checkbox"
															value="0224"><label for="3000002_0224">운악산(포천)</label><input
															type="hidden" name="_dprtmId" value="on"></span> <span
															class="btn_check DPRT_3000001"><input
															id="3000002_0101" name="dprtmId" type="checkbox"
															value="0101"><label for="3000002_0101">유명산(가평)</label><input
															type="hidden" name="_dprtmId" value="on"></span> <span
															class="btn_check DPRT_3000001"><input
															id="3000002_0108" name="dprtmId" type="checkbox"
															value="0108"><label for="3000002_0108">중미산(양평)</label><input
															type="hidden" name="_dprtmId" value="on"></span>
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
										</div> <!-- 휴양림 목록 전체 영역 END --></li>


									<li class="select_tab selected"><a href="#huyang"
										class="deth1_nc"><span>시설 선택</span></a>
										<div id="fclt_tab" class="sort_wrap deth2"
											style="display: block;">
											<!-- 시설 선택  -->
											<div class="area_sort">
												<div class="select_box_wrap">
													<span class="btn_check all_select"> <input
														id="fcltMdclsCd00000" name="fcltMdclsCd" type="checkbox"
														value="00000"><label for="fcltMdclsCd00000">전체선택</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_03001"> <input
														id="fcltMdclsCd1" name="fcltMdclsCd" type="checkbox"
														value="03001"><label for="fcltMdclsCd1">숲속의집</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_03002"> <input
														id="fcltMdclsCd2" name="fcltMdclsCd" type="checkbox"
														value="03002"><label for="fcltMdclsCd2">휴양관</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_03003"> <input
														id="fcltMdclsCd3" name="fcltMdclsCd" type="checkbox"
														value="03003"><label for="fcltMdclsCd3">연립동</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_03004"> <input
														id="fcltMdclsCd4" name="fcltMdclsCd" type="checkbox"
														value="03004"><label for="fcltMdclsCd4">숲속수련장</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_04001"> <input
														id="fcltMdclsCd5" name="fcltMdclsCd" type="checkbox"
														value="04001"><label for="fcltMdclsCd5">노지야영장</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_04002"> <input
														id="fcltMdclsCd6" name="fcltMdclsCd" type="checkbox"
														value="04002"><label for="fcltMdclsCd6">야영데크</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_04003"> <input
														id="fcltMdclsCd7" name="fcltMdclsCd" type="checkbox"
														value="04003"><label for="fcltMdclsCd7">황토온돌테크</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_04005"> <input
														id="fcltMdclsCd8" name="fcltMdclsCd" type="checkbox"
														value="04005"><label for="fcltMdclsCd8">오토캠핑장</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_04006"> <input
														id="fcltMdclsCd9" name="fcltMdclsCd" type="checkbox"
														value="04006"><label for="fcltMdclsCd9">캐빈</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span> <span class="btn_check" id="CLS_04007"> <input
														id="fcltMdclsCd10" name="fcltMdclsCd" type="checkbox"
														value="04007"><label for="fcltMdclsCd10">캠핑카야영장</label><input
														type="hidden" name="_fcltMdclsCd" value="on">
													</span>


												</div>
											</div>
										</div></li>
									<!-- // 시설선택 -->

									<!-- 인원수 선택 -->
									<li class="select_tab selected"><a href="#huyang"
										class="deth1_nc"><span>인원수 선택</span></a>
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
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select>
													</div>
													인실 (인원수 선택 시 선택하신 숫자이상의 객실이 검색되어 집니다.)
												</div>
											</div>
										</div></li>
									<!-- //인원수 선택 -->
								</ul>

								<div class="button_wrap" align="right">
									<!-- 
                                <div class="reset_btn_wrap board_btn_w_grays>
                                    <button id="imgReset"  type="button" class="reset_btn normal_size">선택초기화</button>
                                </div>
                                 -->
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
							<!-- //예약 상세선택 부분  -->
						</div>

						<!-- 방 리스트  -->
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
									<!-- 
								<li>
									<div class="inner"><span class="icon_hwang">황토온돌데크</span></div>
								</li>
								 -->
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

								<div class="room_table_wrap">
									<p class="table_tip_new">방 제목을 클릭하면 방의 상세 정보를 확인할 수 있습니다.</p>
									<ul class="room_table">
										<li><span class="reser_tit">예약 가능한 방 목록입니다.</span>
											<ul class="day_hero">



												<!-- 일주일의 날짜 출력하는 부분 -->



											</ul></li> 검색조건에 일치하는 상품이 없습니다


									</ul>

									<!-- slider_remote -->
									<div class="slider_remote_wrap">
										<span class="navi_text">
											<div class="weekName"></div>
										</span>
										<div id="silder" class="slider_remote"></div>
									</div>
									<!-- //slider_remote -->

								</div>

								<!-- paging -->

								<div id="paging">

















									<script>
										function fn_goPaging(href) {

											//alert(href);

											var tempArr = href.split("&");
											//alert(tempArr);
											var tempIdx = tempArr[0].split("=")[1];
											//alert(tempIdx);
											document.searchForm.pageIndex.value = tempIdx;

											var upper_menu_id = $(
													"#upper_menu_id").val();
											var menu_nm = $("#menu_nm").val();
											var menu_id = $("#menu_id").val();
											var leftMenuId = $("#leftMenuId")
													.val();
											var param = "&upper_menu_id="
													+ upper_menu_id
													+ "&menu_nm=" + menu_nm
													+ "&menu_id=" + menu_id
													+ "&leftMenuId="
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
															$("#dataList")
																	.html(data);

														}
													});
										}
									</script>
									<div class="paging" id="paging">
										<ul>
											<!-- <ul class="pagination"> -->
											<li><a
												href="javascript:fn_goPaging('?index=1&amp;rsrvtQntt=&amp;elementPerPage=10&amp;useBgnDtm=&amp;useEndDtm=&amp;areaCode=&amp;dprtmId=&amp;fcltMdclsCd=&amp;mxmmAccptCnt=0&amp;reserCheck=&amp;waitCheck=&amp;slideBgnDate=&amp;slideEndDate=');"
												class="num active">1</a></li>
										</ul>
									</div>
								</div>

								<!-- //paging -->
							</div>
						</div>
						<!--  휴양림 시설정보 팝업  -->
						<div id="layerPopup" class="huyang_popup" style="display: none;"></div>
						<!--  //휴양림 시설정보 팝업  -->

						<!-- //방 리스트  -->

						<div id="dataView">
							<!--  
                    	<div><img src="./user/css/images/jqx/loader.gif" /></div>
                    	 -->
						</div>

						<!-- 약관동의 부분 -->
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
													<p>국유 자연휴양림 이용 고객이 다른 이용객에게 피해를 주거나 휴양림 운영에 지장을 주는 행위를
														한 경우 구두 주의, 퇴실, 벌점 부여 등의 단계별 조치를 통해 선량한 휴양림 이용객의 권리 및
														국유재산을 보호하려는 제도</p>
													<strong>적용 대상</strong>
													<p>국유 자연휴양림 내에서 고성방가, 기물 손망실, 폭행·위협, 산림훼손, 임산물 불법 채취,
														산림 생태 자원 훼손 또는 이와 유사한 행위로 이웃 이용객에게 피해 또는 자연휴양림 운영에 지장을 준
														이용객</p>
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
											<font color="red">자연휴양림은 산 속에 위차하여 야영장, 등산로는 물론 객실
												내에서도 곤충류(진드기, 지네, 벌 등), 파충류(뱀 등) 등이 자주 나타날 수 있으니 예약시 참고하여
												주시기 바랍니다.</font>
										</dt>
									</dl>
								</li>
								<li>
									<dl>
										<dt>
											<font color="red">산음자연휴양림 숲속수련장지구(두메지구)의 예약안내를
												확인하셨습니까?</font>
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
								<!-- 
                            <div>
                                <a href="#huyang" class="board_btn_w_gray normal_size wid120" id="btn_rsrvConcel">취소하기</a>
                            </div>
                             -->
								<div id="btn_reserv">
									<a href="#huyang" onclick="goReserv('N')"
										class="board_btn_green normal_size wid120">예약하기</a>
								</div>
							</div>
							<!-- //button -->
						</div>
						<!-- //약관동의 부분 -->

						<!-- 예약전 필독사항 -->
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
										<dd>예약 신청 방법은 '선착순 방식'에 의한 예약 신청 방법과 '추첨 방식'에 의한 예약 신청
											방법이 있으며, 성수기 이용객이 폭주할 경우 원활한 예약 신청을 위해 신청 방법을 변경할 수 있습니다.</dd>
										<dd>예약 신청 방법의 변경은 자연휴양림 이용 상황 및 예약 관리 시스템을 감안, 산림청에서
											결정합니다.</dd>
										<dd>선착순 또는 추첨 등 예약 신청 방법을 변경하고자 할 경우, 사용 시작일 40일 전에 공지
											사항에 게재합니다.</dd>
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
											추첨 후 잔여 시설은 <span class="green_font">매월 15일 오전 9시부터</span>
											선착순 예약이 가능하며, 6주차 월요일까지 가능합니다.
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
				</form>

			</div>

		</div>
	</section>
</body>
</html>