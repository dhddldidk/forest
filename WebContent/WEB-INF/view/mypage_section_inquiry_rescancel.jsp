<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		padding:20px 20px 80px 20px;
		   
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
	
	
	
	
	
	
	#section_jsp div#text{
		margin-top:30px;
		margin-bottom:25px;		
	}
	#section_jsp #text span{
		font-size:24px;	
		color: #2d905b;
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
		width:236px;    
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
	}
	#payment_title_main1 ul li#li ul li#li_ul1_li2{
		margin-left:5px;
		font-weight: bold; 
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
		width:62px;
		height:45px;  
		display: inline-block;
		line-height: 50px;
	}
	#payment_button #payment_button_total a#a1{
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
	<form action="rescancel.do" method="post">
	<section>
	<div id="section_jsp">
		<p>예약취소</p>
		<div id="text">
			<span>고객님의 예약취소가 정상적으로 완료되었습니다.</span>
		</div>
		<div id="mypage_section_text">
			<ul>			
				<li>ㆍ예약취소(부분취소) 내역은 마이페이지 예약내역에서 예약항목을 클릭하시면 자세히 보실 수 있습니다.</li>
				<li>ㆍ예약취소(전체취소) 내역은 마이페이지 예약취소내역에서 예약항목을 클릭하시면 자세히 보실 수 있습니다.</li>
				<li>ㆍ환불정보 수정은 해당 예약의 상세보기 화면에서 수정하실 수 있습니다. 단, 진행중인 항목은 수정하실 수 없습니다.</li>
			</ul>
		</div>	
		<div id="payment_title_text1">			
			<span></span>
			<h4>현재 예약내역</h4>
		</div>
		<div id="payment_title_text1_section">
			<ul>
				<li id="li1">예약취소일:</li>
				<li id="li2">2018-04-11 오전 10:25:13</li>				
			</ul>
		</div>
		<div id="payment_title_main1">
			<ul>
				<li id="li">
					<ul id="ul1">
						<li id="li_ul1_li1">[019618041022644]</li>
						<li id="li_ul1_li2">천관산(장흥)</li>
					</ul>
					<ul id="ul2">
						<li id="li_ul2_li1" class="li_ul2_li">방정보 </li>
						<li id="li_ul2_li2" class="li_ul2_li"><span><img src="css/images/reservation/icon_soop.png"></span><a>소나무 (4인실)(23.0㎡)</a></li>
						<li id="li_ul2_li3" class="li_ul2_li">|</li>
						<li id="li_ul2_li4" class="li_ul2_li">숙박일</li>
						<li id="li_ul2_li5" class="li_ul2_li">2018-05-16</li>
					</ul>
					<ul  id="ul3">
						<li id="li_ul3_li1" class="li_ul3_li"><img src="css/images/mypage/text_indent_img_gray.png">이용금액 </li>
						<li id="li_ul3_li2" class="li_ul3_li">0원</li>
						<li id="li_ul3_li3" class="li_ul3_li">|</li>	
						<li id="li_ul3_li4" class="li_ul3_li">예약상태</li>
						<li id="li_ul3_li5" class="li_ul3_li">예약취소 완료</li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="payment_button">
			<div id="payment_button_total">
				<a href="#" id="a1">확인</a>
			</div>
		</div>
	</div>
	</section>
	</form>
	<% pageContext.include("footer.jsp"); %>
</body>
</html>