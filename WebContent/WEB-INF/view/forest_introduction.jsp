<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#introForest #map .customoverlay_main a {
 display: block;
 text-decoration: none;
 text-align: center;
 border-radius: 50px;
 margin-top:-22px;
 margin-left:5px;
 width:15px;
 height: 15px;
} 
</style>
<link rel="stylesheet" href="css/forest_introduction.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=123daa267bb77dd89306a1db8daa94de"></script>

</head>
<body>
<jsp:include page="header.jsp" />
<div id="introForest">
	<h1>휴양림별 안내</h1>
	<div id="introForest_innerline"></div>
	<p><img src="css/images/mainImages/alr_icon.png">지도에서 해당 휴양림을 선택하시면 각 휴양림별 홈페이지로 이동합니다.</p>

	<div id="map"></div>
	<script>
	$(document).ready(function() {	
		$.ajax({
			url:"forestIntroJson.do",
			type:"get",
			dataType:"json",
			success:function(data){
				console.log(data);
				
				
				
					
					
				 	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
				    mapOption = { 
				        center: new daum.maps.LatLng(36.543740, 127.949994), // 지도의 중심좌표
				        level: 13 // 지도의 확대 레벨
				    };

				var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				 
				// 마커를 표시할 위치와 title 객체 배열입니다 
				var positions= new Array();
				$(data).each(function(i, obj){
					
				positions[i] = 
				    {
				    	content: '<div class="customoverlay_main" >' +
				        '<a  href="'+obj.forHomepage+'">&nbsp;&nbsp;</a></div>',  
				    	title: obj.forName, 
				        latlng: new daum.maps.LatLng(obj.forLatitude,obj.forLongitude)
		
				    };
				
				 alert(positions[i].title);
				})
				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "css/images/mainImages/trees_marker.png"; 
				    alert(positions.length);
				for (var i = 0; i < positions.length; i ++) {
				    
				    // 마커 이미지의 이미지 크기 입니다
				    var imageSize = new daum.maps.Size(30, 30); 
				    
				    // 마커 이미지를 생성합니다    
				    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
				    
				    // 마커를 생성합니다
				    var marker = new daum.maps.Marker({
				        map: map, // 마커를 표시할 지도
				        position: positions[i].latlng, // 마커를 표시할 위치
				        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				        image : markerImage // 마커 이미지 
				    });
				    
				    var overlay = new daum.maps.CustomOverlay({content : positions[i].content, map : map, position : marker.getPosition()});

				}
					
				function makeClickListener(map, marker, overlay) {
				    return function() {
				    overlay.open(map, marker);
				    };
				}		
					
		}	
})	
	})

	
	/* var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new daum.maps.LatLng(36.543740, 127.949994), // 지도의 중심좌표
        level: 13 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
    	content: '<div class="customoverlay_main" >' +
        '<a  href="http://www.huyang.go.kr/forest/contentIntro.action?dprtmId=0103">&nbsp;&nbsp;</a></div>',  
    	title: '산음자연휴양림', 
        latlng: new daum.maps.LatLng(37.5970696,127.5706887)
    },
    {
    	content: '<div class="customoverlay_main">' +
        '<a  href="http://www.huyang.go.kr/forest/contentIntro.action?dprtmId=0104">&nbsp;&nbsp;</a></div>',  
    	title: '아세안자연휴양림', 
        latlng: new daum.maps.LatLng(37.7737151,126.94224310000004)
    },
    {
    	content: '<div class="customoverlay_main">' +
        '<a  href="http://www.huyang.go.kr/forest/contentIntro.action?dprtmId=0224">&nbsp;&nbsp;</a></div>',  
    	title: '운악산자연휴양림', 
        latlng: new daum.maps.LatLng(37.8804745,127.30620620000002)
    },
    {
    	content: '<div class="customoverlay_main">' +
        '<a  href="http://www.huyang.go.kr/forest/contentIntro.action?dprtmId=0101">&nbsp;&nbsp;</a></div>',  
    	title: '유명산자연휴양림', 
        latlng: new daum.maps.LatLng(37.59263929999999,127.49113639999996)
    },
    {
    	content: '<div class="customoverlay_main">' +
        '<a  href="http://www.huyang.go.kr/forest/contentIntro.action?dprtmId=0108">&nbsp;&nbsp;</a></div>',  
    	title: '중미산자연휴양림',
        latlng: new daum.maps.LatLng(37.5837636,127.45639460000006)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "css/images/mainImages/trees_marker.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(30, 30); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
    
    var overlay = new daum.maps.CustomOverlay({content : positions[i].content, map : map, position : marker.getPosition()});

}

function makeClickListener(map, marker, overlay) {
    return function() {
    overlay.open(map, marker);
    };
} */

	
</script>
	

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

