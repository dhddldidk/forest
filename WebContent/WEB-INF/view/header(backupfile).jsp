<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/common.css">
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	$(function() {
		$("#main_menu>ul .gnb").mouseover(function() {
			/* $(".sub_menu").css("display", "block");
			$(".nav_sub_bg").css("display", "block");
			$(this).find("li:first-child").css("display", "block"); */
		})
		$("#main_menu ul .gnb").mouseout(function() {
			/* $(".nav_sub_bg").css("display", "none");
			$(".sub_menu").css("display", "none");
			$(".sub_menu li:first-child").css("display", "none"); */
		})
	})
</script>
<header>
	<!-- topmenu -->

	<div class="top_menu">
		<div class="top_menu_wrap">
			<ul>
				<c:if test="${id ==null }">
					<li><a href="loginLogin.do">로그인</a></li>
				</c:if>
				<c:if test="${id !=null }">
					<li><a href="logout.do">로그아웃</a></li>
				</c:if>
				<c:if test="${id ==null }">
					<li><a href="login.do">회원가입</a></li>
				</c:if>
				<c:if test="${id !=null }">
					<li><a href="basket.do">마이페이지</a></li>
				</c:if>
				<li><a href="#" target="_blank">ENGLISH</a></li>
			</ul>
		</div>
	</div>
	<!-- //topmenu -->

	<!-- nav 메인메뉴(pc) -->
	
	<div class="nav_line_wrap">
		<!--  메인메뉴 펼침 bg -->
		<div class="nav_sub_bg"></div>
		<!-- // 메인메뉴 펼침 bg -->
		<div class="nav_wrap" id="nav_wrap">
			<!-- nav logo -->
			<h1>
				<a href="index.jsp"><span class="blind">국립자연휴양림관리소 로고</span></a>
			</h1>

			<div class="mtree_bg"></div>
			<!-- nav list -->
			<nav id="main_menu">
				<ul>
					<li class="gnb"><a href="#"><span>예약</span></a>
						<ul class="sub_menu sub_m_1">
							<li><span class="slogan">숲과 함께하는 즐거움</span> <strong
								class="title">예약</strong></li>
							<li><a href="reservation.do">선착순 예약</a></li>
							<li><a href="#">월별예약현황</a></li>
							<li><a href="#">주말추첨제 신청</a></li>
							<li><a href="#">장애인 우선 예약</a></li>
							<li><a href="#">아세안 자연휴양림 우선 예약</a></li>
							<li><a href="#">산림복지바우처 우선 예약</a></li>
						</ul></li>
					<li class="gnb"><a href="#"><span>안내</span></a>
						<ul class="sub_menu sub_m_2">
							<li><span class="slogan">숲과 함께하는 즐거움</span> <strong
								class="title">안내</strong></li>
							<li><a href="#">관리소 안내</a></li>
							<li><a href="#">휴양림 소식</a></li>
							<li><a href="#">예약 및 이용 안내</a></li>
							<li><a href="#">고객센터</a></li>
						</ul></li>
					<li class="gnb"><a href="#"><span>즐기기</span></a>
						<ul class="sub_menu sub_m_3">
							<li><span class="slogan">숲과 함께하는 즐거움</span> <strong
								class="title">즐기기</strong></li>
							<li><a href="#">산림 문화 교육 안내</a></li>
							<li><a href="#">이용 및 체험 후기</a></li>
							<li><a href="#">이벤트</a></li>
							<li><a href="#">휴양림별 안내</a></li>
							<li><a href="#">추천 자연 휴양림</a></li>
							<li><a href="#">내게 맞는 휴양림 찾기</a></li>
						</ul></li>
					<li class="gnb"><a href="#"><span>휴양 행정</span></a>
						<ul class="sub_menu sub_m_4">
							<li><span class="slogan">숲과 함께하는 즐거움</span> <strong
								class="title">휴양 행정</strong></li>
							<li><a href="#">휴양 행정</a></li>
							<li><a href="#">빅데이터</a></li>
						</ul></li>
				</ul>
			</nav>
			<!-- //nav list -->
		</div>
		<!-- //nav wrap -->
	</div>
	<!-- //nav 메인메뉴 (pc) -->
</header>
