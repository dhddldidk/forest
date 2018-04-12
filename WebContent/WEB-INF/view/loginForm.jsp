<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 950px;
		overflow: hidden;
	}
	#content_loginForm{
		width: 930px;
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
	#cotent_agree>ul{
		width: 100%;
		height: 66px;
		margin-top: 40px;
		position: relative;
	}
	#cotent_agree>ul>li{
		width: 241px;
		height: 65px;
		background-color:rgba(213,213,213,0.5);
		float: left;
		line-height: 65px;
		border-radius: 50px;
		text-align: center;
		font-size: 15px;
		font-weight: 700;
		position: absolute;
	}
	/* 약관동의위에 */
	#cotent_agree>ul>li:FIRST-CHILD {
		margin-left: 115px;
		
	}
	#cotent_agree>ul>li:NTH-CHILD(2){
		top: 0;
		left: 335px;
		background-color:rgba(41,144,91,1);
		color: white;
		z-index: 5;
	}
	#cotent_agree>ul>li:NTH-CHILD(3){
		top: 0;
		left: 560px;
	}
	#content_number{
		margin-top:15px;
		width: 100%;
		height: 37px;
	}
	#content_number>ul>li{
		float: left;
		width: 200px;
		text-align: center;
	}
	#content_number>ul>li:FIRST-CHILD{
		margin-left: 140px;
	}
	#content_number>ul>li:NTH-CHILD(2){
		margin-left: 20px;
	}
	#content_number>ul>li:NTH-CHILD(3){
		margin-left: 20px;
	}
	#content_number>ul>li>span{
		display: inline-block;
		line-height: 37px;
	}
	#content_number>ul>li>.content_num{
		width: 37px;
		height: 37px;
		border-radius: 50px;
		background-color: #6F6F6F;
		color: white;
		font-weight: bold;
		margin-left: 3px;
		margin-right: 5px;
	}
	.content_com{
		color:#ccc;
		font-size: 5px;
		letter-spacing: 5px;
	}
	#content_join{
		width: 100%;
		height: 45px;
		margin-top: 40px;	
		margin-bottom: 10px;
	}
	#content_joinSpan{
		float:left;
		margin-left:10px;
		width:50px;
		border-top: 2px solid #2d905b;
	}
	#content_joinH4{
		font-size: 18px;
		font-weight: 600;
		clear:both;
		margin-left: 10px;
		line-height: 37px;
	}
	#content_joinForm{
		width: 98%;
		margin:0 auto;
		height: 486px;
		background-color:rgba(213,213,213,0.3);
	}
	#content_joinForm div{
		width: 100%;
		border-bottom: 1px solid #ccc;		
	}
	
	.form_none{
		height: 40px;
		line-height: 40px;
	
	}
	.form_one{
		height: 60px;
		margin-top: 10px;	
	}
	.form_one label{
		line-height: 40px;
	}
	.form_tw{
		height: 120px;
	}
	
	#content_joinForm label{
		width: 100px;
		float: left;
		margin-left: 20px;
		color:#29905B;
		font-weight: 600;
	}
	.form_tw label{
		line-height: 50px;
	}
	
	#content_joinForm input{
		height: 20px;
		font-size: 11px;
	}
	.sub{
		margin-left: 34px;
		font-size: 13px;
		color:#4375DB;
	
	}
	.subphone{
		margin-left: 34px;
		font-size: 13px;
		color:red;
	}
	.star{
		color: red;
		font-size: 10px;
		margin-right: 20px;
	}
	#duplicationId{
		display:inline-block; 
		width: 80px;
		height: 30px !important;
		line-height: 30px;
		margin-left: 20px;
		text-align: center;
		color: white;
		background-color: #797d89;
	}

	#searchAddr{
		display:inline-block;
		width: 100px;
		height: 30px;
		line-height: 30px;
		margin-left: 20px;
		text-align: center;
		color: white;
		background-color: #797d89;
	}
	.subaddr{
		width: 500px;
		margin-left: 33px;
		margin-top: 10px;
	}
	.subaddr2{
		width: 500px;
		margin-left: 153px;
		margin-top: 10px;
	}
	#sub_e{
		width: 200px;
	}
	#sub_sel{
		width: 150px;
		height: 25px;
	}
	#btn{
		width: 90%;
		height: 40px;
		margin-top: 40px;
		text-align: center;
	}
	#btn > input{
		width: 100px;
		height: 40px;
		line-height: 30px;
		margin-left: 20px;
		text-align: center;
		color: white;
		background-color: #29905B;
		font-size: 15px;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	/* 웹고객가입 색 */
	var tf=false;
	$("#loginSide_web").css("color","#2d905b");
	
	
	$("#searchAddr").click(function(){
		window.open("searchAddr.do","pop1","width=580,height=580,right=600,top=300,scrollbars=no");
		
 		return false;
 		
 	})
 	
 	
 	/* 휴대폰이벤트 */
	$("input[name='phone']").on("keyup", function() { 
		var phone = $("input[name='phone']").val();
		var phoneReg= /^[0-9]*$/;

		if(phoneReg.test(phone)==false){
			$("input[name='phone']").val("");
			alert("숫자만입력해주세요");		
		}		
	}); 
	$("#sub_sel").change(function(){
		var sel = $("#sub_sel").val();
		
		if(sel != "직접입력"){
			$("#sub_e").val(sel);
		}
	})

 	
 	
 	$("#btn").click(function(){
 		/* 이름 */
 		var name = $("input[name='name']").val();
 		if(name.length==0){
 			alert("이름을 입력해주세요.");
 			return false;
 		}
		/* 아이디 */
		var str = $("input[name='id']").val();
		if(str.length ==0){
 			alert("아이디를 입력해주세요");
 			return false;
 		}
 		if(tf==false){
 			alert("아이디 중복체크를 실행해주세요.");
 			return false;
 		}
 		/* 비밀번호 */
		
 		var passReg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%*-]).{10,16}$/i;
		var pass1 = $("input[name='pass1']").val();
		var pass2 = $("input[name='pass2']").val();
		
		if(passReg.test(pass1)==false){
			alert("사용할 수 없는 비밀번호입니다.");
			return false;
		}

 		if(pass1 !=pass2){
 			alert("비밀번호가 일치하지 않습니다.");
 			return false;
 		}
 		/* 주소 */
 		var addr = $("input[name='addr1']").val();
 		if(addr.length ==0){
 			alert("주소를 입력해주세요");
 			return false;
 		}
 		/* 폰 */
 		var phone = $("input[name='phone']").val();
 		if(phone.length ==0 || phone.length < 10 || phone.length > 11){
 			alert("휴대전화를 입력해주세요");
 			return false;
 		}

 		/* 이메일 */
 		var e1 = $("input[name='e1']").val();
 		var e2 = $("input[name='e2']").val();
 		if(e1.length ==0 ||e2.length ==0){
 			alert("이메일을 입력해주세요.");
 			return false;
 		}
 		
 		var con = confirm("등록하시겠습니까?");
 			if(con==false){
 				return false;
 			}
 	})
 	
 	$("#duplicationId").click(function(){
 		var str = $("input[name='id']").val();
 		var idReg=/^[a-z0-9]{6,12}$/i;
		if(idReg.test(str)==false){
			alert("사용할 수 없는 아이디입니다.");
			return false;
		}
 		
 		
 		if(str.length ==0){
 			alert("아이디를 입력해주세요");
 			return false;
 		}
 			
 	
 		$.ajax({
			url:"duplication.do",
			type:"get",
			dataType:"json",//서버로 부터 돌려받을 데이터의 타입
			data:{"id":str},
			success:function(data){
				if(data.tf == true){
					alert("이미 존재하는 아이디입니다.");		
					
				}else{
					alert("사용 가능한 아이디입니다.");	
					tf=true;
					
				}
			}
 		})
 	})
 	
 	
})
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="content">
		<jsp:include page="loginSide.jsp"/>
		<div id="content_loginForm">
			<div id="content_h3">
				<h3>웹고객 가입</h3>
			</div>
			<div id="cotent_agree">
				<ul>
					<li>약관동의</li>
					<li>정보입력</li>
					<li>가입완료</li>
				</ul>
			</div>
			<div id="content_number">
				<ul>
					<li><span class="content_com">●●●</span><span class="content_num">01</span><span class="content_com">●●●</span></li>
					<li><span class="content_com">●●●</span><span class="content_num">02</span><span class="content_com">●●●</span></li>
					<li><span class="content_com">●●●</span><span class="content_num">03</span><span class="content_com">●●●</span></li>
				</ul>
			</div>
			
		<div id="content_join">
			<span id="content_joinSpan"></span>
			<div id="content_joinH4">
			기본정보
			</div>
		</div>
		<div id="content_joinForm">
			<form action="loginResult.do" method="post">
				<div class="form_none">
					<label>이름</label><span class="star">★</span>
					<input type="text" name="name">
				</div>
				<div class="form_one">
					<label>아이디</label><span class="star">★</span>
					<input type="text" name="id">
					<!-- <a href="login.do" id="duplicationId">중복확인</a><br> -->
					<input type="button" value="중복확인" id="duplicationId"><br>
					<span class="sub">＊ 6-12자 이내로 입력하세요.</span>
				</div>
				<div class="form_one">
					<label>비밀번호</label><span class="star">★</span>
					<input type="password" name="pass1"><br>
					<span class="sub">＊ 10~16자리 영문+숫자+특수문자[불가능문자:^,;,:,&,',',/]</span>
				</div>
				<div class="form_one">
					<label>비밀번호 확인</label><span class="star">★</span>
					<input type="password" name="pass2"><br>
					<span class="sub">＊ 입력 오류 방지를 위하여 똑같이 한번 더 입력합니다.</span>
				</div>
				
				<div class="form_tw">
					<label>주소</label><span class="star">★</span>
					<input type="text" name="addr1" id="zip">
					<button id="searchAddr">도로명 찾기</button><br>
					<input type="text" name="addr2" class="subaddr" id="doro"><br>
					<input type="text" name="addr3" class="subaddr2" placeholder="상세주소를 입력하세요."> 
				</div>
				<div class="form_one">
					<label>휴대전화</label><span class="star">★</span>
					<input type="text" name="phone"><br>
					<span class="subphone">＊'-'를 제외한 전화번호를 입력해주세요.</span>
				</div>
				<div class="form_none">
					<label>이메일</label><span class="star">★</span>
					<input type="text" name="e1">
					@
					<input type="text" name="e2" id="sub_e">
					<select name="sel" id="sub_sel">
						<option>직접입력</option>
						<option>naver.com</option>
						<option>chol.com</option>
						<option>dreamwiz.com</option>
						<option>empal.com</option>
						<option>freechal.com</option>
						<option>gmail.com</option>
						<option>hanafos.com</option>
						<option>hanmail.net</option>
						<option>hanmir.com</option>
						<option>hitel.net</option>
						<option>hotmail.com</option>
						<option>korea.com</option>
						<option>lycos.co.kr</option>
						<option>nate.com</option>
						<option>netian.com</option>
						<option>paran.com</option>
					</select>
				</div>
				<p id="btn">
					<input type="submit" value="웹고객가입">
				</p>
			</form>
		</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
	
</body>
</html>