<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	#side{
		width: 220px;
		float: left;
	}
	#side>#side_h2{
		padding: 33px 0 19px 15px;
   		height: 23px;
   		border: 1px solid #fff;
   		
	}
	#side_h2>h2{
		color:#2d905b;
		font-size: 24px;
		font-weight: 600;
	}
	/* ul길이 */
	#wrap{
		border-top: 2px solid #2d905b;
  	 	font-weight: 600;
  	 	border-left: 1px solid #ccc;
  	 	border-right: 1px solid #ccc; 
  	 	height: 1500px; 
	}
	#intro_div1{
		width: 100%;
		height: 320px;
		border-bottom: 1px solid #ccc;
	}
	#intro_sub{
		width: 100%;
		height: 260px;
		border-bottom: 1px solid #ccc;
	}
	#intro_sub1{
		width: 100%;
		height: 85px;
		border-bottom: 1px solid #ccc;
	}
	#intro_sub2{
		width: 100%;
		height: 65px;
		border-bottom: 1px solid #ccc;
	}
	#intro_sub3{
		width: 100%;
		height: 190px;
		border-bottom: 1px solid #ccc;
	}
	
	.intro_menu{
		display:inline-block;
		width: 50%;
		height: 48px;
		line-height: 48px;
		font-size: 15px;
		margin-left: 10px;
		font-weight: 600;
	}
	.intro_sub1>ul{
		width: 70%;
		margin: 10px auto;
	}
	
	
	.intro_sub1>ul>li{
		list-style-image:url("/forest/css/images/intro/intro_dot.png");
		line-height:25px;
		font-size: 13px;
		font-weight: bold;
	}
	.intro_divsub{
		width: 100%;
		height: 48px;
		overflow: hidden;
		border-bottom: 1px solid #ccc;
	}
	.intro_divsub:HOVER{
		cursor: pointer;
	}
	.intro_span{
		float:right;
		width: 10%;
		height: 20px;
		margin-top: 15px;
		margin-right: 15px;
	}

	#intro_div5{
		margin: 5px;
	}
	#intro_sub, #intro_sub1, #intro_sub2, #intro_sub3{
		display: none;
	} 
	.intro_sub1>ul>li:HOVER {
		list-style-image:url("/forest/css/images/intro/intro_list.png");
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		/* var index="";
		$(".intro_divsub").click(function(){
			$(".intro_divsub").eq(index).closest("div").css("color"," black");
			$(this).closest("div").css("color"," #2d905b");
			var imgpath = $(this).find("img").attr("src");
			if(imgpath == "/forest/css/images/intro/intro_p.png"){

				$(this).find("img").attr("src","/forest/css/images/intro/intro_m.png");
			}else{
				$(this).find("img").attr("src","/forest/css/images/intro/intro_p.png");
			}
			
			if(index != $(".intro_divsub").index(this)){
				$(".intro_divsub").eq(index).find("img").attr("src","/forest/css/images/intro/intro_p.png");
				$(".intro_divsub").eq(index).next().slideUp(400);
			}
	
			$(this).next().slideToggle(400);
			index = $(".intro_divsub").index(this);
		}) */
	})
</script>
</head>
<body>
	<div id="side">
		<div id="side_h2"><h2>안내</h2></div>
	
		<div id="wrap">
			<!-- <div class="intro_divsub">
			<span class="intro_menu">관리소 안내</span>
			<span class="intro_span"><img src="/forest/css/images/intro/intro_p.png"></span>
			</div>
			<div id="intro_sub" class="intro_sub1">
				<ul>
					<li><a href="#">인사말</a></li>
					<li><a href="#">설립목적 및 운영방법</a></li>
					<li><a href="#">업무내용</a></li>
					<li><a href="#">책임운영기관 제도 소개</a></li>
					<li><a href="#">조직도</a></li>
					<li><a href="#">직원찾기</a></li>
					<li><a href="#">자연휴양림CI</a></li>
					<li><a href="#">행정서비스헌장</a></li>
					<li><a href="#">행정정보공개</a></li>
					<li><a href="#">오시는길</a></li>
				</ul>
			</div> -->
		
			<!-- <div class="intro_divsub">
			<span class="intro_menu">휴양림 소식</span>
			<span class="intro_span"><img src="/forest/css/images/intro/intro_p.png"></span>
			</div>
			<div id="intro_sub1" class="intro_sub1">
				<ul>
					<li><a href="#">이달의 꽃</a></li>
					<li><a href="#">알림판</a></li>
					<li><a href="#">소식</a></li>
				</ul>
			</div> -->
		
			<div class="intro_divsub">
			<span class="intro_menu"><a href="noticeBoard.do" id="intro_notice">공지사항</a></span>
			<span class="intro_span"><img src="/forest/css/images/intro/intro_p.png"></span>
			</div>
			<div id="intro_sub2" class="intro_sub1">
				<ul>
					<li><a href="#">예약 안내</a></li>
					<li><a href="#">이용요금</a></li>
				</ul>
			</div>


			<div class="intro_divsub">
			<span class="intro_menu"><a href="qaBoard.do" id="intro_qa">질문과 답변</a></span>
			<span class="intro_span"><img src="/forest/css/images/intro/intro_p.png"></span>
			</div>
			<div  id="intro_sub3" class="intro_sub1">
				<ul>
					<li><a href="noticeBoard.do">공지사항</a></li>
					<li><a href="#">휴양민원</a></li>
					<li><a href="#">고시/공고</a></li>
					<li><a href="#">자주하는 질문</a></li>
					<li><a href="#">질문과 답변</a></li>
					<li><a href="#">자유게시판</a></li>
					<li><a href="#">설문조사</a></li>
				</ul>
			</div>
		
		<div id="intro_div5">
		<a href="#"><img src="/forest/css/images/login/sideimg.PNG"></a>
		
		</div>
		<!-- wrap -->
		</div>
		
		<!-- side -->
	</div>
</body>
</html>