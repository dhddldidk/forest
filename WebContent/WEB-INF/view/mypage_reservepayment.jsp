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
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	*{
		padding:0;
		margin:0;
	}
	#mypage_reservepayment{
		width:1180px;
		margin:0 auto;
		height:1180px;
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
		padding-left:55px;	
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
	 	margin-left:270px;
	 }	  
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li2{
	 	padding-top:10px;
	 	padding-bottom:10px;
	 	font-size:15px;
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li2 span{
		margin-left:165px;
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li3{
	 	padding-top:10px;
	 	padding-bottom:10px;
	 	font-size:15px; 
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li3 span{
	 	 margin-left:215px;
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li4{
	 	padding-top:10px;
	 	padding-bottom:10px;
	 	font-size:15px; 
	 }
	 #reservepayment_info #reservepayment_info_div3 #reservepayment_info_div3_div ul li#li4 span{
	   margin-left:190px;
	   font-size: 23px;
	 }   
	 
	 #reservepayment_refund{
	 	width:1180px;
	 	margin-top:20px;
	 }
	 #reservepayment_refund span.textcolor{
	   	color:#2d905b;
	 }
	   
	 
	 #reservepayment_refund h4{
	 	font-size: 18px;
	 	margin-bottom:20px;
	 }
	 #reservepayment_refund ul{
		height:40px;
		padding:20px;
	 	border-bottom:1px solid #e3e3e3;
	 	line-height: 40px;
	 	background: #f7f7f7;
	 }
	 #reservepayment_refund ul li{
	 	float:left;
	 	
	 }
	 #reservepayment_refund ul li#li1{
	 
	 }
	 #reservepayment_refund ul li#li1 span{
	 	margin-right:10px;
	 }
	 #reservepayment_refund ul li#li1 select{
	 	height:30px;
	 }
	   
	 #reservepayment_refund ul li#li2{
	 
	 }
	 #reservepayment_refund ul li#li2 span{
		margin-left:30px;
	 	margin-right:10px;	 	
	 }  
	 #reservepayment_refund ul li#li2 input{
	 	height:30px;
	 	width:100px;
	 }  
	 #reservepayment_refund ul li#li3{
	  	margin-left:30px;
	  
	 }
	 #reservepayment_refund ul li#li3 input{
	 	height:30px;
	 }
	 
	 #reservepayment_refund ul li#li3 span:FIRST-CHILD{
	 	 margin-right:10px;
	 }
	 #reservepayment_refund ul li#li3 span#li3fontsize{
	 	font-size: 13px;	
	 	padding-left:30px;
	 	padding-right:30px;
	 }
	  
	     
	 #notice_text{
	 	width:1180px;
	 	height:120px;
	 	margin-top:20px;
	 }
	 #notice_text ul li{
	 	font-size: 13px;
	 }
	 #notice_text ul li#li2{
	  color:#2d905b;
	  
	 }
	 #notice_text #notice_text_button{
	  	width:241.5px;
	  	height:38px;
	  	border:1px solid #8b8b8b;
	  	margin-top:10px;
		margin-left:10px;
		background: #f7f7f7;
	 }
	 #notice_text #notice_text_button a{
	 	padding:10px;
	 	display:inline-block;
	 	font-size: 14px;
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
	 #pay_info #pay_info_ul_list ul#ul1 li input#card{
	  	margin-left:10px;
	 }
	 #pay_info #pay_info_ul_list ul#ul1 li input#transfer{
	  	margin-left:20px;
	 }
	 #pay_info #pay_info_ul_list ul#ul1 li input#Mutong{
	  	margin-left:20px;
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
		padding:4px 15px 6px 15px;
		text-align: center;	
	 }
	 #pay_button #pay_button2{
		border:1px solid #22794b;
		width:65px;
		height:30px;
		line-height: 30px;
		background: #2d905b;
		display:inline-block;
		 
	 }
	 #pay_button #pay_button2 a#a2{
		width:25px;
		height:20px;
		padding:4px 15px 6px 15px;
		color:#fff;
		text-align: center;	
	 }
	    
	   
	   
</style>
</head>
<body>	
	<% pageContext.include("header.jsp"); %>
	<form action="reservepayment.do" method="post">
	<div id="mypage_reservepayment">
		<p>휴양림 예약</p>
		<div id="reservepayment_div1">
			<div id="reservepayment_div1text">
				<h2>예약 내역을 확인하신 후 <span>결제 정보를 입력</span>해 주시길 바랍니다.</h2>
				<ul>			
					<li>ㆍ매주 수요일엔 선착순 예약을 하시는 분들이 많아 결제가 원할하지 않을 수 있으니 추후 결제를 진행해주시기 바랍니다.</li>				
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
				<img src="css/images/mypage/info.jpg">
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
					<li id="li6" >ㆍ1박<span><fmt:formatNumber value="${room.r_price }" type="number"/></span></li>
				</ul>
			</div>
			<div id="reservepayment_info_div3">
				<div id="reservepayment_info_div3_div">
					<h4>예약금액</h4>
					<ul>
						<li id="li1"><img src="css/images/mypage/text_indent_img.png">합계<span>39,000</span>원</li>
						<li id="li2"><img src="css/images/mypage/text_indent_img.png">결제 만기일<span><fmt:formatDate value="${list.res_paydate }" type="date" pattern="yyyy-MM-dd HH:mm"/></span></li>
						<li id="li3"><img src="css/images/mypage/text_indent_img.png">결제 상태<span>결제 진행중</span></li>
						<li id="li4"><img src="css/images/mypage/text_indent_img.png">총 결제 금액<span>39,000</span>원</li>
					</ul>
				</div>
			</div>
			<div id="reservepayment_refund">			
				<h4>환불 정보</h4>
				<ul>
					<li id="li1">
						<span class="textcolor">은행명</span>
						<select>
							<option>국민</option>
							<option>신한</option>
							<option>농협중앙회</option>
							<option>우리</option>
							<option>대구</option>
							<option>씨티</option>
							<option>하나</option>
							<option>우체국</option>
							<option>새마을금고연합회</option>
						</select>					
					</li>
					<li id="li2"><span class="textcolor">예금주</span><input type="text" name="accountname"></li>
					<li id="li3"><span class="textcolor">계좌 번호</span><input type="text" name="accountnum"><span id="li3fontsize">계좌 번호는 (-) 제외하고 입력해주시기 바랍니다.</span></li>
				</ul>				
			</div>
			<div id="notice_text">
				<ul>			
					<li id="li1">ㆍ결제 취소 시 결제금 환불을 위해 환불 받으실 계좌를 입력해주세요.</li>
					<li id="li2">ㆍ결제 수단 선택 후에는 변경이 불가능합니다.</li>
					<li id="li3">ㆍ결제가 정상적으로 이루어지지 않을 경우</li>
				</ul>
				<div id="notice_text_button">
					<a href="#">자주하는 질문 - 결제관련 바로가기</a>
				</div>
			</div>
			<div id="pay_info">
				<h4>결제 정보</h4>
				<div id="pay_info_ul_list">
					<ul id="ul1">
						<li>
							<span class="pay_info_ul_li_color">결제 수단</span>
							<input type="radio" name="paytype" id="card" value="card"><label for="card">신용카드</label>
							<input type="radio" name="paytype" id="transfer" value="bankone"><label for="transfer">계좌이체 (인터넷뱅킹)</label>
							<input type="radio" name="paytype" id="Mutong"  value="banktwo"><label for="Mutong">가상계좌 (무통장입금)</label>
						</li>
					</ul>	
					<ul id="ul2">
						<li><span class="pay_info_ul_li_color">최종 결제 금액</span><span id="ul2_fontsize"><fmt:formatNumber value="${list.res_price }" type="number"/></span>원</li>
					</ul>
				</div>	
			</div>
			<div id="pay_button">
				
					<div id="pay_button1">
						<a href="basket.do" id="a1">이전</a>
					</div>
					<div id="pay_button2">
						<a href="#" id="a2">결제</a>
					</div>
				
			</div>
		</div>
	</div>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>