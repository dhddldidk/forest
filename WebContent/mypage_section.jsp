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
	}
	#section_jsp p{
		color:#333;
		font-weight: bold;
		font-size:1.7em;
		
	}
	
	#section_jsp_menu1{
		
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
	#section_jsp_menu1_text1{
	 	background: #525f78;
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
		border:1px solid #e3e3e3;
		background: white;
		width:65px;  
		height:25px;
		padding:5px;
		text-align: center;
		line-height: 25px; 
	    margin-left:3px;
	    
	}
</style>
</head>
<body>
	<div id="section_jsp">
		<p>장바구니</p>
		<div id="section_jsp_menu1">
			<ul>
				<li id="section_jsp_menu1_text1"><a>장바구니</a></li>
				<li><a>결제 내역</a></li>
				<li><a>대기 내역</a></li>
				<li><a>취소 내역</a></li>
				<li><a>이용 내역</a></li>
				<li><a>벌점 내역</a></li>
				<li><a>추첨신청 내역</a></li>
			</ul>		
		</div>
		<div id="section_jsp_menu2">
			<ul>
				<li><a>1개월</a></li>
				<li><a>3개월</a></li>
				<li><a>6개월</a></li>
				<li><a>1년</a></li>	
				<li><a>기간지정</a></li>				
			</ul>		
		</div>
		
		
		
		
		
		
		
		
	</div>
</body>
</html>