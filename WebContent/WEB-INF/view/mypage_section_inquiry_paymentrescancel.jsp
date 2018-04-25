<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소 - DGIT휴양림관리소로 - "여러분을 국립자연휴양림으로 초대합니다."</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	*{
		padding:0;
		margin:0;
	}
	#section_jsp{
		width:930px;
		/* height:789px; */		
		padding:20px 20px 80px 20px;
		   
	}
	#section_jsp p{
		color:#333;
		font-weight: bold;
		font-size:30px;		
		padding-top:18px;
		padding-bottom:15px;
		border-bottom:1px solid #e3e3e3;
		    
	}
	
	
	
	#rescancel_section{		
		padding-left:590px;	
		width:950px;
		height:789px;
	}
	
	
	
	  
	
	
	
	#mypage_section_text ul li{
		font-size: 12px;
		padding-bottom: 8px;
	}
	
	#payment_title_text1{
		margin-top:30px;
	}
	#payment_title_text1 span{
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
		margin-top:20px;
		text-align:right;
	}
	    
	#payment_title_text1_section ul{	
		height:22px;  
		display: inline-block;
	}
	#payment_title_text1_section ul li{
		float:left;
		font-size: 13px;
	}
	#payment_title_text1_section ul li#li1{		
	}
	#payment_title_text1_section ul li#li2{
		padding-left:5px;
		color:#209159;
	}
	
	
	
	
	
	
	#payment_title_main1{
		height:198px;
		margin-bottom:30px;
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
		font-size:16px;
	}
	#payment_title_main1 ul li#li ul li#li_ul1_li2{
		margin-left:5px;
		font-weight: bold; 
		font-size:16px;
	}
	
		/* margin-left:10px;   
		font-weight: bold;  */
	
	#payment_title_main1 ul li#li ul li#li_ul2_li2 a{ 
		display: block;
		width:150px;
		height:23px;
		padding-left:30px;
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
		color:#cb1d27;
	}  
	
	      
	
	#payment_button{
		text-align: right;
		margin-top:30px; 
		margin-right:5px;
	}  
	#payment_button #payment_button_total{
		height:45px;  
		display: inline-block;
		line-height: 50px;
	}
	#payment_button #payment_button_total input{
		padding: 8px 14px;
		border:1px solid #2d905b;
		background:#2d905b;
		color:#fff;
	}
	
	
</style>
</head>
<body>
	<% pageContext.include("header.jsp"); %>
	<% pageContext.include("mypage_aside.jsp"); %>			
	<form action="paymentcancel.do" method="post">
	<input type="hidden" name="u_id" value="${list.u_id }">  
	<input type="hidden" name="res_no" value="${list.res_no }">
	<section id="rescancel_section">
	<div id="section_jsp">
		<p>예약취소</p>
		<div id="payment_title_text1">			
			<span></span>
			<h4>현재 예약내역</h4>
		</div>
		<div id="payment_title_text1_section">
			<ul>
				<li id="li1">최초취소일:</li>
				<li id="li2"><%= sf.format(nowTime) %></li>				
			</ul>
		</div>
		<div id="payment_title_main1">
			<ul>
				<li id="li">
					<ul id="ul1">
						<li id="li_ul1_li1">[${list.res_no }]</li>
						<li id="li_ul1_li2">${list.res_forname }</li>
					</ul>
					<ul id="ul2">
						<li id="li_ul2_li1" class="li_ul2_li">방정보 </li>
						<li id="li_ul2_li2" class="li_ul2_li">
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
						<li id="li_ul2_li3" class="li_ul2_li">|</li>
						<li id="li_ul2_li4" class="li_ul2_li">숙박일</li>
						<li id="li_ul2_li5" class="li_ul2_li"><fmt:formatDate value="${list.res_startdate }" type="date" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${list.res_enddate }" type="date" pattern="yyyy-MM-dd"/></li>
					</ul>
					<ul  id="ul3">
						<li id="li_ul3_li1" class="li_ul3_li"><img src="css/images/mypage/text_indent_img_gray.png">이용금액 </li>
						<li id="li_ul3_li2" class="li_ul3_li"><fmt:formatNumber value="${list.res_fprice }" type="number"/>원</li>
						<li id="li_ul3_li3" class="li_ul3_li">|</li>	
						<li id="li_ul3_li4" class="li_ul3_li">예약상태</li>
						<li id="li_ul3_li5" class="li_ul3_li">예약취소 진행중</li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="mypage_section_text">
			<ul>			
				<li>ㆍ예약취소 버튼을 한번더 클릭하셔야 예약취소가 완료 됩니다.</li>
				<li>ㆍ취소 후 마이페이지에서 취소내역을 확인할 수 있습니다.</li>
			</ul>
		</div>
		<div id="payment_button">
			<div id="payment_button_total">
				<input type="submit" value="예약취소">
			</div>
		</div>
	</div>
	</section>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>