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
		height: 550px;
		overflow: hidden;
	}
	#content_searchId{
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
	#cnetnet_search{
		width: 99%;
		height: 150px;
		margin-top: 170px;
	}
	#content_img{
		width: 23%;
		height: 150px;
		float: left;
		margin-left: 120px;
		margin-top: 10px;
	}
	#content_img img{
		margin-left: 40px;
	}
	#content_input{
		width: 41%;
		height: 150px;
		float: left;
	}
	#content_input label{
		width: 80px;
		float: left;
		font-size: 15px;
		font-weight: 600;
		line-height: 40px;
	}
	#content_input ul{
		width: 89%;
		height: 90px;
		margin-top: 40px;
	}
	#content_input li{
		margin-bottom: 10px;
	}
	#content_input input{
		width: 250px;
		height: 30px;
		background-color:rgba(213,213,213,0.3);
	}
	#con_span1{
		display: inline-block;
		margin-left: 80px;
	}
	#con_span2{
		color:#5587ED;
	}
	#content_btn{
		width: 22%;
		height: 150px;
		float:right;
	}
	#content_btn>a{
		width: 100px;
		height: 35px;
		display: inline-block;
		margin-top: 40px;
		text-align: center;
		background-color:rgba(41,144,91,1);
		color:white;
		font-size: 14;
		font-weight: 600;
		line-height: 35px;
		border: 1px solid rgba(41,144,91,1);
	}
	#content_sub{
		width: 100%;
		height: 50px;
	}
	.a:FIRST-CHILD{
		margin-left:100px;
	}
	.a{
		width: 90px;
		height: 35px;
		display: inline-block;
		margin-top: 10px;
		text-align: center;
		margin-left: 20px;
		background-color:rgba(41,144,91,1);
		color:white;
		font-size: 14;
		font-weight: 600;
		line-height: 35px;
		border: 1px solid rgba(41,144,91,1);
	}
	}
</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://smtpjs.com/smtp.js"></script>
<script type="text/javascript">
	$(function(){
		/* 로그인 색 */
		$("#loginSide_login").css("color","#2d905b");
		
		$("#content_a").click(function(){
			var id = $("input[name='id']").val();
			var email = $("input[name='email']").val();
			
			if(id.length ==0  || email.length ==0 ){
				alert("아이디 또는 이메일을 입력해주세요");
				return false;
			}
			
			
			
			$.ajax({
				url:"duplication.do",
				type:"post",
				dataType:"json",//서버로 부터 돌려받을 데이터의 타입
				data:{"id":id,
					"email":email},
				success:function(data){
					
		
					  if(data.user == null){
						alert("해당하는 정보가 없습니다.");	
						return;
					}
					  
					  var id = data.user.uId;
					  var mail = data.user.uEmail;
					  var ip = data.ip;
					 if(data.user.uId== id && data.user.uEmail== email ){
						 var p= data.pass;
						 var text = "<div style='border: 1px solid black; width:33%; margin: 0 auto; height: 500px; overflow: hidden;'>"+
						  "<img src='http://"+ip+":8080/forest/css/images/common/20180312big_img.jpg' align='absmiddle' border='0' width='100%' height='300px'>"+
							"<p style='font-size: 23px; font-weight: 600; border-bottom: 1px solid #ccc; padding-left: 20px; padding-bottom: 10px;' >DGIT휴양림관리소</p>"+
							"<br><p style='font-size: 16px; margin-left: 20px;'>안녕하세요. DGIT휴양림 관리소입니다.</p><span style='font-size: 20px; margin-left: 20px;'>"+
							"<b>"+id+"</b>님의 임시비밀번호는 <b style='color: #2F9D27; font-size: 25px;'>"+
							 p+"</b>입니다.</span><br>"
							+"<p style=' width:100%; border-top: 1px solid #ccc;font-size: 13px; padding: 20px; line-height: 20px;'>DGIT휴양림 관리소를 이용해 주셔서 감사합니다.<br>"
							+"더욱 편리한 서비스를 제공하기 위해 항상 최선을 다하겠습니다. </p></div>";
						 					 
							 Email.send("testdddd@naver.com",
									 mail,
									"DGIT휴양림관리소 입니다.",
									text,
									"smtp.naver.com",
									"testdddd",
									"ddddtest@@");  
	
						alert("고객님의 이메일로 임시비밀번호를 보냈습니다.");
					} 
				}
	 		}) 
		})
		
	})
</script>
<body>
	<jsp:include page="header.jsp"/>
	<div id="content">
		<jsp:include page="loginSide.jsp"/>
		<div id="content_searchId">
			<div id="content_h3">
				<h3>비밀번호 찾기</h3>
			</div>
			
			<div id="cnetnet_search">
				<div id="content_loginForm">
					<div id="content_img">
						<img src="/forest/css/images/login/limg.PNG">
					</div>
					<div id="content_input">
						
						<ul>
							<li><label>아이디</label>
								<input type="text" name="id" placeholder="아이디"> 
							</li>
							<li><label>이메일</label>
								<input type="text" name="email" placeholder="이메일"> 
							</li>
						</ul>
						
					</div>
					<div id="content_btn">
						<a href="#" id="content_a">비밀번호 찾기</a>
					</div>
				</div>
			</div>
			
			<div id="content_sub">
				<a href="loginLogin.do" class="a">로그인</a>
				<a href="searchId.do" class="a">아이디 찾기</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>