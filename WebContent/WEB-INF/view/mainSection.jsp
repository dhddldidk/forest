<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* 메인 top 배경화면 */
	section{
		overflow: hidden;
	}
	#mainSection #topBGSection{
		width:100%;
		margin:0 auto;
		height: 620px;
		background: url("css/images/mainImages/bg-img.jpg") repeat center ;
		background-size: cover;
		position: relative;
	}
	#mainSection #bgOpacity{
		width:100%;
		height:100%;
		background-color: rgba(0,0,0,0.5);
		
	}
	#mainSection #sunshineTitle{
		width:1180px;
		text-align:center;
		margin:0 auto;
		padding-top:60px;
		color:white;
		
	}
	#mainSection #sunshineTitle p:first-child{
		font-size: 24px;
		letter-spacing: -1px;
		padding-bottom: 15px;
		
	}
	#mainSection #sunshineTitle p:last-child{
	padding-top: 15px;
		font-size: 40px;
		letter-spacing: -2px;
		font-weight: bold;
	}
	
	/* 메인 휴양림 슬라이드 */
	#mainSlider{
		border:1px solid red;
		width:100%;
		height:300px;
		position: absolute;
		top:320px;
		text-align: center;
	}
	
	#mainSlider #mainSlider-navi{
 		position: relative;
 		border:1px solid blue;
 		height: 200px;
 	}
	
	#mainSlider #mainSlider-navi #inner-line{
		background: white;
		width:17.8%;
		height:1px;
		opacity: 0.6;
		margin-bottom: -43px;
		display: inline-block;
		margin-right: 13px;
	}
 	#mainSlider ul{
 		width:21%;
 		margin:0 auto;
 		height: 25px;
 		text-align: center;
 		position: relative;
 	}
 	#mainSlider ul li{
 		width:12%;
 		line-height:25px;
 		height: 25px;
 		float:left;
 		
 	}
 	#mainSlider ul li.on:first-child .text:first-child{
 		display:inline-block;
 		position: absolute;
 		top:-20px;
 		margin-left:-3px;
 		text-align: center;
 		overflow: hidden;
 	}
 	
 	#mainSlider ul li.on .text{
 		display:inline-block;
 		position: absolute;
 		top:-20px;
 		margin-left:5px;
 		text-align: center;
 		font-weight: bold;
 	}
 	
 	/* 지역명을 클릭했을 때 on class 추가 */
 	#mainSlider ul li.on a .circle_icon{
 		background: url("css/images/mainImages/navbg_on.png") no-repeat 0 0 ;
 		display:inline-block;
 		margin-top:24px;
 		width:30px;
 		height:40px;
 		transition: all 0.5s;
 	}
 	#mainSlider ul li.on a .red_icon{
 		position: absolute;
 		top:5px;
 		display: inline-block;
 		transition: all 0.5s;
 		margin-left: -26px;
 	}
 	#mainSlider ul li a .circle_icon{
 		width:20px;
 		height:30px;
 		background: url("css/images/mainImages/navbg.png") no-repeat 0 0 ;
 		text-align: center;
 		display:inline-block;
 		margin-left: 5px;
 		margin-top:5px;
 		
 	}
 	
 	
 	#mainSlider ul li a .red_icon{
 		margin-left: -21px;
 		width:20px;
 		height:26px;
 		background: url("css/images/mainImages/red_icon.png") no-repeat 0 0 ;
 		text-align: center;
 		display:inline-block;	
 		position: absolute;
 		top:20px;
 		display: none;
 		transition: all 0.5s;
 	}
 	#mainSlider ul li a{
 		width:12%;
 		line-height:25px;
 		height: 25px;
 		color: white;
 		letter-spacing: -2.8px;
 		text-decoration: none;
 	}

	 
	/* 아이콘 CSS 클릭시 해당 화면으로 */
	#mainSection #iconDetails{
		width:1200px;
		margin:0 auto;
	}
	
	#mainSection #iconDetails ul{
		width:1200px;
		margin:0 auto;
		text-align: center;
		height: 85px;
	}
	#mainSection #iconDetails li{
		border-radius:5px;
		float:left;
		width:9%;
		heignt:50px;
		margin:5px;
	}
	#mainSection #iconDetails li img{
		width:50px;
		heignt:30px;
		display: inline-block;
		border:1px solid #e3e3e3;
		border-radius:5px;
		padding:10px 30px 5px 30px;
	}
	#mainSection #iconDetails li img:hover{
		background-color: #e3e3e3;
	}
	#mainSection #iconDetails li img span{
		font-size: 20px;
	}
	#mainSection #iconDetails li a{
		width: 100%;
		height: 100%;
		display: inline-block; 
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    /* 메인 - 휴양림 슬라이드 (네비게이션)*/
    $(document).ready(function() {
        var name = $('#mainSlider>#mainSlider-navi>ul>li');
            name.click(function(){
            $(this).addClass('on');
            name.not(this).removeClass('on');
        });
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
			<div id="mainSlider_area_1">
				<div id="mainSlider_area_wrapper">
					<ul class="mainSlider_area_ul">
						<li class="mainSlider_area_ul_li">
							<div class="img_area">
								<img src="">
							</div>
							<div class="link_area">
								<div class="link_area_btn">
									<a href="#">
										<div class="link_area_home"></div>
										<span>홈페이지</span>
									</a>
									<a href="#">
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