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
		height:789px;
		padding-left:20px;
		padding-right:20px;
		padding-top:20px;
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
	  
	
	#section_jsp_menu1_text5{
	 	background: #525f78;
	}
	#section_jsp_menu1_text5 a {
    	color: #fff;
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
	
	
	
	#basket_list_count{
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
</style>
</head>
<body>
	<% pageContext.include("header.jsp"); %>	
	<% pageContext.include("mypage_aside.jsp"); %>	
	<form action="use.do" method="post">		
	<section>
	<div id="section_jsp">
		<p>이용내역</p>
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
			총<b>0</b>건
		</div>
		<div id="basket_list">			
		
		</div>
		<div id="basket_list_count">
			<ul>
				<li><a href="#">1</a></li>				
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