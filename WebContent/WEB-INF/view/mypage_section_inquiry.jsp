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
		padding:20px 20px 70px 20px;
		
	}
	#section_jsp p{
		color:#333;
		font-weight: bold;
		font-size:30px;		
		padding-top:18px;
		padding-bottom:15px; 		
		border-bottom:1px solid #e3e3e3;
		    
	}
	
	
	
	
	#inquiry_section{		
		padding-left:590px;	
		width:950px;
		
	}
	
	
	
	
	
	
	
	#mypage_section_text{
		margin-top:45px;		
	}
	#mypage_section_text ul li{
		font-size: 12px;
		padding-bottom: 8px;
	}
	#mypage_section_text ul li span.font{
		color:#2d905b;
	}
	
	
	#payment_title_text1{
		margin-top:30px;
	}
	#Payment_title_text1 span{
		display:inline-block;
		width:47px;
		height:2px;
		border-bottom:2px solid #209159;
	}
	#payment_title_text1 h4{
		font-weight: bold;
		font-size: 19px;
	}
	
	#payment_title_text1_section{
		height:40px;
		margin-top:25px;
		border-top:2px solid #787b86;
		border-bottom:1px solid #e3e3e3;
		line-height: 40px;
	}
	#payment_title_text1_section ul{
		
	}
	#payment_title_text1_section ul li{
		float:left;
		font-size: 13px;
	}
	#payment_title_text1_section ul li#li1{
		width:145px;
		background:#f7f7f7;		
		padding-left:10px;
	}
	#payment_title_text1_section ul li#li2{
		width:300px;
		padding-left:10px;
	}
	#payment_title_text1_section ul li#li3{
		width:145px;
		background:#f7f7f7;
		padding-left:10px;
	}
	#payment_title_text1_section ul li#li4{
		width:300px;
		padding-left:10px;
	} 
    
    
    
      
    
    
    #payment_title_text2{
		margin-top:30px;
	}
	#payment_title_text2 span{
		display:inline-block;
		width:47px;
		height:2px;
		border-bottom:2px solid #209159;
	}
	#payment_title_text2 h4{
		font-weight: bold;
		font-size: 19px;
	}
	#payment_title_text2_section{
		margin-top:25px;		
	}
	/* #payment_title_text2_section ul li{
		float:left;
	} */
	#payment_title_text2_section_div1{
		height:22px;
		text-align: right;
	}
	#payment_title_text2_section_div1 ul{	
		height:22px;
		display: inline-block;
	}
	#payment_title_text2_section_div1 ul li{
		float:left;
		font-size: 13px;
	}
	#payment_title_text2_section_div1 ul li#li1{		
	}
	#payment_title_text2_section_div1 ul li#li2{
		padding-left:5px;
		padding-right:10px;
	}	
	#payment_title_text2_section_div1 ul li.border{
		color: #e3e3e3;
	}
	#payment_title_text2_section_div1 ul li#li3{
		padding-left:10px;
		padding-right:5px;
	}
	#payment_title_text2_section_div1 ul li#li4{	
	}
	#payment_title_text2_section_div1 ul li span.font{
		color:#2d905b;
		  
	}
	
	
	
	#payment_button{
		text-align: right;
		margin-top:30px; 
	}
	#payment_button #payment_button_total{
		width:300px;
		height:50px;  
		display: inline-block;
		line-height: 50px;
	}
	#payment_button #payment_button_total a#a1{
		padding: 8px 14px;
		border:1px solid #af131c;
		background:#af131c;
		color:#fff;
	}
	#payment_button #payment_button_total a#a2{
		padding: 8px 14px;
		border:1px solid #2d905b;
		background:#2d905b;
		color:#fff;
	
	}
	#payment_button #payment_button_total a#a3{
		padding: 8px 14px;
		border:1px solid #848894;
		background:#848894;
		color:#fff;
		 
	}
	
	
	
	
	#payment_title_main1{
		height:198px;
	}


  
	#payment_title_main1 ul li#li{
		border:1px solid #8b8b8b;
		height:198px; 
	}
	
	#payment_title_main1 ul li#li ul#ul1{
		height:25px;
		padding-left:25px;
		padding-top:25px;
		padding-bottom:25px;
		border-bottom:1px solid #e3e3e3
		  
	}	
	#payment_title_main1 ul li#li ul li{
		float:left;
		color:#333;  		
	}	
	#payment_title_main1 ul li#li ul li span{
		float:left;
	}
	  
	#payment_title_main1 ul li#li ul li a{
		
	}  
	
	
	
	  
	#payment_title_main1 ul li#li ul li#li_ul1_li1{
		color:#a67533;
		font-weight: bold; 
		font-size: 16px;
	}
	#payment_title_main1 ul li#li ul li#li_ul1_li2{
		margin-left:5px;
		font-weight: bold; 
		font-size: 16px;
	}
	#payment_title_main1 ul li#li ul li#li_ul1_li3{
		margin-left:10px;   
		font-weight: bold; 
	}
	#payment_title_main1 ul li#li ul li#li_ul1_li3 a{ 
		display: block;
		width:280px;
		height:23px;
		padding-left:30px;
		font-size: 16px;
	}  
	  
	  
	  
	#payment_title_main1 ul li#li ul#ul2{
		height:20px;
		padding-left:20px;
		padding-top:20px;
		padding-bottom:20px;
		border-bottom:1px solid #e3e3e3;
		line-height: 20px;
	}	
	
	#payment_title_main1 ul li#li ul li.li_ul2_li{
		font-size:14px;
	}
	
	#payment_title_main1 ul li#li ul li#li_ul2_li1{
		font-weight: bold;
	}
	#payment_title_main1 ul li#li ul li#li_ul2_li2{
		margin-left:15px;
	}
	#payment_title_main1 ul li#li ul li#li_ul2_li3{
		margin-left:15px;
		margin-right:15px;
		color: #e3e3e3;  
	}
	#payment_title_main1 ul li#li ul li#li_ul2_li4{
		font-weight: bold;
		margin-right:15px;
	}	
	#payment_title_main1 ul li#li ul li#li_ul2_li5{
	
	}  
	
	
	
	
	#payment_title_main1 ul li#li ul#ul3{
		height:20px;
		padding-left:20px;
		padding-top:20px;
		padding-bottom:20px;
		border-bottom:1px solid #e3e3e3;
		line-height: 20px;
		background: #f7f7f7;
	}	
	#payment_title_main1 ul li#li ul li.li_ul3_li{
		font-size:14px;
	}
	
	#payment_title_main1 ul li#li ul li#li_ul3_li1{
		font-weight: bold;
	}
	#payment_title_main1 ul li#li ul li#li_ul3_li1 img{
		padding-right:5px;	
	}
	#payment_title_main1 ul li#li ul li#li_ul3_li2{
		margin-left:15px;
	}
	#payment_title_main1 ul li#li ul li#li_ul3_li3{
		margin-left:15px;
		margin-right:15px;
		color: #e3e3e3;  
	}
	#payment_title_main1 ul li#li ul li#li_ul3_li4{
		font-weight: bold;
		margin-right:15px;
	}	
	#payment_title_main1 ul li#li ul li#li_ul3_li5{
		color:#2d905b;
	}  
	
	
	
	#payment_title_text3{
		margin-top:30px;
	}
	#payment_title_text3 span{
		display:inline-block;
		width:47px;
		height:2px;
		border-bottom:2px solid #209159;
	}
	#payment_title_text3 h4{
		font-weight: bold;
		font-size: 19px;
	}
	
	#payment_title_text3_section{
		height:40px;
		margin-top:25px;
		border-top:2px solid #787b86;
		border-bottom:1px solid #e3e3e3;
		line-height: 40px;
	}
	#payment_title_text3_section ul{
		
	}
	#payment_title_text3_section ul li{
		float:left;
		font-size: 13px;
	}
	#payment_title_text3_section ul li#li1{
		width:145px;
		background:#f7f7f7;		
		padding-left:10px;
	}
	
	#payment_title_text3_section ul li#li2{
		width:300px;
		padding-left:10px;
	}
	#payment_title_text3_section ul li#li3{
		width:145px;
		background:#f7f7f7;
		padding-left:10px;
	}
	#payment_title_text3_section ul li#li4{
		width:300px;
		padding-left:10px;
	} 
	       
</style>
</head>
<body>
	<% pageContext.include("header.jsp"); %>	
	<% pageContext.include("mypage_aside.jsp"); %>	
	<form action="inquiry.do" method="post">
	<section id="inquiry_section">
	<div id="section_jsp">
		<p>예약조회</p>
		<div id="mypage_section_text">
			<ul>			
				<li>ㆍ국립자연휴양림관리소는 <span class="font">고객 매우 만족</span>을 위해 최선을 다하겠습니다.</li>
				<li>ㆍ결제만기일까지 <span class="font">결제를 하지 않으면</span> 예약신청이 <span class="font">자동으로 취소됩니다.</span></li>
				<li>ㆍ( 은행별로 가상계좌 <span class="font">입금마감시간이 상이</span>하니 확인 부탁드립니다. <a href="#">[마감시간 바로가기]</a> )</li>
			</ul>
		</div>
		<div id="payment_title_text1">			
			<span></span>
			<h4>결제정보</h4>
		</div>
		<div id="payment_title_text1_section">
			<ul>
				<li id="li1">결제만기일</li>
				<li id="li2"><span><fmt:formatDate value="${list.res_paydate }" type="date" pattern="yyyy-MM-dd"/></span> 23:00 까지</li>
				<li id="li3">결제금액</li>
				<li id="li4">[<span><fmt:formatNumber value="${list.res_fprice }" type="number"/></span> 원]</li>
			</ul>
		</div>
		<div id="payment_title_text2">			
			<span></span>
			<h4>예약 상세내역</h4>
		</div>
		<div id="payment_title_text2_section">
			<div id="payment_title_text2_section_div1">
				<ul>
					<li id="li1">휴양림:</li>
					<li id="li2"><span class="font">${list.res_forname }</span></li>
					<li class="border">|</li>
					<li id="li3">최초예약일:</li>
					<li id="li4"><span class="font"><fmt:formatDate value="${list.res_now }" type="date" pattern="yyyy년 MM월 dd일"/></span></li>
				</ul>
			</div>
			<div id="payment_title_main1">
				<ul>
					<li id="li">
						<ul id="ul1">
							<li id="li_ul1_li1">[${list.res_no }]</li>
							<li id="li_ul1_li2">${list.res_forname }</li>
							<li id="li_ul1_li3">
								<span>
									<c:if test="${room.fac_no == 1 }">
											<img src="css/images/reservation/icon_soop.png">
										</c:if>
										<c:if test="${room.fac_no == 2 }">			
											<img src="css/images/reservation/icon_hue.png">
										</c:if>
										<c:if test="${room.fac_no == 3 }">			
											<img src="css/images/reservation/icon_yeon.png">
										</c:if>
										<c:if test="${room.fac_no == 4 }">
											<img src="css/images/reservation/icon_sue.png">
										</c:if>
										<c:if test="${room.fac_no == 5 }">			
											<img src="css/images/reservation/icon_deck.png">
										</c:if>
										<c:if test="${room.fac_no == 6 }">			
											<img src="css/images/reservation/icon_oh.png">
										</c:if>
										<c:if test="${room.fac_no == 7 }">			
											<img src="css/images/reservation/icon_camp.png">
										</c:if>
										<c:if test="${room.fac_no == 8 }">			
											<img src="css/images/reservation/icon_cabin.png">
										</c:if>
										<c:if test="${room.fac_no == 9 }">			
											<img src="css/images/reservation/icon_noh.png">
										</c:if>	
								</span>
							<a>${room.r_name } (${room.r_pax }인실)</a>
							</li>
						</ul>
						<ul id="ul2">
							<li id="li_ul2_li1" class="li_ul2_li">숙박기간 </li>
							<li id="li_ul2_li2" class="li_ul2_li">
								<fmt:formatDate value="${list.res_startdate }" type="date" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${list.res_enddate}" type="date" pattern="yyyy-MM-dd"/> 
									<c:if test="${list.res_stay == 1 }">
										(1박 2일)
									</c:if>
									<c:if test="${list.res_stay == 2 }">
										(2박 3일)
									</c:if>
									<c:if test="${list.res_stay == 3 }">
										(3박 4일)
									</c:if>
							</li>
							<li id="li_ul2_li3" class="li_ul2_li">|</li>
							<li id="li_ul2_li4" class="li_ul2_li">일별이용금액</li>
							<li id="li_ul2_li5" class="li_ul2_li">
							<span>
								<c:if test="${list.res_stay == 1 }">
										1박: 
									</c:if>
									<c:if test="${list.res_stay == 2 }">
										2박: 
									</c:if>
									<c:if test="${list.res_stay == 3 }">
										3박: 
									</c:if> 
							</span>
							<span><fmt:formatNumber value="${list.res_fprice }" type="number"/> 원</span></li>
						</ul>
						<ul  id="ul3">
							<li id="li_ul3_li1" class="li_ul3_li"><img src="css/images/mypage/text_indent_img_gray.png">총이용금액 </li>
							<li id="li_ul3_li2" class="li_ul3_li"><fmt:formatNumber value="${list.res_fprice }" type="number"/>원</li>
							<li id="li_ul3_li3" class="li_ul3_li">|</li>
							<li id="li_ul3_li4" class="li_ul3_li">예약상태</li>
							<li id="li_ul3_li5" class="li_ul3_li">예약 <fmt:formatDate value="${list.res_now }" type="date" pattern="yyyy-MM-dd"/></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div id="payment_button">
			<div id="payment_button_total">
				<a href="rescancel.do?res_no=${list.res_no }&r_no=${list.r_no }" id="a1">예약취소</a>
				<a href="reservepayment.do?res_no=${list.res_no }&r_no=${list.r_no }" id="a2">결제하기</a>
				<a href="basket.do" id="a3">목록보기</a>
			</div>
		</div>
		<div id="payment_title_text3">			
			<span></span>
			<h4>결제 상세내역</h4>
		</div>
		<div id="payment_title_text3_section">
			<ul>
				<li id="li1">총결제금액</li>
				<li id="li2"><span>0</span> 원</li>
				<li id="li3">총이용금액</li>
				<li id="li4"><span>${list.res_price }</span> 원</li>
			</ul>
		</div>	
	</div>
	</section>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>