<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mainSection.css">
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jqwidget/jquery.bxslider.min.js"></script>

<script>
    /* 메인 - 휴양림 슬라이드 (네비게이션)*/
    $(document).ready(function() {
        var name = $('#mainSlider>#mainSlider-navi>ul>li');
            name.click(function(){
            $(this).addClass('on');
            name.not(this).removeClass('on');
            });
            
            var mySlider =	$('.mainSlider_area_ul').bxSlider({
				maxSlides:4, //슬라이드 수
				slideWidth : 280, //슬라이드 사이즈
				slideMargin:20, //슬라이드마다 마진을 줌
				auto : false,// 자동으로 움직임
				pause:2000, //잠시 정지
				speed:500,//0.5초동안 움직이게
				autoControls : true, //
				captions : true, //밑에 글자나오게 
				pager : false,
            	autoHover: true,
			});
	$("#mainSlider ul li a").click(function(){
		//$(".mainSlider_area_1").css("display","none");
	})
});
 
            
         
        	
        		
        		
        		
        		
        		
        		
   
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
				<li class="nav1">
					<a href="#">
						<span class="text">서울/경기</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav2">
					<a href="#">
						<span class="text">강원</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav3">
					<a href="#">
						<span class="text">충북</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav4">
					<a href="#">
						<span class="text">충남</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav5">
					<a href="#">
						<span class="text">전북</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav6">
					<a href="#">
						<span class="text">전남</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav7">
					<a href="#">
						<span class="text">경북</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
				<li class="nav8">
					<a href="#">
						<span class="text">경남</span>
						<div class="circle_icon"></div>
						<div class="red_icon"></div>
					</a>
				</li>
			</ul>
		</div>
		<div id="mainSliderStart">
			<div class="mainSlider_area_1">
				<div class="mainSlider_area_wrapper">
					<ul class="mainSlider_area_ul">
						<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/02031_1.gif">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>산음(양평) 자연휴양림</dt>
									<dd>자연 그대로의 모습이 보존된 산음 자연휴양림</dd>
								</dl>
							</div>
						</li>
						<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/02031_2.jpg">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>아세안(양주) 자연휴양림</dt>
									<dd>아세안 10개국의 문화 체험을 즐길 수 있는 이색휴양림
										아세안 자연휴양림</dd>
								</dl>
							</div>
						</li>
						<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/02031_3.gif">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>운악산(포천) 자연휴양림</dt>
									<dd>자연을 수놓은 꽃길이 장관인 운악산 자연휴양림</dd>
								</dl>
							</div>
						</li>
						<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/02031_4.gif">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>유명산(가평) 자연휴양림</dt>
									<dd>자생식물원을 품은 수도권의 숲속 쉼터 유명산 자연휴양림</dd>
								</dl>
							</div>
						</li>
						<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="css/images/mainImages/02031_5.gif">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#" class="home_icon">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#" class="time_icon">
										<div class="link_area_reserve"></div>
										<span>예약하기</span>
									</a>
								</div>
							</div>
							<div class="text_area">
								<dl>
									<dt>중미산(양평) 자연휴양림</dt>
									<dd>숲해설가의 유익한 숲 해설 프로그램. 중미산 자연휴양림</dd>
								</dl>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	
	</div>
	
	
	
	<!-- section bottom부분 아이콘 선택 -->	
		<div id="iconDetails">
			<ul>
				<li>
					<a href="#">
						<img src="css/images/mainImages/monitor.png"><br>
						<span>휴양림 공지 사항</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/intro.png"><br>
						<span>휴양림별 안내</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/recommand.png"><br>
						<span>추천 휴양림</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/library.png"><br>
						<span>산림 문화 교육</span>
					</a>
				</li>
				<li>
					<a href="reservation.do">
						<img src="css/images/mainImages/firstCome.png"><br>
						<span>선착순 예약</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/wheelchair.png"><br>
						<span>장애인 예약</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/finger.png"><br>
						<span>추첨제</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/review3.png"><br>
						<span>이용 및 체험 후기</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/newspaper.png"><br>
						<span>설문 조사</span>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="css/images/mainImages/question.png"><br>
						<span>자주하는 질문</span>
					</a>
				</li>
			</ul>
		</div>
	</section>
</body>
</html>