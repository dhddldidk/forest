<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");

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
	#mypage_reservepayment{
		width:1180px;
		margin:0 auto;
		height:880px;
		padding-left:20px;
		padding-right:20px;
		padding-top:20px;
	}
	#mypage_reservepayment>p{
		color:#333;
		font-weight: bold;
		font-size:30px;		
		padding-top:3px;
		padding-bottom:15px;
		border-bottom:1px solid #e3e3e3;
		    
	}
	    
	#reservepayment_div1{
		background: url(css/images/reservation/reserve_success_bg.png) no-repeat 95% top;
		margin-top:50px;
		height:175px;
	}
	#reservepayment_div1text h2{
		font-size:28px;
	}
	#reservepayment_div1text h2 span{
		color:#2d905b;
		
	}
	#reservepayment_div1text ul{
		margin-top:30px;
	}
	#reservepayment_div1text ul li{
		font-size: 12px;
	}
	
	
	  
	
	#reservepayment_text1{
		margin-top:30px;
		height:30px;
	}
	#reservepayment_text1 h4{
		float:left;
		font-size: 18px;
	}
	#reservepayment_text1 #reservepayment_text1_time{
		text-align: right;
		font-size: 13px;
		height:30px;
		line-height: 30px;
	}
	
	
	  
	             
	#reservepayment_info{
		height:260px;
		border-top:3px solid #2d905b;
	}	

	#reservepayment_info>div{
		float:left;
	}

	#reservepayment_info #reservepayment_info_div1{
		width:300px;
		height:246px;
	} 
	#reservepayment_info #reservepayment_info_div1 img{
		width:260px;
		height:177px;
		margin:20px;
	}
	          
	      
	 
	#reservepayment_info #reservepayment_info_div2{
		width:470px;
		height:230px;
		padding-top:20px;
	}	
	#reservepayment_info #reservepayment_info_div2 ul{
		width:420px;
	}
	#reservepayment_info #reservepayment_info_div2 ul li.border-bottom{
		border-bottom:1px solid #d5d5d5;
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li1{
		padding-top:5px;
		padding-bottom:5px;
		font-size:13px;
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li1 span{
		padding-left:20px;
		color:#2d905b;
	}  
	#reservepayment_info #reservepayment_info_div2 ul li#li2{
		padding-top:5px;
		padding-bottom:5px;
		font-size:13px;  
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li2 span{
		padding-left:35px;
		color:#2d905b;
	}  
	#reservepayment_info #reservepayment_info_div2 ul li#li3{
		padding-top:5px;
		padding-bottom:5px;
		font-size:13px;
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li3 span{
		padding-left:13px;		
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li4{
		padding-top:5px;
		padding-bottom:5px;
		font-size:13px;
	}	
	#reservepayment_info #reservepayment_info_div2 ul li#li4 span{
		padding-left:18px;	
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li5{
		padding-top:5px;
		padding-bottom:5px;
		font-size:13px;
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li5 span{
		padding-left:18px;	
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li6{
		padding-top:5px;
		padding-bottom:5px;
		font-size:13px;
	}
	#reservepayment_info #reservepayment_info_div2 ul li#li6 span{
		padding-left:45px;	
	}
	 
	
	
	 #reservepayment_info #reservepayment_info_div3{
	 	width:410px;
	 	height:250px;
	 	background: #2d905b;
	 	
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div{
	 	width:370px;
	 	height:250px;
	 	margin:20px;
	 	color:#fff;
	 } 
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div h4{
	 	background: url(css/images/mypage/money_icon.png) no-repeat;
	 	padding-left:33px;
	 	height:30px;
	 	line-height: 30px;
	 	font-size: 20px;
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul{
	 	border-top:2px solid #fff;	 	
	 }  
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li img{
	  	margin-right:5px;
	  }  
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li1{
	 	padding-top:10px;
	 	padding-bottom:10px;
	 	font-size:15px;
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li1 span{
	 	margin-left:266px;
	 }	  
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li3{
	 	padding-top:10px;
	 	padding-bottom:10px;
	 	font-size:15px; 
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li3 span{
	 	 margin-left:230px;
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li4{
	 	padding-top:10px;
	 	padding-bottom:10px;
	 	font-size:15px; 
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li4 span{
	   margin-left:184px;
	   font-size: 23px;
	 }   
	 
	
	  
	     
	
	    
	    
	    
	 
	    
	 #pay_info{
		width:1180px;
	 	
		margin-top:40px;	 
	 }
	 #pay_info h4{
	 	font-size: 18px;
	 	margin-bottom:10px;
	 } 
	  
	 #pay_info #pay_info_ul_list{
	 	width:1180px;
	 }
	  
	 #pay_info #pay_info_ul_list ul .pay_info_ul_li_color{
	 	color:#2d905b;
	 	margin-left:10px;
	 	margin-right:30px;
	 }
	 #pay_info #pay_info_ul_list ul#ul1{
	 	height: 40px;
   		padding: 10px;
  	 	border-bottom: 1px solid #e3e3e3;
   		line-height: 40px;
   		background: #f7f7f7;
   		font-size:13px;
	 }
	 #pay_info #pay_info_ul_list ul#ul1 li{
	 
	 }
	 #pay_info #pay_info_ul_list ul#ul1 li input#Mutong{
	  	margin-left:25px;
	 }
	   
	 #pay_info #pay_info_ul_list ul#ul2{
	 	height: 40px;
   		padding: 10px;
  	 	border-bottom: 1px solid #e3e3e3;
   		line-height: 40px;
   		background: #f7f7f7;
   		font-size:13px;
	 }
	 #pay_info #pay_info_ul_list ul#ul2 span#ul2_fontsize{
		font-size: 15px;
	 }
	 
	    
	 #pay_button{
	 	margin-top:10px;
	 	width:1180px;
		 text-align: center;
	 }  
	 #pay_button #pay_button1{
		border:1px solid #8b8b8b;
		width:65px;
		height:30px;
		line-height: 30px;
		background: #fff;		
		display:inline-block;
	 }
	 #pay_button #pay_button1 a#a1{
		width:25px;
		height:20px;
		padding:5px 18px 6px 18px;
		text-align: center;	
	 }
	
	    
	   
	   
</style>
</head>
<body>	
	<% pageContext.include("header.jsp"); %>
	<form action="paymentresult.do" method="post">
	<div id="mypage_reservepayment">
		<p>휴양림 예약</p>
		<div id="reservepayment_div1">
			<div id="reservepayment_div1text">
				<h2>고객님의 결제가 <span>정상적으로 완료</span>되었습니다.</h2>
				<ul>			
					<li>ㆍ장바구니/결제 내역을 다시 한번 확인해 보시길 바랍니다.</li>		
					<li>ㆍ장바구니/결제 내역은 마이페이지>예약내역에서 예약항목을 클릭하시면 자세히 보실 수 있습니다.</li>				
				</ul>				
			</div>
		</div>
		<div id="reservepayment_text1">			
			<h4>예약 내역</h4>
			<div id="reservepayment_text1_time">
				결제일자: <span><%= sf.format(nowTime) %></span>
			</div>
		</div>
		<div id="reservepayment_info">
			<div id="reservepayment_info_div1">
				<img src="css/images/mainImages/${room.r_pic}">	
			</div>
			<div id="reservepayment_info_div2">
				<ul>
					<li id="li1" class="border-bottom">ㆍ예약 번호<span>${list.res_no }</span></li>
					<li id="li2" class="border-bottom">ㆍ휴양림<span>${list.res_forname }</span></li>
					<li id="li3" class="border-bottom">ㆍ시설 정보 <span>${room.r_name } (${room.r_pax }인실)</span></li>
					<li id="li4" class="border-bottom">ㆍ숙박 기간<span><fmt:formatDate value="${list.res_startdate }" type="date" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${list.res_enddate}" type="date" pattern="yyyy-MM-dd"/>
						<c:if test="${list.res_stay == 1 }">
							(1박 2일)
						</c:if>
						<c:if test="${list.res_stay == 2 }">
							(2박 3일)
						</c:if>
						<c:if test="${list.res_stay == 3 }">
							(3박 4일)
						</c:if>
						</span>					
					</li>					
					<li id="li5" class="border-bottom">ㆍ편의 시설<span>냉장고, 이불장, 샤워실, TV, 인덕션</span></li>
					<li id="li6" >ㆍ
						<c:if test="${list.res_stay == 1 }">
							1박
						</c:if>
						<c:if test="${list.res_stay == 2 }">
							2박
						</c:if>
						<c:if test="${list.res_stay == 3 }">
							3박
						</c:if>					
					<span><fmt:formatNumber value="${list.res_fprice }" type="number"/></span></li>
				</ul>
			</div>
			<div id="reservepayment_info_div3">
				<div id="reservepayment_info_div3_div">
					<h4>예약금액</h4>
					<ul>
						<li id="li1"><img src="css/images/mypage/text_indent_img.png">합계<span><fmt:formatNumber value="${list.res_fprice }" type="number"/></span>원</li>
						<li id="li3"><img src="css/images/mypage/text_indent_img.png">결제 상태<span>결제 완료</span></li>
						<li id="li4"><img src="css/images/mypage/text_indent_img.png">총 결제 금액<span><fmt:formatNumber value="${list.res_fprice }" type="number"/></span>원</li>
					</ul>
				</div>
			</div>
			<div id="pay_info">
				<h4>결제 정보</h4>
				<div id="pay_info_ul_list">
					<ul id="ul1">
						<li>
							<span class="pay_info_ul_li_color">결제 수단</span>
							<span>가상계좌 (무통장입금)</span>
						</li>
					</ul>	
					<ul id="ul2">
						<li><span class="pay_info_ul_li_color">결제정보</span><span id="ul2_fontsize"><%= sf.format(nowTime) %></span></li>
					</ul>
				</div>	
			</div>
			<div id="pay_button">
				
					<div id="pay_button1">
						<a href="payment.do" id="a1">확인</a>
					</div>
			</div>
		</div>
	</div>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>