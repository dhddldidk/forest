<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국립자연휴양림관리소</title>
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
		height: 80px;
		background-color:white;
		margin:0 auto;
		
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
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
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
		
			<!-- <p>지번 주소도 검색이 가능 하며 검색시 지번과 도로명이 함께 표시 됩니다.</p>
			<p>검색된 결과가 없습니다.</p> -->
			<c:forEach var="ad" items="${list }">
			<c:if test="${list.size <0}">
			
			<p>지번 주소도 검색이 가능 하며 검색시 지번과 도로명이 함께 표시 됩니다.</p>
			<p>검색된 결과가 없습니다.</p>
			</c:if>
				${ad.zipcode }
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