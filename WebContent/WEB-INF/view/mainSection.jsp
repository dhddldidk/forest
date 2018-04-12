<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mainSection.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jqwidget/jquery.bxslider.min.js"></script>

<script>
	/* 메인 - 휴양림 슬라이드 (네비게이션)*/
	$(document).ready(function() {

		var name = $('#mainSlider>#mainSlider-navi>ul>li');
		name.click(function() {
			$(this).addClass('on');
			name.not(this).removeClass('on');
		});

		var mySlider = $('.mainSlider_area_ul').bxSlider({
			maxSlides : 4, //슬라이드 수
			slideWidth : 280, //슬라이드 사이즈
			slideMargin : 20, //슬라이드마다 마진을 줌
			auto : false,// 자동으로 움직임
			pause : 2000, //잠시 정지
			speed : 500,//0.5초동안 움직이게
			autoControls : true, //
			captions : true, //밑에 글자나오게 
			pager : false,
			autoHover : true,

		});

		//메인 bxSlider       

		

		$("#mainSlider #mainSlider-navi .nav1 a").click(function() {
			$("#listSGyeonggi").css("display", "block");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "none");

		})
		$("#mainSlider #mainSlider-navi .nav2 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "block");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "none");
		})
		$("#mainSlider #mainSlider-navi .nav3 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "block");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "none");
		})
		$("#mainSlider #mainSlider-navi .nav4 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "block");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "none");
		})
		$("#mainSlider #mainSlider-navi .nav5 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "block");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "none");
		})
		$("#mainSlider #mainSlider-navi .nav6 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "block");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "none");
		})
		$("#mainSlider #mainSlider-navi .nav7 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "block");
			$("#listGyeongnam").css("display", "none");
		})
		$("#mainSlider #mainSlider-navi .nav8 a").click(function() {
			$("#listSGyeonggi").css("display", "none");
			$("#listGangwon").css("display", "none");
			$("#listChungbuk").css("display", "none");
			$("#listChungnam").css("display", "none");
			$("#listJeonbuk").css("display", "none");
			$("#listJeonnam").css("display", "none");
			$("#listGyeongbuk").css("display", "none");
			$("#listGyeongnam").css("display", "block");
		})

		/////////////////////////////////////////////////////////////
	});
	
	window.onload = function(){
		//서울경기 빼고 나머지들 display none
		$("#listGangwon").css("display", "none");
		$("#listChungbuk").css("display", "none");
		$("#listChungnam").css("display", "none");
		$("#listJeonbuk").css("display", "none");
		$("#listJeonnam").css("display", "none");
		$("#listGyeongbuk").css("display", "none");
		$("#listGyeongnam").css("display", "none");
	}
	
	$(document).ready(function() {

		$("#mainContent ul li:nth-child(2) #bottomInfo #offDay").css("display", "none");
		$("#mainContent ul li:nth-child(2) #bottomInfo #noSmoking").css("display", "none");
		
		var noBBQ = $('#mainContent ul li:nth-child(2) #bottomInfo ul li:first-child');
		var offDay = $('#mainContent ul li:nth-child(2) #bottomInfo ul li:nth-child(2)');
		var noSmoking = $('#mainContent ul li:nth-child(2) #bottomInfo ul li:last-child');
		
		noBBQ.click(function() {
			$(this).addClass('on');
			$("#mainContent ul li:nth-child(2) #bottomInfo #noBBQ").css("display", "block");
			$("#mainContent ul li:nth-child(2) #bottomInfo #offDay").css("display", "none");
			$("#mainContent ul li:nth-child(2) #bottomInfo #noSmoking").css("display", "none");
			offDay.removeClass('on');
			noSmoking.removeClass('on');
		});
		offDay.click(function() {
			$(this).addClass('on');
			$("#mainContent ul li:nth-child(2) #bottomInfo #noBBQ").css("display", "none");
			$("#mainContent ul li:nth-child(2) #bottomInfo #offDay").css("display", "block");
			$("#mainContent ul li:nth-child(2) #bottomInfo #noSmoking").css("display", "none");
			noBBQ.not(this).removeClass('on');
			noSmoking.removeClass('on');
		});
		noSmoking.click(function() {
			$(this).addClass('on');
			$("#mainContent ul li:nth-child(2) #bottomInfo #noBBQ").css("display", "none");
			$("#mainContent ul li:nth-child(2) #bottomInfo #offDay").css("display", "none");
			$("#mainContent ul li:nth-child(2) #bottomInfo #noSmoking").css("display", "block");
			noBBQ.not(this).removeClass('on');
			offDay.removeClass('on');
		});
		
		
	})
</script>
</head>
<body>
	<section id="mainSection">

		<!-- section top부분 "눈부신 햇살이 숲을 깨움"까지 -->
		<div id="topBGSection">
			<div id="bgOpacity">
				<div id="sunshineTitle">
					<p>숲속의 속삭임을 느껴보세요.</p>
					<p>눈부신 햇살이 숲을 깨움</p>
				</div>
			</div>
		</div>

		<!-- section top부분 지역 누르면 빨간 아이콘이 나옴 -->
		<div id="mainSlider">
			<div id="mainSlider-navi">
				<div id="inner-line"></div>
				<ul>
					<li class="nav1"><a href="#"> <span class="text">서울/경기</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav2"><a href="#"> <span class="text">강원</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav3"><a href="#"> <span class="text">충북</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav4"><a href="#"> <span class="text">충남</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav5"><a href="#"> <span class="text">전북</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav6"><a href="#"> <span class="text">전남</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav7"><a href="#"> <span class="text">경북</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
					<li class="nav8"><a href="#"> <span class="text">경남</span>
							<div class="circle_icon"></div>
							<div class="red_icon"></div>
					</a></li>
				</ul>
			</div>
			<div id="mainSliderStart">
				<div class="mainSlider_area_1">
					<div class="mainSlider_area_wrapper" id="listSGyeonggi">

						<c:if test="${listSGyeonggi.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listSGyeonggi }">

									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listGangwon">
						<c:if test="${listGangwon.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listGangwon }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listChungbuk">
						<c:if test="${listChungbuk.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listChungbuk }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listChungnam">
						<c:if test="${listChungnam.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listChungnam }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listJeonbuk">
						<c:if test="${listJeonbuk.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listJeonbuk }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listJeonnam">
						<c:if test="${listJeonnam.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listJeonnam }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listGyeongbuk">
						<c:if test="${listGyeongbuk.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listGyeongbuk }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
					<div class="mainSlider_area_wrapper" id="listGyeongnam">
						<c:if test="${listGyeongnam.size() > 0 }">
							<ul class="mainSlider_area_ul">
								<c:forEach var="item" items="${listGyeongnam }">
									<li class="mainSlider_area_ul_li">
										<div class="img_area">
											<img src="css/images/mainImages/${item.forPic }">
										</div>
										<div class="link_area">
											<div class="link_area_btn">
												<a href="#" class="home_icon">
													<div class="link_area_home"></div> <span>홈페이지</span>
												</a> <a href="#" class="time_icon">
													<div class="link_area_reserve"></div> <span>예약하기</span>
												</a>
											</div>
										</div>
										<div class="text_area">
											<dl>
												<dt>${item.forName }</dt>
												<dd>${item.forDetail }</dd>
											</dl>
										</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
				</div>

			</div>

		</div>
		<!-- main content 부분  -->
		<div id="mainContent">
			<ul>
				<li></li>
				<li>
					<div id="topInfo">
						<p><a href="#">휴양림 예약하기<span></span></a></p>
						<p><a href="#">월별예약현황<span></span></a></p>
						<p><a href="#">주말 추첨제 신청하기<span></span></a></p>
					</div>
					<div id="bottomInfo">
						<ul>
							<li><a href="#">바비큐 금지</a></li>
							<li><a href="#">휴무 안내</a></li>
							<li><a href="#">흡연금지</a></li>
						</ul>
						<div id="noBBQ">
							<dl>
								<dt>산불 조심 기간 중 자연휴양림내</dt>
								<dd>바비큐 시설 전면 사용 금지</dd>
								<dd>봄철 1월 25일~5월 15일 가을철 11월 1일~12월 15일</dd>
							</dl>
						</div>
						<div id="offDay">
							<dl>
								<dt>국립자연휴양림 휴무 안내</dt>
								<dd>성수기를 제외한 모든 화요일</dd>
								<dd>단, 화요일 수요일이 공휴일이면 이용 가능</dd>
							</dl>
						</div>
						<div id="noSmoking">
							<dl>
								<dt>흡연 행위 금지</dt>
								<dd>산림 문화 휴양에 관한 법률 개정으로 </dd>
								<dd>2016년 8월 30일부터 저장된 장소 외 모든 구역에서</dd>
								<dd>흡연행위가 금지</dd>
							</dl>
						</div> 
					</div>
				</li>
				<li></li>
				<li>
					<h3>선착순 예약 개시일</h3>
					<table>
						<tr>
							<th>예약 개시일</th>
							<th>개시대상일(주중)</th>
						</tr>
						<tr>
							<td>2018.04.18</td>
							<td>2018.05.23~2018.05.29</td>
						</tr>
						<tr>
							<td>2018.04.25</td>
							<td>2018.05.30~2018.06.05</td>
						</tr>
						<tr>
							<td>2018.05.02</td>
							<td>2018.06.06~2018.06.12</td>
						</tr>
					</table>
				</li>
				<li>
					<h3>주말 추첨제</h3>
					<div id="lottery">
						
						<dl>
							<dt>기간 :<span> &nbsp;2018년 6월 1일~말일까지</span><br>
									&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (주말 또는 공휴일 전일)</dt>
						</dl>
						<dl>
							<dt>접수 :<span> &nbsp;2018년 5월 4일 09시~</span><br>
									&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5월 9일 18시</dt>
						</dl>
					</div>
					<div id="weekend"></div>
				</li>
				<li>
					<h3>이달의 꽃</h3>
					<div id="mFlower"></div>
				</li>
			</ul>
		</div>

		<!-- section bottom부분 아이콘 선택 -->
		<div id="iconDetails">
			<ul>
				<li><a href="#"> <img
						src="css/images/mainImages/monitor.png"><br> <span>휴양림
							공지 사항</span>
				</a></li>
				<li><a href="#"> <img src="css/images/mainImages/intro.png"><br>
						<span>휴양림별 안내</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/recommand.png"><br> <span>추천
							휴양림</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/library.png"><br> <span>산림
							문화 교육</span>
				</a></li>
				<li><a href="reservation.do"> <img
						src="css/images/mainImages/firstCome.png"><br> <span>선착순
							예약</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/wheelchair.png"><br> <span>장애인
							예약</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/finger.png"><br> <span>추첨제</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/review3.png"><br> <span>이용
							및 체험 후기</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/newspaper.png"><br> <span>설문
							조사</span>
				</a></li>
				<li><a href="#"> <img
						src="css/images/mainImages/question.png"><br> <span>자주하는
							질문</span>
				</a></li>
			</ul>
		</div>
	</section>
</body>
</html>