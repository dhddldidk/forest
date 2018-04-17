<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 #content{
		width: 1180px;
		margin: 0 auto;		
		height: 900px;
		overflow: hidden;
	}
	#content_login{
		width: 930px;
		height:800px;
		float: right;
	} 
	#content_h3{
		width: 930px;
		height: 77px;
		border-bottom: 1px solid #ccc;
	}
	#content_h3>h3{
	 	padding: 20px 0 15px 0;
	 	font-size: 32px;
	}
	/* 안에큰div */
	#content_content{
		width: 99%;
		height: 700px;
		margin-top: 50px;
	}
	#content_count{
		width: 100%;
		height: 60px;
		line-height: 60px;
		background-color:rgba(213,213,213,0.3);
		border-bottom: 1px solid #ccc;
	}
	#content_span{
		display: inline-block;
		width: 530px;
		margin-left: 20px;
		font-size: 13px;
		font-weight: 600;		
	}
	#content_count>select{
		width: 100px;
		height: 37px;
	}
	#content_count>input{		
		width: 180px;
		height: 30px;
	}
	#content_a{
		display: inline-block;
		width: 50px;
		height: 30px;
		border: 1px solid black;
		line-height: 30px;
		background-color: #797d89;
		color: white;
		text-align: center;
	}
	#content_member{
		width: 100%;
		height: 550px;
		margin-top: 30px;
	}
	#content_div{
		width: 100%;
		height: 60px;
		background-color:rgba(213,213,213,0.5);
		border-top: 2px solid black;
		border-bottom: 1px solid #ccc;
	}
	#content_div>span{
		display: inline-block;
		font-size: 15px;
		font-weight: bold;
		height:20px;
		margin-top:15px;	 
		text-align: center;
	}
	#span_no{
		width: 80px;
		border-right: 1px solid #ccc;
	}
	#span_name{
		width: 80px;
		border-right: 1px solid #ccc;
	}
	#span_id{
		width: 80px;
		border-right: 1px solid #ccc;
	}
	#span_phone{
		width: 120px;
		border-right: 1px solid #ccc;
	}
	#span_email{
		width: 160px;
		border-right: 1px solid #ccc;
	}
	#span_addr{
		width: 265px;
		border-right: 1px solid #ccc;
	}
	#span_data{
		width: 100px;		
	}
	.content_divmember{
		width: 100%;
		height: 80px;
		border-bottom:1px solid #ccc;
		overflow: hidden;
	}
	.content_divmember>span{
		display: inline-block;
		font-size: 13px; 
		text-align: center;
	}
	.c_no{
		width: 80px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_name{
		width: 82px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_id{
		width: 85px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_phone{
		width: 125px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_email{
		width: 162px;
		height: 80px;
		border-left:1px solid #ccc;
		float: left;
		line-height: 80px;
	}
	.c_divaddr{
		width: 270px;
		height: 80px;
		border-left:1px solid #ccc;
		border-right:1px solid #ccc;
		float: left;
	}
	.c_divaddr>span{
		margin-left: 5px;
	}
	.c_data{
		width: 105px;
		height: 80px;
		line-height: 80px;
	}
	#div_a{
		width: 100%;
		height: 50px;
		border: 1px solid red;
		margin-top: 40px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
</head>
<body>
	<jsp:include page="admin_header.jsp"/>
	
	<div id="content">
		<jsp:include page="memberSide.jsp"/>
		<div id="content_login">
			<div id="content_h3">
				<h3>회원 관리</h3>
			</div>
			<div id="content_content">
				<div id="content_count">
					<span id="content_span">총 게시글 100건</span>
					<select name="sel">
						<option>이름</option>
						<option>아이디</option>
						<option>휴대전화</option>
					</select>
					<input type="text" name="name">
					<a href="#" id="content_a">검색</a>
				</div>
				
				<div id="content_member">
					<div id="content_div">
						<span id="span_no">No</span>
						<span id="span_name">이름</span>
						<span id="span_id">아이디</span>
						<span id="span_phone">연락처</span>
						<span id="span_email">메일</span>
						<span id="span_addr">주소</span>
						<span id="span_data">가입일자</span>
					</div>
					<div class="content_divmember">
						<span class="c_no">1001</span>
						<span class="c_name">김이름</span>
						<span class="c_id">dddddddd</span>
						<span class="c_phone">010-0000-0000</span>
						<span class="c_email">ddddd@ddddd.com</span>
						<div class="c_divaddr">
						<br>
						<span class="c_addr1">[00000]</span><br>
						<span class="c_addr2">대구광역시 여ㅑ기는 여기여기여기우리지비</span><br>
						<span class="c_addr3">우리지비</span>
						</div>
						<span class="c_data">2010-05-05</span>
					</div>
					
					
					<div class="content_divmember">
						<span class="c_no">1001</span>
						<span class="c_name">김이름</span>
						<span class="c_id">dddddddd</span>
						<span class="c_phone">010-0000-0000</span>
						<span class="c_email">ddddd@ddddd.com</span>
						<div class="c_divaddr">
						<br>
						<span class="c_addr1">[00000]</span><br>
						<span class="c_addr2">대구광역시 여ㅑ기는 여기여기여기우리지비</span><br>
						<span class="c_addr3">우리지비</span>
						</div>
						<span class="c_data">2010-05-05</span>
					</div>
					<div class="content_divmember">
						<span class="c_no">1001</span>
						<span class="c_name">김이름</span>
						<span class="c_id">dddddddd</span>
						<span class="c_phone">010-0000-0000</span>
						<span class="c_email">ddddd@ddddd.com</span>
						<div class="c_divaddr">
						<br>
						<span class="c_addr1">[00000]</span><br>
						<span class="c_addr2">대구광역시 여ㅑ기는 여기여기여기우리지비</span><br>
						<span class="c_addr3">우리지비</span>
						</div>
						<span class="c_data">2010-05-05</span>
					</div>
					<div class="content_divmember">
						<span class="c_no">1001</span>
						<span class="c_name">김이름</span>
						<span class="c_id">dddddddd</span>
						<span class="c_phone">010-0000-0000</span>
						<span class="c_email">ddddd@ddddd.com</span>
						<div class="c_divaddr">
						<br>
						<span class="c_addr1">[00000]</span><br>
						<span class="c_addr2">대구광역시 여ㅑ기는 여기여기여기우리지비</span><br>
						<span class="c_addr3">우리지비</span>
						</div>
						<span class="c_data">2010-05-05</span>
					</div>
					<div class="content_divmember">
						<span class="c_no">1001</span>
						<span class="c_name">김이름</span>
						<span class="c_id">dddddddd</span>
						<span class="c_phone">010-0000-0000</span>
						<span class="c_email">ddddd@ddddd.com</span>
						<div class="c_divaddr">
						<br>
						<span class="c_addr1">[00000]</span><br>
						<span class="c_addr2">대구광역시 여ㅑ기는 여기여기여기우리지비</span><br>
						<span class="c_addr3">우리지비</span>
						</div>
						<span class="c_data">2010-05-05</span>
					</div>
					<div class="content_divmember">
						<span class="c_no">1001</span>
						<span class="c_name">김이름</span>
						<span class="c_id">dddddddd</span>
						<span class="c_phone">010-0000-0000</span>
						<span class="c_email">ddddd@ddddd.com</span>
						<div class="c_divaddr">
						<br>
						<span class="c_addr1">[00000]</span><br>
						<span class="c_addr2">대구광역시 여ㅑ기는 여기여기여기우리지비</span><br>
						<span class="c_addr3">우리지비</span>
						</div>
						<span class="c_data">2010-05-05</span>
					</div>
					
					
					
				</div>
				
				<div id="div_a">
					페이징
				</div>
				
			</div>
		</div>
		
	</div>
	
	<%-- <jsp:include page="mainSection.jsp"/> --%>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>