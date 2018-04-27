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
		height: 730px;
		overflow: hidden;
	}
	#content_login{
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
	#content_content{
		width: 99%;
		height: 390px;
		border: 1px solid #ccc;
		margin-top: 50px;

	}
	#content_loginForm{
		width: 100%;
		height: 180px;
		margin-top: 60px;			
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
		width: 80px;
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
	#content_subbtn{
		width: 100%;
		height: 140px;
		margin-top:10px;
		clear: both;
		border-top: 1px solid #ccc;
		background-color:rgba(213,213,213,0.2);
	}
	.content_subsub{
		width: 32%;
		height: 80px;
		float: left;
		margin: 30px 5px;
		text-align: center;
	}
	.sub_a{
		display: inline-block;
		width: 150px;
		height: 50px;
		border: 1px solid #ccc;
		text-align: center;
		line-height: 50px;
		margin-top: 6px;
		background-color: white;
		font-weight: 600;
	}
	.content_subsub:FIRST-CHILD{
		border-right:1px solid #ccc;
	}
	.content_subsub:NTH-CHILD(3){
		border-left:1px solid #ccc;
	}
	.sub_p{
		margin-top: 5px;
		color: #8C8C8C;
	}
	#content_ul{
		width: 100%;
		height: 100px;
		margin-top: 30px;
		margin-left: 20px;
	}
	#content_ul li{
		list-style: disc !important;
		margin-bottom: 5px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	/* 로그인 색 */
	$("#loginSide_login").css("color","#2d905b");
	$("#content_a").click(function(){
		var id = $("input[name='id']").val();
		
		var pass = $("input[name='password']").val();
		
		if(id.length ==0  || pass.length ==0 ){
			alert("ID 또는 비밀번호를 입력해주세요");
			return false;
		}
	/* 	if(id =="admin" && pass=="admin"){
			location.href="index.jsp";			
		} */
		
		
		$.ajax({
			url:"loginSuccess.do",
			type:"get",
			dataType:"json",//서버로 부터 돌려받을 데이터의 타입
			data:{"id":id,
				"pass":pass},
			success:function(data){
						   
				 if(id== "admin" && pass=="admin" ){
					 location.href="admin.do";		
					 return;
				}
				 if(data.user == null){
					alert("해당하는 정보가없습니다.");	
					return false;
				}else if(data.user.uPassword!= pass){
					alert("해당하는 정보가없습니다.");	
					return false;
				}
				
				 
				 
				 if(data.user.uId== id && data.user.uPassword== pass ){
					 location.href="index.jsp";		
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
		<div id="content_login">
			<div id="content_h3">
				<h3>로그인</h3>
			</div>
			<div id="content_content">
				<div id="content_loginForm">
					<div id="content_img">
						<img src="/forest/css/images/login/limg.PNG">
					</div>
					<div id="content_input">
						
						<ul>
							<li><label>아이디</label>
								<input type="text" name="id" placeholder="아이디"> 
							</li>
							<li><label>비밀번호</label>
								<input type="password" name="password" placeholder="비밀번호"> 
							</li>
						</ul>
						<span id="con_span1">로그인후 5분간 이용이 없으면 <span id="con_span2">자동 로그아웃</span>됩니다.</span> 
					</div>
					<div id="content_btn">
						<a href="#" id="content_a">로그인</a>
					</div>
				</div>
				
				<div id="content_subbtn">
					<div class="content_subsub">
						<a href="login.do" class="sub_a">신규 회원가입</a>
						<p class="sub_p">아직 국립자연휴양림 회원이 아니세요?</p>
					</div>
					<div class="content_subsub">
						<a href="searchId.do" class="sub_a">아이디 찾기</a>
						<p class="sub_p">아이디를 잊으셨나요?</p>
					</div>
					<div class="content_subsub">
						<a href="searchPass.do" class="sub_a">비밀번호 찾기</a>
						<p class="sub_p">비밀번호를 잊으셨나요?</p>
					</div>
				</div>
				
				<div id="content_ul">
					<ul>
						<li>회원 정보 중 아이디와 비밀번호가 동일한 고객님의 경우 개인정보 노출 우려가 있어 임의 변경되었습니다.<br>
						[비밀번호 찾기]를 클릭하여 본인 인증 후 비밀번호 변경 부탁드립니다.
						</li>
						<li>국립자연휴양림관리소 홈페이지는 산림청 홈페이지와 별도로 운영되고 있습니다.<br>
						따라서 회원가입을 하셔야 이용이 가능하십니다.
						</li>
						<li>회원가입 및 개인정보 관련은 PC에서 가능합니다</li>
					</ul>
					
				</div>
				
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>