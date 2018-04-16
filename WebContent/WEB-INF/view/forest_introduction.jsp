<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introduction.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="introForest">
	<h1>휴양림별 안내</h1>
	<p>지도에서 해당 휴양림을 선택하시면 각 휴양림별 홈페이지로 이동합니다.</p>
	<div class="inner_line"></div>
	<div id="introForest_map"></div>
</div>
<div id="introForest_details">
	<div id="introForest_menu">
		<ul id="introForest_ul">
			<li><a href="#null">전체 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">서울/경기 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">강원 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">충북 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">충남 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">전북 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">전남 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">경북 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li><a href="#null">경남 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
		</ul>
		<div id="introForest_innerline"></div>
	</div>
	<div id="introForest_pic">
		<ul id="introForest_pic_ul">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/02031_1.gif">
						<span>서울/경기</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>산음(양평) 자연휴양림</dt>
							<dd>경기도 양평군 단월면 고북길 347</dd>
							<dd>이용문의:031-744-8133</dd>
						</dl>
						<span><a href=""><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			<li>
				<div class="intro_container">
					<div class="intro_top">
						<img src="css/images/mainImages/02031_2.jpg">
						<span>서울/경기</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>산음(양평) 자연휴양림</dt>
							<dd>경기도 양평군 단월면 고북길 347</dd>
							<dd>이용문의:031-744-8133</dd>
						</dl>
						<span><a href=""><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			<li>
				<div class="intro_container">
					<div class="intro_top">
						<img src="css/images/mainImages/02031_3.gif">
						<span>서울/경기</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>산음(양평) 자연휴양림</dt>
							<dd>경기도 양평군 단월면 고북길 347</dd>
							<dd>이용문의:031-744-8133</dd>
						</dl>
						<span><a href=""><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			<li>
				<div class="intro_container">
					<div class="intro_top">
						<img src="css/images/mainImages/02031_4.gif">
						<span>서울/경기</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>산음(양평) 자연휴양림</dt>
							<dd>경기도 양평군 단월면 고북길 347</dd>
							<dd>이용문의:031-744-8133</dd>
						</dl>
						<span><a href=""><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>