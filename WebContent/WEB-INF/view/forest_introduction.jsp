<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introduction.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


</head>
<body>
<jsp:include page="header.jsp" />
<div id="introForest">
	<h1>휴양림별 안내</h1>
	<div id="introForest_innerline"></div>
	<p><img src="css/images/mainImages/alr_icon.png">지도에서 해당 휴양림을 선택하시면 각 휴양림별 홈페이지로 이동합니다.</p>
	
	<div id="introForest_map">

<div id="daumRoughmapContainer1523885621483" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1523885621483",
		"key" : "nppi",
		"mapWidth" : "1180",
		"mapHeight" : "200"
	}).render();
	
</script>

<div id="daumRoughmapContainer1523885790580" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1523885790580",
		"key" : "nppk",
		"mapWidth" : "1180",
		"mapHeight" : "200"
	}).render();
</script>
	</div>
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

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style type="text/css">
	#map{
		width:1180px;
		height: 400px;
	}
</style>
</head>
<body>
	<div id="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=123daa267bb77dd89306a1db8daa94de"></script>
	<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new daum.maps.LatLng(36.543740, 127.949994), // 지도의 중심좌표
        level: 13 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '용대자연휴양림', 
        latlng: new daum.maps.LatLng(38.233146, 128.352213)
    },
    {
        title: '생태연못', 
        latlng: new daum.maps.LatLng(33.450936, 126.569477)
    },
    {
        title: '텃밭', 
        latlng: new daum.maps.LatLng(33.450879, 126.569940)
    },
    {
        title: '근린공원',
        latlng: new daum.maps.LatLng(33.451393, 126.570738)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "css/images/mp_yellow.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(16, 16); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}
</script> -->