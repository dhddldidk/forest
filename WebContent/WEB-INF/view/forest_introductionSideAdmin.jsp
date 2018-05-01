<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DGIT휴양림관리소</title>
<style>
	#side{
		width: 220px;
		float: left;
	}
	#side>#side_h2{
		padding: 33px 0 19px 15px;
   		height: 23px;
   		border: 1px solid #fff;
   		
	}
	#side_h2>h2{
		color:#2d905b;
		font-size: 24px;
		font-weight: 600;
	}
	/* ul길이 */
	#side>ul{
		border-top: 2px solid #2d905b;
  	 	font-weight: 600;
  	 	border-left: 1px solid #ccc;
  	 	border-right: 1px solid #ccc; 
  	 	height: 1300px; 
	}
	#side>ul>li:NTH-CHILD(1), #side>ul>li:NTH-CHILD(2), #side>ul>li:NTH-CHILD(3){
		width: 100%;
		height: 48px;
		border-bottom: 1px solid #ccc;
		font-size: 15px;
		line-height: 48px;
		
	}
	#side>ul>li:NTH-CHILD(1)>a, #side>ul>li:NTH-CHILD(2)>a, #side>ul>li:NTH-CHILD(3)>a{
		margin-left: 10px;
		font-weight: 600;
		color:  #2d905b;
	}
	#side>ul>li:LAST-CHILD {
		text-align: center;
		margin-top: 5px;
	}
	#side>ul>li>a:HOVER{
		color:  black;
	} 
	
</style>
</head>
<body>
	<div id="side">
		<div id="side_h2"><h2>휴양림관리</h2></div>
		<ul>
			<li>
			<a href="adminForestIntroList.do">휴양림 관리</a>
			</li>
			<li>
			<a href="adminForestIntroRoomsList.do">숙박시설 관리</a>
			</li>
			<li>
			<a href="forestChartbyYears.do">휴양림 연도별 차트</a>
			</li>
			<li>
				<a href="#"><img src="/forest/css/images/login/sideimg.PNG"></a>
			</li>
		</ul>		
	</div>
</body>
</html>