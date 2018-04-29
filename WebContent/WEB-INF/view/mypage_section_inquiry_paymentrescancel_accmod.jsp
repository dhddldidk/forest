<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	form{
		margin-left:20px;
	}
	#reservepayment_refund{
	 	width:470px;
	 	
	 }
	 #reservepayment_refund span.textcolor{
	   	color:#2d905b;
	 }
	  
	 
	 #reservepayment_refund h4{
	 	font-size: 18px;
	 	margin-bottom:20px;
	 }
	  #reservepayment_refund h4 span{
	 	font-size: 12px;	
	 	padding-left:30px;
	 	color:red;
	 }
	  
	  
	 #reservepayment_refund ul{
		height:70px;
		padding:20px;
	 	border-bottom:1px solid #e3e3e3;
	 	line-height: 40px;
	 	background: #f7f7f7;
	 	list-style: none;
	 }
	 #reservepayment_refund ul li{
	 	float:left;
	 	
	 }
	 #reservepayment_refund ul li#li1{
	 	margin-left:20px;
	 }
	 #reservepayment_refund ul li#li1 span{
	 	margin-right:10px;
	 }
	 #reservepayment_refund ul li#li1 select{
	 	height:30px;
	 }
	   
	 #reservepayment_refund ul li#li2{
		 margin-left:20px;
	 }
	 #reservepayment_refund ul li#li2 span{
		margin-left:30px;
	 	margin-right:10px;	 	
	 }  
	 #reservepayment_refund ul li#li2 input{
	 	height:30px;
	 	width:100px;
	 }  
	 #reservepayment_refund ul li#li3{
	  	margin-left:40px;
	  
	 }
	 #reservepayment_refund ul li#li3 input{
	 	height:30px;
	 	width:190px;
	 }
	 
	 #reservepayment_refund ul li#li3 span:FIRST-CHILD{
	 	 margin-right:10px;
	 }
	 #reservepayment_refund ul li#li3 span#li3fontsize{
	 	font-size: 13px;	
	 	padding-left:30px;
	 	padding-right:30px;
	 }
	 
	 #reservepayment_refund #button{
	 	text-align: center;
	 }
	  #reservepayment_refund #button>input{
	 	padding: 8px 14px;
		border:1px solid #2d905b;
		background:#2d905b;
		color:#fff;
	 }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		
		$("#btnresult").click(function(){
			var accountname = $("input[name='accountname']").val();
			var accountnum = $("input[name='accountnum']").val();
 			if(accountname.length == 0){
 				alert("예금주를 입력하세요");
 				return false;
 			}
 			if(accountnum.length == 0){
 				alert("계좌번호를 입력하세요");
 				return false;
 			}
 			alert("변경되었습니다.");
 			self.close(); 
		})
		
		/* 계좌번호 */
		$("input[name='accountnum']").on("keyup", function() { 
			var banknum = $("input[name='accountnum']").val();
			var banknumReg= /^[0-9]*$/;

			if(banknumReg.test(banknum)==false){
				$("input[name='accountnum']").val("");
				alert("계좌 번호는 (-) 제외하고 입력해주시기 바랍니다.");		
			}
		});
	})
</script>
</head>
<body>
	<form action="accmod.do" method="post">
	<input type="hidden" name="res_no" value="${acc.res_no }">
	<div id="reservepayment_refund">		
			<h4>환불 정보 변경<span>계좌 번호는 (-) 제외하고 입력해주시기 바랍니다.</span></h4>
			<ul>
				<li id="li1">
					<span class="textcolor">은행명</span>
					<select name="bank">
						<option value="농협중앙회" ${acc.bankname =="농협중앙회"?"selected":""}>농협중앙회</option>
						<option value="우리" ${acc.bankname =="우리"?"selected":""}>우리</option>
						<option value="대구"  ${acc.bankname =="대구"?"selected":""}>대구</option>
						<option value="신한" ${acc.bankname =="신한"?"selected":""}>신한</option>
						<option value="국민" ${acc.bankname =="국민"?"selected":""}>국민</option>
						<option value="우체국" ${acc.bankname =="우체국"?"selected":""}>우체국</option>
					</select>					
				</li>
				<li id="li2"><span class="textcolor">예금주</span><input type="text" name="accountname" value="${acc.bankusername }"></li>
				<li id="li3"><span class="textcolor">계좌 번호</span><input type="text" name="accountnum" value="${acc.banknum }"></li>
			</ul>
			<div id="button">
				<input type="submit" value="변경" id="btnresult">
			</div>	
		</div>
	</form>
</body>
</html>