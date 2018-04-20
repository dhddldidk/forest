<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#cal_wrap{
		width:100%;
		height:40px;
		margin: 0 auto;
		text-align:center;
	}
	#cal_title_wrap{
		background-color:#e9e9e9;
		height:100%;
		width:80%;
		margin:0 auto;
	}
	#cal_title{
		float:left;
		font-size:20px;
		width:80%;
		margin:0;
		padding:0;
	}
	#setDate{
		width:80%;
		height:250px;
		margin: 0 auto;
	}
 	#left_img{
		width:20px;
		height:40px;
		float:left;
	}
	#right_img{
		width:20px;
		height:40px;
		float:right;
	}
	#cal_select{
		width:100%;
		height:100%;
	}
 	
	#table_select, th, td{
		border:1px solid black;
		border-collapse: collapse;
		width:300px;
		height:40px;
		text-align:center;
	}
	#table_select tr td:FIRST-CHILD, #table_select tr th:FIRST-CHILD{
		color:red;
	}
	#table_select tr td:LAST-CHILD, #table_select tr th:LAST-CHILD{
		color:blue;
	}
	.yellow_bg{
		background-color:yellow;
	}
	.blue_select{
		background-color:#3d9acc;
	}
	.pink_select{
		background-color:#ff80c0;
	}
	
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	var stayNum = 0;
	var firstMonth = 0;
	var firstDay = "";
	var lastDay = "";
	var choYear = 0;
	$(function(){
		$(document).on("click","#cal_select",function(){
			var selec = $(this);
			$("#table_select tr td").each(function(i,obj){
				$(obj).removeClass("blue_select");
				
			})
			$("#table_select tr td").each(function(i,obj){
				$(obj).removeClass("pink_select");
				
			})
			
			stayNum = $("#rsrvtQntt :selected").val();
			if(stayNum == 0){
				alert("숙박기간을 선택해주세요");
				return false;
			}
			$(this).parent().addClass("blue_select");
			var td = $(this).parent();
			var tr = $(this).parent().parent().next();
			
			firstDay = $(this).html();
			lastDay = Number(firstDay) + Number(stayNum);
			
			for(var i=1;i<stayNum;i++){
				td = td.next();
				if(td.length == 0){
					 td = tr.children().eq(0);
					 /* td.css("background-color","#3d9acc"); */
					 td.addClass("blue_select");
				}else{
					/* td.css("background-color","#3d9acc"); */
					td.addClass("blue_select");
				}
			}
			td = td.next();
			if(td.length == 0){
				td = tr.children().eq(0);
				/* td.css("background-color","#ff80c0"); */
				td.addClass("pink_select");
			}else{
				/* td.css("background-color","#ff80c0"); */
				td.addClass("pink_select");
			}
		})
	})
</script>
<script type="text/javascript">
	var date = new Date();

	function viewDate(){
		
		var y = date.getFullYear(); 
		var m = date.getMonth();
		firstMonth = m+1;
		choYear = y;
		var d = date.getDate();
		var today = d;
		var n = m;
		var lastDay = [31,28,31,30,31,30,31,31,30,31,30,31];
		var dayIndex = date.getDay();
		var setDate;
		var cal_title;
		var table = "";
		y = date.getFullYear();
		m = date.getMonth();
		dayIndex = date.getDay();
		d = 1;
		table = "<table id='table_select'>";
		table += "<tr><th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th></tr>"
		var row = Math.ceil((lastDay[m]+dayIndex)/7);
		for(var i=0;i<row;i++){
			table +="<tr>";
			for(var j=0;j<7;j++){
				if(j<dayIndex && i==0){
					table +="<td></td>";
					continue;
				}
				if(d <= lastDay[m]){
					if(d >= today){
						table +="<td><a href='#null' id='cal_select'>" + d++ + "</a></td>";										
					}else{
						table +="<td><a href='#null' id='cal_select'>" + d++ + "</a></td>";
					}
				}else{
					table +="<td></td>";
				}
			}
			table +="</tr>";
		}
		table += "</table>";
		cal_title = y + "년  " + (m+1) + "월";
		var caltitle = document.getElementById("cal_title");
		caltitle.innerHTML = cal_title;
		
		return table;
	}
	function preMonth(){
		date.setMonth(date.getMonth()-1);
		setDate.innerHTML = viewDate();
	}
	function nextMonth(){
		date.setMonth(date.getMonth()+1);
		setDate.innerHTML = viewDate();
	}
	
	window.onload = function(){
		setDate = document.getElementById("setDate");
		setDate.innerHTML = viewDate();
	}
</script>
</head>
<body>
	<div id="cal_wrap">
		<div id="cal_title_wrap">
			<img id="left_img" src="css/images/reservation/icon-left.png" onclick="preMonth()"><h1 id="cal_title"></h1><img src="css/images/reservation/icon-right.png" id="right_img" onclick="nextMonth()">
		</div>
		<div id="setDate"></div>
	</div>
</body>
</html>