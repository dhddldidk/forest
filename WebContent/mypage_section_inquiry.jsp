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
		/* height:789px; */
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
		width:330px;    
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
	#payment_title_text2_section_div1 ul li#border{
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
</style>
</head>
<body>
	<div id="section_jsp">
		<p>예약조회</p>
		<div id="mypage_section_text">
			<ul>			
				<li>ㆍ국립자연휴양림관리소는 <span class="font">고객 매우 만족</span>을 위해 최선을 다하겠습니다.</li>
				<li>ㆍ결제만기일까지 <span class="font">결제를 하지 않으면</span> 예약신청이 <span class="font">자동으로 취소됩니다.</span></li>
				<li>ㆍ( 은행별로 가상계좌 <span class="font">입금마감시간이 상이</span>하니 확인 부탁드립니다. <a href="#">[마감시간 바로가기]</a> )</li>
			</ul>
		</div>	
		<!-- <div id="section_jsp_num">
			총<b>0</b>건
		</div> -->
		<div id="payment_title_text1">			
			<span></span>
			<h4>결제정보</h4>
		</div>
		<div id="payment_title_text1_section">
			<ul>
				<li id="li1">결제만기일</li>
				<li id="li2"><span>2018-04-11 23:00</span> 까지</li>
				<li id="li3">결제금액</li>
				<li id="li4">[<span>37000</span> 원]</li>
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
					<li id="li2"><span class="font">천관산(장흥)</span></li>
					<li id="border">|</li>
					<li id="li3">최초예약일:</li>
					<li id="li4"><span class="font">2018년 04월 10일</span></li>
				</ul>
			</div>
			<div>
			
			</div>
			<div>
			
			</div>		
		</div>
		<div id="payment_button">
			<div id="payment_button_total">
				<a href="#" id="a1">예약취소</a>
				<a href="#" id="a2">결제하기</a>
				<a href="#" id="a3">목록보기</a>
			</div>
		</div>
	</div>
</body>
</html>