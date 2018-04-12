<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	*{
		padding:0;
		margin:0;
	}
	#section_jsp{
		width:930px;
		/* height:789px; */
		padding-left:20px;
		padding-right:20px;
		padding-top:20px;
		padding-bottom:50px;
		
	}
	#section_jsp p{
		color:#333;
		font-weight: bold;
		font-size:30px;		
		padding-top:3px;
		padding-bottom:15px;
		border-bottom:1px solid #e3e3e3;
		    
	}
	  
	 
	
	
	section{		
		padding-left:590px;	
		width:950px;
		height:789px;
	}
	
	
	
	
	
	
	
	#section_jsp_menu1{
		margin-top:35px;
		 
	}
	#section_jsp_menu1 ul{
		overflow:hidden;
		background: #606e89;
		
	}
	#section_jsp_menu1>ul li{
		width: 14.28%;
		height:44px;
		list-style: none;
		float:left;
		color:#fff;
		text-align: center;
		line-height: 44px;		  
	}
	.section_jsp_menu1_text a{
		color:#bfc5d0;		
		font-size:15px;	
		display:block;
		height:44px;
	}
	  
	
	#section_jsp_menu1_text1{
	 	background: #525f78;
	}
	#section_jsp_menu1_text1 a{
		 color:#fff;
	}
	
	
	
	#section_jsp_menu2{
		
	}
	#section_jsp_menu2 ul{
		overflow:hidden;
		background: #f7f7f7;
		padding:15px;
	}
	#section_jsp_menu2>ul li{
		list-style: none;	
		float:left;	
		background: white;
		width:65px;  
		height:25px;
		text-align: center;
		line-height: 25px; 
	    margin-left:3px;	    
	    
	}
	#section_jsp_menu2_text2{
		border:1px solid #209159;
	}
	.section_jsp_menu2_text{
		border:1px solid #e3e3e3;
	}
	.section_jsp_menu2_text a{
		font-size:13px;
	}
	   
	
	
	#section_jsp_num{
		color:#333;
		margin-top:35px;
		font-size:13px;
	}
	#basket_list{
		padding-top:20px;
		
	}
	
	
	/* ------------------------------------- */
	#basket_list ul#basket_list_ul{
		margin-bottom:50px;
	}
	
	  
	
	
	
	
	  
	#basket_list_count{
		margin-top:40px;
	}
	#basket_list_count ul{
		text-align: center;
	}
	
	#basket_list_count ul li{
		display:inline-block;
		width:30px;
		height:30px;
		border:1px solid #656873;
		line-height: 30px;
		background: #606e89;
	}
	#basket_list_count ul li a{
		color:#fff;
		display:block;
		height:30px;			
	}
	
	  
	  
	#mypage_section_text{
		margin-top:50px;
	}
	
	#mypage_section_text ul li{
		font-size: 12px;
		padding-bottom: 8px;
	}
	
	#mypage_bottom_imglist{
		margin-top:50px;	
		
	}
	#mypage_bottom_imglist ul{
		height:90px;
		margin-left:5px;
		background: #f7f7f7;
		
	}
	
	#mypage_bottom_imglist ul li{
		float:left;
		width: 15.5%;
		height:44px;
		border:1px solid #e3e3e3;
		padding-left:8px;
		
	}
	   
	#mypage_bottom_imglist ul li span{
		display: block;  
		line-height: 44px;
		font-size: 13px;
		
	}
	#mypage_bottom_imglist ul li img{
		padding-top:10px;
		padding-right:5px;
		float:left;
	}
	
	
	
	
	
	
	
	   
	#basket_list{
		
	}

  
	#basket_list ul li#li{
		border:1px solid #8b8b8b;
		height:198px; 
	}
	
	#basket_list ul li#li ul#ul1{
		height:25px;
		padding-left:25px;
		padding-top:25px;
		padding-bottom:25px;
		border-bottom:1px solid #e3e3e3
		  
	}	
	#basket_list ul li#li ul li{
		float:left;
		color:#333;  		
	}	
	#basket_list ul li#li ul li span{
		float:left;
	}
	  
	#basket_list ul li#li ul li a{
		padding-left:5px;
	}  
	
	
	
	
	#basket_list ul li#li ul li#li_ul1_li1{
			
	}
	#basket_list ul li#li ul li#li_ul1_li1 a{
		color:#a67533;
		font-weight: bold; 
	}
	#basket_list ul li#li ul li#li_ul1_li2{
		margin-left:5px;
		font-weight: bold; 
	}	
	
	#basket_list ul li#li ul li#li_ul1_li2{
		margin-left:15px;
	}
	
	
	
	#basket_list ul li#li ul li#li_ul2_li2 a{ 
		display: block;
		width:150px;
		height:23px;
		padding-left:30px;
	}  
	  
	    
	  
	#basket_list ul li#li ul#ul2{
		height:20px;
		padding-left:20px;
		padding-top:20px;
		padding-bottom:20px;
		border-bottom:1px solid #e3e3e3;
		line-height: 20px;
	}	
	
	#basket_list ul li#li ul li.li_ul2_li{
		font-size:14px;
	}
	
	#basket_list ul li#li ul li#li_ul2_li1{
		font-weight: bold;
	}
	#basket_list ul li#li ul li#li_ul2_li2{
		margin-left:10px;
	}

	#basket_list ul li#li ul li#li_ul2_li3{
		margin-left:15px;
		margin-right:15px;
		color: #e3e3e3;  
	}
	#basket_list ul li#li ul li#li_ul2_li4{
		font-weight: bold;
		margin-right:15px;
	}	
	#basket_list ul li#li ul li#li_ul2_li5{
		
	}  
	#basket_list ul li#li ul li#li_ul2_li6{
		margin-left:15px;
		margin-right:15px;
		color: #e3e3e3;  
	}   
	#basket_list ul li#li ul li#li_ul2_li7{
		font-weight: bold;
		margin-right:15px;
	}  
	#basket_list ul li#li ul li#li_ul2_li9{
		margin-left:15px;
		margin-right:15px;
		color: #e3e3e3;  
	}    
	#basket_list ul li#li ul li#li_ul2_li10{
		font-weight: bold;
		margin-right:15px;
	}  
		
	
	
	
	#basket_list ul li#li ul#ul3{
		height:20px;
		padding-left:20px;
		padding-top:20px;
		padding-bottom:20px;
		border-bottom:1px solid #e3e3e3;
		line-height: 20px;
		background: #f7f7f7;
	}	
	#basket_list ul li#li ul li.li_ul3_li{
		font-size:14px;
	}
	
	#basket_list ul li#li ul li#li_ul3_li1{
		font-weight: bold;
	}
	#basket_list ul li#li ul li#li_ul3_li1 img{
		padding-right:5px;	
	}
	#basket_list ul li#li ul li#li_ul3_li2{
		margin-left:15px;
	}
	
	         
       
	#basket_list ul li#li ul li#li_ul3_li3{
		font-weight: bold;
		background: #cb1d27;
		border:1px solid #cb1d27;
		width:95px;
		height:30px;  
		margin-right:5px;
		margin-left:570px;
	}	
	#basket_list ul li#li ul li#li_ul3_li3 a{
		width:65px;
		height:20px;
		padding:4px 15px 6px 15px;
		text-align: center;	
		color:#fff;
		display:inline-block;
		
	}
	#basket_list ul li#li ul li#li_ul3_li4{
		font-weight: bold;
		background: #848894;
		border:1px solid #656873;
		width:95px;
		height:30px;  
	}
	#basket_list ul li#li ul li#li_ul3_li4 a{
		width:65px;
		height:20px;
		padding:4px 15px 6px 15px;
		text-align: center;	
		color:#fff;
		display:inline-block;	
	}
	
	
	
	
	
	
	
</style>
</head>
<body>	
	<% pageContext.include("header.jsp"); %>	
	<% pageContext.include("mypage_aside.jsp"); %>	
	<form action="basket.do" method="post">
	<section>
	<div id="section_jsp">
		<p>장바구니</p>
		<div id="section_jsp_menu1">
			<ul>
				<li id="section_jsp_menu1_text1" class="section_jsp_menu1_text"><a href="basket.do">장바구니</a></li>
				<li id="section_jsp_menu1_text2" class="section_jsp_menu1_text"><a href="payment.do">결제 내역</a></li>
				<li id="section_jsp_menu1_text3" class="section_jsp_menu1_text"><a href="#">대기 내역</a></li>
				<li id="section_jsp_menu1_text4" class="section_jsp_menu1_text"><a href="cancel.do">취소 내역</a></li>
				<li id="section_jsp_menu1_text5" class="section_jsp_menu1_text"><a href="use.do">이용 내역</a></li>
				<li id="section_jsp_menu1_text6" class="section_jsp_menu1_text"><a href="#">벌점 내역</a></li>
				<li id="section_jsp_menu1_text7" class="section_jsp_menu1_text"><a href="#">추첨신청 내역</a></li>
			</ul>		
		</div>
		<div id="section_jsp_menu2">
			<ul>
				<li id="section_jsp_menu2_text1" class="section_jsp_menu2_text"><a>1개월</a></li>
				<li id="section_jsp_menu2_text2" class="section_jsp_menu2_text"><a>3개월</a></li>
				<li id="section_jsp_menu2_text3" class="section_jsp_menu2_text"><a>6개월</a></li>
				<li id="section_jsp_menu2_text4" class="section_jsp_menu2_text"><a>1년</a></li>	
				<li id="section_jsp_menu2_text5" class="section_jsp_menu2_text"><a>기간지정</a></li>				
			</ul>
		</div>
		<div id="section_jsp_num">
			<c:if test="${list.size() == 0 }">			
				총<b>0</b>건
			</c:if>
			<c:if test="${list.size() > 0 }">
				총<b>${list.size() }</b>건	
			</c:if>
		</div>
		<div id="basket_list">	
			<c:if test="${list.size() == 0 }">			
			</c:if>
			<c:if test="${list.size() > 0 }">
				<c:forEach var="item" items="${list }">
					<ul id="basket_list_ul">
						<li id="li">
							<ul id="ul1">
								<li id="li_ul1_li1"><a href="inquiry.do">[${item.res_no }]</a></li>
								<li id="li_ul1_li2">${item.res_forname }</li>
								<li id="li_ul1_li2" class="li_ul1_li"><span><img src="css/images/reservation/icon_soop.png"></span><a>소나무 (4인실)(23.0㎡)</a></li>
							</ul>
							<ul id="ul2">
								<li id="li_ul2_li1" class="li_ul2_li">숙박기간</li>
								<li id="li_ul2_li2" class="li_ul2_li"><fmt:formatDate value="${item.res_startdate }" type="date" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${item.res_enddate}" type="date" pattern="yyyy-MM-dd"/> 
									<c:if test="${item.res_stay == 1 }">
										(1박 2일)
									</c:if>
									<c:if test="${item.res_stay == 2 }">
										(2박 3일)
									</c:if>
									<c:if test="${item.res_stay == 3 }">
										(3박 4일)
									</c:if>
								</li>
								<li id="li_ul2_li3" class="li_ul2_li">|</li>
								<li id="li_ul2_li4" class="li_ul2_li">예약일자</li>
								<li id="li_ul2_li5" class="li_ul2_li"><fmt:formatDate value="${item.res_now }" type="date" pattern="yyyy-MM-dd"/></li>
								<li id="li_ul2_li6" class="li_ul2_li">|</li>
								<li id="li_ul2_li7" class="li_ul2_li">결제만기일</li>
								<li id="li_ul2_li8" class="li_ul2_li"><fmt:formatDate value="${item.res_paydate }" type="date" pattern="yyyy-MM-dd HH:mm"/></li>
								<li id="li_ul2_li9" class="li_ul2_li">|</li>
								<li id="li_ul2_li10" class="li_ul2_li">상태</li>
								<li id="li_ul2_li11" class="li_ul2_li">예약</li>								
							</ul>
							<ul  id="ul3">
								<li id="li_ul3_li1" class="li_ul3_li"><img src="css/images/mypage/text_indent_img_gray.png">이용금액 </li>
								<li id="li_ul3_li2" class="li_ul3_li">${item.res_price }원</li>	
								<li id="li_ul3_li3" class="li_ul3_li"><a href="reservepayment.do">결제하기</a></li>
								<li id="li_ul3_li4" class="li_ul3_li"><a href="rescancel.do">예약취소</a></li>
							</ul>
						</li>
					</ul>
				</c:forEach>
			</c:if>		
			<!-- <ul>
				<li id="li">
					<ul id="ul1">
						<li id="li_ul1_li1">[019618041022644]</li>
						<li id="li_ul1_li2">천관산(장흥)</li>
						<li id="li_ul1_li2" class="li_ul1_li"><span><img src="css/images/reservation/icon_soop.png"></span><a>소나무 (4인실)(23.0㎡)</a></li>
					</ul>
					<ul id="ul2">
						<li id="li_ul2_li1" class="li_ul2_li">숙박기간</li>
						<li id="li_ul2_li2" class="li_ul2_li">2018-05-09 ~ 2018-05-10 ( 1박 2일)</li>
						<li id="li_ul2_li3" class="li_ul2_li">|</li>
						<li id="li_ul2_li4" class="li_ul2_li">예약일자</li>
						<li id="li_ul2_li5" class="li_ul2_li">2018-04-11</li>
						<li id="li_ul2_li6" class="li_ul2_li">|</li>
						<li id="li_ul2_li7" class="li_ul2_li">결제만기일</li>
						<li id="li_ul2_li8" class="li_ul2_li">2018-04-12 23:00</li>
						<li id="li_ul2_li9" class="li_ul2_li">|</li>
						<li id="li_ul2_li10" class="li_ul2_li">상태</li>
						<li id="li_ul2_li11" class="li_ul2_li">예약</li>
					</ul>
					<ul  id="ul3">
						<li id="li_ul3_li1" class="li_ul3_li"><img src="css/images/mypage/text_indent_img_gray.png">이용금액 </li>
						<li id="li_ul3_li2" class="li_ul3_li">0원</li>	
						<li id="li_ul3_li3" class="li_ul3_li"><a>결제하기</a></li>
						<li id="li_ul3_li4" class="li_ul3_li"><a>예약취소</a></li>
					</ul>
				</li>
			</ul> -->
		</div>
		<div id="basket_list_count">
			<ul>
				<li><a href="#">1</a></li>				
			</ul>
		</div>
		<div id="mypage_section_text">
			<ul>			
				<li>ㆍ예약 번호를 클릭하면 상세정보를 확인할 수 있습니다.</li>
				<li>ㆍ가상 계좌 결제 시 입금 계좌 번호를 확인할 경우 예약 번호를 클릭하여 상세 내역을 조회하시기 바랍니다.</li>
				<li>ㆍ부분 취소 방법: 결제 취소(예약 취소)를 클릭하여 날짜 선택 후 부분 취소를 하시기 바랍니다.</li>
			</ul>
		</div>
		<div id="mypage_bottom_imglist">
			<ul>
				<li><img src="css/images/reservation/icon_soop.png"><span>숲속의집</span></li>
				<li><img src="css/images/reservation/icon_hue.png"><span>휴양관</span></li>
				<li><img src="css/images/reservation/icon_yeon.png"><span>연립동</span></li>
				<li><img src="css/images/reservation/icon_sue.png"><span>숲속수련장</span></li>
				<li><img src="css/images/reservation/icon_deck.png"><span>데크</span></li>
				<li><img src="css/images/reservation/icon_hwang.png"><span>황토온돌데크</span></li>
				<li><img src="css/images/reservation/icon_oh.png"><span>오토캠핑장</span></li>
				<li><img src="css/images/reservation/icon_camp.png"><span>캠핑카야영장</span></li>
				<li><img src="css/images/reservation/icon_cabin.png"><span>캐빈</span></li>
				<li><img src="css/images/reservation/icon_noh.png"><span>노지야영장</span></li>
			</ul>		
		</div>		
	</div>
	</section>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>