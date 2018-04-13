<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 630px;
		overflow: hidden;
	}
	#content_member{
		width: 930px;
		height:700px;
		float: right;
	}
	#content_mypageaside{
		width: 250px;
		float: left;
	}
	/* side메뉴 magin */
	#content_mypageaside>#aside{
		margin: 0;
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
	#content_content{
		width: 99%;
		height: 390px;
		margin-top: 50px;

	}
	.content_agree_topbar{
		float:left;
		margin-left:10px;
		width:50px;
		border-top: 2px solid #2d905b;
	}
	#content_h4{
		clear: both;
		width: 100%;
		height: 45px;
		font-size: 18px;
		font-weight: 600;
		line-height: 35px;
		margin-left: 10px;
	}
	#content_joinForm{
		width: 99%;
		height:315px;
		margin:0 auto;
		background-color:rgba(213,213,213,0.3);
		margin-top: 20px;
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
	#btn>a{
		display:inline-block;
		width: 100px;
		height: 40px;
		line-height: 40px;
		margin-left: 20px;
		text-align: center;
		color: white;
		border:1px solid #29905B;
		background-color: #29905B;
		font-size: 15px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"updateMypageMemberUpdate.do",
			type:"post",
			dataType:"json",//서버로 부터 돌려받을 데이터의 타입
			success:function(data){
					$("#spanname").html(data.user.uName);
					$("#spanid").html(data.user.uId);
					var addr = new Array();
					addr = data.user.uAddress.split(",");
					
					$("#zip").val(addr[0]);
					$("#doro").val(addr[1]);
					$("#doro1").val(addr[2]);
					
					var phone = data.user.uPhone.replace("-","");
					phone = phone.replace("-","");
					$("#phone").val(phone);
					
					var e = new Array();
					e=data.user.uEmail.split("@");					
					$("#sub_e0").val(e[0]);
					$("#sub_e").val(e[1]);
			}
 		})		
 		
 		$("#searchAddr").click(function(){
		window.open("searchAddr.do","pop1","width=580,height=580,right=600,top=300,scrollbars=no");
		
 		return false;
 		
 		})
 		
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
 		
 		$("#updateMember").click(function(){
 			/* 주소 */
 	 		var addr = $("input[name='addr1']").val();
 	 		var addr1 = $("input[name='addr2']").val();
 	 		var addr2 = $("input[name='addr3']").val();
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
 	 		
 	 		var con = confirm("수정하시겠습니까?");
 			if(con==false){
 				return false;
 			}
 				
 			var tt = "test1";
 			
 				$.ajax({
 					url:"updateMypageMemberUpdate.do",
 					type:"post",
 					dataType:"json",//서버로 부터 돌려받을 데이터의 타입 
 					data:{"test":tt,
 						"addr1":addr,
 						"addr2":addr1,
 						"addr3":addr2,
 						"phone":phone,
 						"e1":e1,
 						"e2":e2},
 					
 					success:function(data){
 							if(data.tf==true){
 								location.href="updateMember.do";
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
		
		
		<div id="content_mypageaside">
		<jsp:include page="mypage_aside.jsp"/>
		</div>
		<div id="content_member">
			<div id="content_h3">
				<h3>웹 고객 정보</h3>
			</div>
	
		
		<div id="content_content">
			<div id="content_span">
			<span class="content_agree_topbar"></span>
			<div id="content_h4">
				기본정보
			</div>
			</div>
		
			
		<div id="content_joinForm">
				<div class="form_none">
					<label>이름</label><span class="star">★</span>
					<span id="spanname"></span>
				</div>
				<div class="form_none">
					<label>아이디</label><span class="star">★</span>
					<span id="spanid"></span>
				</div>
				
				<div class="form_tw">
					<label>주소</label><span class="star">★</span>
					<input type="text" name="addr1" id="zip">
					<button id="searchAddr">도로명 찾기</button><br>
					<input type="text" name="addr2" class="subaddr" id="doro"><br>
					<input type="text" name="addr3" class="subaddr2" placeholder="상세주소를 입력하세요." id="doro1"> 
				</div>
				<div class="form_one">
					<label>휴대전화</label><span class="star">★</span>
					<input type="text" name="phone" id="phone"><br>
					<span class="subphone">＊'-'를 제외한 전화번호를 입력해주세요.</span>
				</div>
				<div class="form_none">
					<label>이메일</label><span class="star">★</span>
					<input type="text" name="e1" id="sub_e0">
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
					<a href="#" id="updateMember">정보 수정</a>
					<a href="updateMember.do">취소</a>
				</p>
			<!-- </form> -->
	</div>	
			</div>
	
	</div>
	</div>
	 <jsp:include page="footer.jsp"/> 
</body>
</html>