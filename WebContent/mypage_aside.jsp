<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	#aside{
		
		width:220px;	
		height:789px;		
		margin-left:370px;
		padding-top:25px;
		
	}
	#aside_menu ul{
		list-style: none;
	}
	#aside_menu ul li.img{
		width:208px;
		height:120px;
	}
	#aside_menu ul li#aside_menu_img1{
		padding-top:5px;
		padding-left:5px;
		padding-right:5px;
	}
	#aside_menu ul li#aside_menu_img2{
		padding-left:5px;
		padding-right:5px;
	}
	#aside_menu ul li#aside_menu_img3{
		padding-left:5px;
		padding-right:5px;
	}
	
	
	#aside h2{
		width:150px;
		height:50px;
		color:#2d905b;
		padding-left:8px;
		line-height: 50px;
		font-weight: bold;
		font-size:24px;		
	}	
	#aside_menu ul li:FIRST-CHILD{
		border-top: 2px solid #209159;
	}
	#aside_menu ul li.text{
		padding:10px;
		border-bottom:1px solid #e3e3e3;
	}
	
	#aside_menu{
		border:1px solid #e3e3e3;
		width:100%;
		height:739px;
		
	}
	#aside_menu ul li#aside_menu_text1{
		color:#209159;	
		font-weight: bold;
		height:25px;
		line-height: 25px;
	}
	#aside_menu ul li#aside_menu_text2{
		color:red;	
		font-weight: bold;
		height:25px;
		line-height: 25px;
		  
	}
	#aside_menu ul li#aside_menu_text3{
		color:#333;
		font-weight: bold;
		height:25px;
		line-height: 25px;
	}
	#aside_menu ul li#aside_menu_text4{
		color:#333;
		font-weight: bold;
		height:25px;
		line-height: 25px;
	}	
	
</style>
</head>
<body>
	<div id="aside">
		<h2>마이페이지</h2>
		<div id="aside_menu">
			<ul>
				<li class="text" id="aside_menu_text1">장바구니</li>
				<li class="text" id="aside_menu_text2">웹고객정보</li>
				<li class="text" id="aside_menu_text3">질문과 답변 내역</li>
				<li class="text" id="aside_menu_text4">웹고객탈퇴</li>	
				<li class="img" id="aside_menu_img1"><img src="css/images/mypage/lnb_benner01.png"></li>
				<li class="img" id="aside_menu_img2"><img src="css/images/mypage/lnb_benner02.png"></li>
				<li class="img" id="aside_menu_img3"><img src="css/images/mypage/lnb_benner03.png"></li>  
			</ul>
		</div>
	</div>
</body>
</html>