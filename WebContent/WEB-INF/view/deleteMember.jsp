<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	#content{
		width: 1180px;
		margin: 0 auto;		
		height: 800px;
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
		height:130px;                
		margin:0 auto;   
		margin-top: 20px;
	}
	#content_text>ul{
		margin-left: 20px;   
	}
	#content_text>ul>li{
		list-style: disc !important;
		font-size: 12px;    
	}
	#con_text{
		width: 100%;
		height: 300px;
	}
	#co_span{
		font-size: 12px;
		color: #2d905b;   
	}
	#c_text{
		width: 100%;    
		height: 173px;    
		margin-top: 5px;       
		overflow: hidden;
		background-color:rgba(213,213,213,0.3);   
	}
	label{
		float: left;
		width: 100px;    
		font-size: 15px;
		font-weight: bold;
		color:  #2d905b;     
		text-align: center;
		margin-top: 15px;   
	}
	#c_pass{
		width: 100%;
		height: 50px;
		border-bottom: 1px solid #ccc;
	}
	#c_texttext{
		width: 100%;   
		height: 120px;   
		border-bottom: 1px solid #ccc;  
	}
	input{   
		margin-top:5px;    
		margin-left: 10px;
		width: 250px;
		height: 30px;
	}
	textarea{
		margin-top:5px;    
		margin-left: 10px;
	}
	#btn{
		width: 100%;
		height: 50px;
		overflow: hidden;
		text-align: center;
		margin-top: 30px;
	}
	#btn>a{
		float: left;
		width: 80px;
		height: 35px;
		line-height: 35px;
		
	}
	#btndele{
		margin-left:350px;        
		background-color: #2d905b;     
		border:1px solid #2d905b;     
		color: white;  
	}
	#btnc{
		margin-left:15px;
		border: 1px solid black;
	}
</style> 
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btndele").click(function(){
			var pass=$("input[name='pass']").val();
			var text = $("textarea").val();
			
			if(pass.length==0 ||text.length==0){
				alert("내용을 입력해주세요.");
				return false;
			}
			
			var con = confirm("삭제하시겠습니까?");
			if(!con){
				return false;
			}
			
			$.ajax({
				url : "deleteMember.do",
				type : "post",
				dataType : "json",//서버로 부터 돌려받을 데이터의 타입
				data:{"pass":pass,
					"text":text},
				success : function(data) {
				console.log(data);
				if(data.tf==false){
					alert("비밀번호를 다시입력해주세요.");
					return false;
				}
					alert("지금까지 DGIT 휴양림관리소를 이용해주셔서 감사합니다.");
					location.href="logout.do";
				}
			})
			
			
		})
	})
	
</script>
<body>
	 <jsp:include page="header.jsp"/> 
		<div id="content">
		
		
		<div id="content_mypageaside">
		<jsp:include page="mypage_aside.jsp"/>
		</div>
		<div id="content_member">
			<div id="content_h3">
				<h3>웹 고객 탈퇴</h3>
			</div>
		
		
		<div id="content_content">
			<div id="content_span">
			<span class="content_agree_topbar"></span>
			<div id="content_h4">
				웹 고객 탈퇴 시 유의 사항
				</div>
			</div>
			
			<div id="content_text">
				<ul>
					<li>웹 고객 탈퇴 시 개인 정보와 홈페이지 게시판에 올리신 글은 즉시 삭제됩니다.</li>
					<li>국립자연휴양림 사이트 이용에 불편을 느끼셨다면 깊이 사과 드리며, 더 나은 서비스를 위한 조언을 메일로 보내주시면 보다 나은 서비스 제공을 위해 노력하겠습니다.</li>
					<li>회원 탈퇴를 신청하시면 현재 시간 이후로 고객님의 마일리지는 모두 삭제되며, 재가입하셔도 마일리지는 복구되지 않습니다.</li>
					<li>재가입에 대한 제재는 없으나 기존 아이디를 사용하실 수 없으며, 기존 아이디로 이용한 모든 정보를 보실 수 없습니다.</li>
					<li>현재까지 적용된 벌점은 사라지지 않으며, 재가입 시 현재 벌점이 적용됩니다.</li>
					<li>예약, 대기 건이 있거나 환불이 완료되지 않은 건이 있는 경우, 해당 건이 취소 또는 완료되어야 탈퇴가 가능합니다.</li>
				</ul>
			</div>
			
			<div id="con_text">
				<span id="co_span">고객님의 소중한 의견이 보다 나은 서비스의 밑거름이 됩니다.</span>
				<div id="c_text">
					<div id="c_pass">
					<label>비밀번호</label>
					<input type="password" name="pass">
					</div>
					<div id="c_texttext">     
					<label>탈퇴 사유</label>
					<textarea rows="7" cols="100" name="text"></textarea>              
					</div>
				</div>
				
				<div id="btn">    
					<a href="#" id="btndele">탈퇴하기</a>
					<a href="updateMember.do" id="btnc">취소하기</a>    
				</div>
				
			</div>
			
		</div>
		</div>
		
		
		
		</div>
	
	 <jsp:include page="footer.jsp"/> 
</body>
</html>