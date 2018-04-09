<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		padding-top:18px;
		padding-bottom:20px;
		border-bottom:1px solid #e3e3e3;
		
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
	
	
	
	#section_jsp_num{
		color:#333;
		margin-top:45px;
	}
	
	
	
</style>
</head>
<body>
	<div id="section_jsp">
		<p>장바구니</p>
		<div id="section_jsp_menu1">
			<ul>
				<li id="section_jsp_menu1_text1" class="section_jsp_menu1_text"><a>장바구니</a></li>
				<li id="section_jsp_menu1_text2" class="section_jsp_menu1_text"><a>결제 내역</a></li>
				<li id="section_jsp_menu1_text3" class="section_jsp_menu1_text"><a>대기 내역</a></li>
				<li id="section_jsp_menu1_text4" class="section_jsp_menu1_text"><a>취소 내역</a></li>
				<li id="section_jsp_menu1_text5" class="section_jsp_menu1_text"><a>이용 내역</a></li>
				<li id="section_jsp_menu1_text6" class="section_jsp_menu1_text"><a>벌점 내역</a></li>
				<li id="section_jsp_menu1_text7" class="section_jsp_menu1_text"><a>추첨신청 내역</a></li>
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
	</div>
</body>
</html>