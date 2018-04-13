<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	body{
		background-color:rgba(213,213,213,0.3);
	}
	#addr {
		width: 550px;
		height: 550px;	
		margin: 0 auto;
	}
	#searchDoro{
		width: 95%;
		margin: 0 auto;
		height: 50px;
		background-color: white;
		line-height: 50px;
	}
	#textDoro{
		width: 80%;
		height: 40px;
		font-size: 16px;
		border: 1px solid white;
		margin-left: 10px;
	}
	#btn{
		height: 30px;
		margin-left: 30px;
		background-color: rgba(213,213,213,0.1);
	}
	#resultDoro{
		width: 95%;
		height: 100px;
		background-color:white;
		margin:0 auto;
		margin-top: 20px;
		
	}
	.list{
		width: 100%;
		height: 100px;
		background-color:white;
		margin:0 auto;
		margin-top: 20px;
		margin-bottom: 10px;
	}
	#resultDoro>p{
		color:#4375DB;
		text-align: center;
		font-size: 14px;
		font-weight: 600;
	}
	#resultDoro>p:FIRST-CHILD {
		line-height: 40px;
	}

	.zip{
		color: red;
		font-size: 14px;
		font-weight: 600;
		display:inline-block;
		margin-left:10px;
		margin-top: 10px;
	}
	.old{
		display:inline-block;
		margin-left:10px;
		margin-top: 10px;
		font-size: 14px;
		width: 50px;
		height: 20px;
		border: 1px solid #ccc;
		color: #4375DB;
		text-align: center;
	}
	.new a{
		text-decoration: none;
		color: #4375DB;
	}
	.new a:HOVER{
		text-decoration: underline;
	}
	.new{
		display:inline-block;
		margin-left:10px;
		font-size: 14px;
		
		font-weight: 600;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".clickdoro").click(function(){	
			var zip = $(".zip").html();
			var doro = $(this).html();
			$("#doro",opener.document).val(doro);
			$("#zip",opener.document).val(zip);
			self.close(); 
		})
	})
</script>
</head>
<body>
	<div id="addr">
		<form action="searchAddr.do" method="post">
		<div id="searchDoro">
			<input type="text" name="searchaddr" id="textDoro">
			<input type="submit" value="검색" id="btn">
		</div>
		<div id="resultDoro">
	
			<c:if test="${size != 1}"> 
			 <p>지번 주소도 검색이 가능 하며 검색시 지번과 도로명이 함께 표시 됩니다.</p>
			<p>검색된 결과가 없습니다.</p>
			 </c:if>  
			<c:forEach var="ad" items="${list }">
			<div class="list">
			<span class="zip">${ad.zipcode }</span><br>
			<span class="old">지번</span><span class="new"><a href="#" class="clickdoro">${ad.oldDoro }</a></span><br>
			<span class="old">도로명</span><span class="new"><a href="#" class="clickdoro">${ad.doro }</a></span>
			</div>
			</c:forEach>
		</div>
		</form>
	</div>
	<c:if test="${error ==0 }">
		<script type="text/javascript">
	$(function(){
		alert("검색된 결과가 없습니다. 검색어를 변경하여 다시 시도해주세요")
	})
</script>
	</c:if>
</body>
</html>