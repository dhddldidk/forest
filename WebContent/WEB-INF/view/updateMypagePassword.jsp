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
	#content_text{
		width: 99%;
		height:242px;
		margin:0 auto;
		background-color:rgba(213,213,213,0.3);
		margin-top: 20px;
	}
	.content_member{
		width: 100%;
		height: 60px;
		line-height: 60px;
	}
	.content_member2{
		width: 100%;
		height: 90px;
		line-height: 30px;
	}
	.content_member>label,.content_member2>label{
		float: left;
		width: 100px;
		margin-left: 20px;
		color: #2d905b;
		font-weight: 600;
	}
	
	.content_span{
		margin-left: 40px;
		border-bottom: 1px solid #ccc;
		display: inline-block;
		width: 80%;
	}
	.content_span1{
		margin-left: 40px;
		border-bottom: 1px solid #ccc;
		display: inline-block;
		width: 80%;
		height: 90px;
	}
	.content_span1>span{
		color: #5587ED;
		font-size: 13px;
	}
	#content_btn{
		width: 30%;
		height: 30px;
		margin:0 auto;
		margin-top: 20px;
	}
	#content_btn>a{
		display: inline-block;
		width: 100px;
		height: 37px;
		border: 1px solid black;
		line-height: 37px;
		text-align: center;
		margin: 10px;
	}
	#content_btn1{
		background-color: #2d905b;
		border: 1px solid  #2d905b;
		color: white;
	}
	#content_ul{
		margin-left: 30px;
		font-size: 13px;
	}
	#content_ul>ul:FIRST-CHILD{
		margin-top:10px;
		color:#5D5D5D;
		margin-bottom: 20px ;
	}
	#content_ul>ul>li{
		list-style: disc !important;
	}
	#content_subul li{
		color:#2d905b;
	}
	.content_span>input{
		display:inline-block;
		width: 300px;
		height: 30px;
	}
	.content_span1>input{
		display:inline-block;
		width: 300px;
		height: 30px;
		margin-top: 15px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#content_btn1").click(function(){
			
			var pass = $("#pass").val();
			var newpass1 = $("#newpass1").val();
			var newpass2 = $("#newpass2").val();
			
			if(pass.length == 0 ||newpass1.length == 0||newpass2.length == 0){
				alert("비밀번호를 입력해주세요.");
				return;
			}
			var passReg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%*-]).{10,16}$/i;
			if(passReg.test(newpass1)==false){
				alert("사용할 수 없는 비밀번호입니다.");
				return false;
			}

	 		if(newpass1 !=newpass2){
	 			alert("비밀번호가 일치하지 않습니다.");
	 			return false;
	 		}
			
			
				$.ajax({
					url:"updateMemberpassword.do",
					type:"post",
					dataType:"json",//서버로 부터 돌려받을 데이터의 타입
					data:{"newpass1":newpass1,
						"pass":pass},
					success:function(data){

						if(data.tf==true){
							alert("비밀번호가 변경되었습니다.");
							location.href="updateMember.do";
						}else{
							alert("비밀번호가 맞지 않습니다.");
							return;
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
				정보 수정
			</div>
			<div id="content_ul">
				<ul>
					<li>비밀번호는 타인이 쉽게 유추할 수 있는 것(생일, 전화번호 등)은 가급적 피하는 것이 좋습니다.</li>
					<li>비밀번호를 주기적으로 변경해 노출되지 않도록 하십시오.</li>
				</ul>
				
				<ul id="content_subul">
					<li>10~16자의 영문, 숫자, 특수 문자를 혼용해 입력하세요.</li>
					<li>사용 불가능한 특수 문자(^ , ; , : , & , ' , ` , / )</li>
				</ul>
			</div>
			</div>
			
			<div id="content_text">
				<div class="content_member">
					<label>현재 비밀번호</label>
					<span class="content_span"><input type="password" id="pass"></span>
				</div>
				
				<div class="content_member2">
					<label>새 비밀번호</label>
					<span class="content_span1"><input type="password" id="newpass1"><br>
							<span>10~16자의 영문, 숫자, 특수 문자를 혼용해 입력하세요.</span>
					</span>
				</div>
				<div class="content_member2">
					<label>새 비밀번호 확인</label>
					<span class="content_span1"><input type="password" id="newpass2"><br>
							<span>입력 오류 방지를 위해 똑같이 한 번 더 입력합니다.</span>
					</span>
				</div>
				
			</div>
			
			<div id="content_btn">
				<a href="#" id="content_btn1">정보 수정</a>
				<a href="updateMember.do">취소하기</a>
			</div>
			
		</div>
		</div>
		
		
		
		</div>
	
	 <jsp:include page="footer.jsp"/> 
</body>
</html>