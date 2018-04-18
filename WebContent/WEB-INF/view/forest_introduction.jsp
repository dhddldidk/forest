<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#introForest > #map > .customoverlay_main{
	position: relative;
	
}
#introForest #map .customoverlay_main a {
 display: block;
 text-decoration: none;
 text-align: center;
 border-radius: 50px;
 margin-top:-22px;
 margin-left:5px;
 width:15px;
 height: 15px;
overflow: hidden;
} 
/* #introForest #map img {
position: absolute;
 z-index: 1; 
}   */
#introForest #map .customoverlay_main a .title{
 display: none;
/* position: absolute;
 z-index: 1; */
} 

#introForest #map .customoverlay_main > a:hover > .title{
  display: block;
  border:1px solid green;
  border-radius:20px; 
  margin-top:-3px;
 margin-left:-43px;
 width:115px;
 height: 20px;
 line-height:20px;
 background-color: white;
 color: #5D5D5D;
 letter-spacing: -2px;
 font-size: 11px;
 font-weight: bold;
position: absolute;
 z-index: 100; 
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
				        '<a  href="'+obj.forHomepage+'">&nbsp;&nbsp;'+
				        '<span class="title">'+obj.forName+'</a></div>',
				    	/* title: obj.forName,  */
				        latlng: new daum.maps.LatLng(obj.forLatitude,obj.forLongitude)
		
				    };
				

				
				})
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
				       /*  title : positions[i].title, */ // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
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

	$(document).on("mouseover",".customoverlay_main", function(){
		$(this).parent().css("z-index",100);
	})
	
	var name = $('#introForest_details>#introForest_menu>#introForest_ul>li');
		name.click(function() {
			$(this).addClass('on');
			name.not(this).removeClass('on');
		});
	
	
	
	//지역별 휴양림 안내
	$("#introForest_details #introForest_menu #introForest_ul .nav1 a").click(function() {
		$("#introAllForest").css("display", "block");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav2 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "block");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav3 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "block");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav4 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "block");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav5 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "block");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav6 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "block");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav7 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "block");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav8 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "block");
		$("#introGyeongnam").css("display", "none");
	})
	$("#introForest_details #introForest_menu #introForest_ul .nav9 a").click(function() {
		$("#introAllForest").css("display", "none");
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "block");
	})
	});

	
	window.onload = function() {
		//서울경기 빼고 나머지들 display none
		$("#introSGyeonggi").css("display", "none");
		$("#introGangwon").css("display", "none");
		$("#introChungbuk").css("display", "none");
		$("#introChungnam").css("display", "none");
		$("#introJeonbuk").css("display", "none");
		$("#introJeonnam").css("display", "none");
		$("#introGyeongbuk").css("display", "none");
		$("#introGyeongnam").css("display", "none");
		$("#introForest_details #introForest_menu #introForest_ul li:first-child").addClass('on');
	}

</script>
	

</div>
<div id="introForest_details">
	<div id="introForest_menu">
		<ul id="introForest_ul">
			<li class="nav1"><a href="#null">전체 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav2"><a href="#null">서울/경기 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav3"><a href="#null">강원 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav4"><a href="#null">충북 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav5"><a href="#null">충남 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav6"><a href="#null">전북 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav7"><a href="#null">전남 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav8"><a href="#null">경북 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
			<li class="nav9"><a href="#null">경남 &nbsp;<img src="css/images/mainImages/active_small.png"></a></li>
		</ul>
		<div id="introForest_innerline"></div>
	</div>
		<div class="introForest_pic" id="introAllForest">
	<c:if test="${introAllForest.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introAllForest }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						
						<c:if test="${item.district.dSido=='서울/경기' }">
						<span id="sGyeonggi">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='강원' }">
						<span id="gangwon">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='충북' }">
						<span id="chungbuk">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='충남' }">
						<span id="chungnam">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='전북' }">
						<span id="jeonbuk">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='전남' }">
						<span id="jeonnam">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='경북' }">
						<span id="gyeongbuk">${item.district.dSido }</span>
					</c:if>
					<c:if test="${item.district.dSido=='경남' }">
						<span id="gyeongnam">${item.district.dSido }</span>
					</c:if>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introSGyeonggi">
	<c:if test="${introSGyeonggi.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introSGyeonggi }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introGangwon">
	<c:if test="${introGangwon.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introGangwon }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introChungbuk">
	<c:if test="${introChungbuk.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introChungbuk }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introChungnam">
	<c:if test="${introChungnam.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introChungnam }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div> 
	<div class="introForest_pic" id="introJeonbuk">
	<c:if test="${introJeonbuk.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introJeonbuk }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introJeonnam">
	<c:if test="${introJeonnam.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introJeonnam }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introGyeongbuk">
	<c:if test="${introGyeongbuk.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introGyeongbuk }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>
	<div class="introForest_pic" id="introGyeongnam">
	<c:if test="${introGyeongnam.size() > 0 }">
		<ul class="introForest_pic_ul">
		<c:forEach var="item" items="${introGyeongnam }">
			<li>
				<div class="intro_container"> 
					<div class="intro_top">
						<img src="css/images/mainImages/${item.forPic }">
						<span>${item.district.dSido }</span>
					</div>
					<div class="intro_bottom">
						<dl>
							<dt>${item.forName }</dt>
							<dd>${item.forPost }</dd>
							<dd>이용문의:${item.forPhone }</dd>
						</dl>
						<span><a href="${item.forHomepage }"><img src="css/images/mainImages/home_intro.png"></a></span>
					</div>
				</div>
			</li>
			</c:forEach>
			
		</ul>
		</c:if>
	</div>                                
</div>
<jsp:include page="footer.jsp" />
</body>
</html>

