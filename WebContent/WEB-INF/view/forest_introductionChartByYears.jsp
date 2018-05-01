<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forest_introductionChartByYears.css">
<style type="text/css">
#container .myChart{
	width:940px;
	height: 1240px;
	float: right;
	border:3px solid green;
}
#container .myChart h1{
	font-size: 30px;
	padding: 15px;
}
#container .myChart .chartInnerLine{
	height: 3px;
	width: 940px;
	background: gray;
	margin-bottom: 20px;
}
#container .myChart .typeOfChart{
	width:940px;
	height: 52px;
	/* border:2px solid red; */
}
#container .myChart .typeOfChart ul{
	width:90%;
	margin:0 auto;
	height: 52px;
}
#container .myChart .typeOfChart ul li{
	width:23%;
	margin:0 auto;
	height: 50px;
	line-height:50px;
	text-align:center;
	border:1px solid gray; 
	float: left;
	border-radius: 3px;
}
#container .myChart .typeOfChart ul li:nth-child(1),
#container .myChart .typeOfChart ul li:nth-child(2),
#container .myChart .typeOfChart ul li:nth-child(3){
	margin-right:19px;
}
#container .myChart .typeOfChart ul li a{
	display:inline-block;
	width:100%;
	height: 50px;
	text-align:center;
	font-size: 1.6em;
	background: #2d905b;
	color: white;
	
}
</style>
<script type="text/javascript"
    src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript"
    src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">

	$(function(){
		$.ajax({
			url : "forestChartbyYearsJSON.do",
			type : "get",
			dataType : "json",//서버로 부터 돌려받을 데이터의 타입
			/* data:{"year":year}, */
			success : function(dataChart) {
			console.log(dataChart); 

			
			 function drawChart() {
			     // alert(dataChart);
			    	//휴양림 이름과 이용횟수
			    	
			    	var data = new google.visualization.DataTable();
			    	data.addColumn('string','휴양림');
			    	data.addColumn('number','이용횟수');
			    	
			    	
			    	for(var i =0; i<dataChart.length; i++){
			    		var for_name = dataChart[i].for_name;
			    		var count = dataChart[i].count;
			    		
			    		data.addRows([
			    			[for_name,count],
			    		]);
			    	}
			    	
			    	
			    	/* var data = google.visualization.arrayToDataTable([
			        ["휴양림", "이용횟수" ],
			        [dataChart[13].for_name, dataChart[13].count],
			        ["아세안휴양림", 10.49],
			        ["칠보산휴양림", 19.30],
			        ["동해바다휴양림", 21.45]
			      ]); */

			      var view = new google.visualization.DataView(data);
			      view.setColumns([0, 
			                       { calc: "stringify",
			                         sourceColumn: 1,
			                         type: "string",
			                         role: "annotation" },
			                       1]);

			      var ti = "<h1>2018년 휴양림별</h1>";
			      
			      var options = {
			        title: ti,
			        width: 940,
			        height: 1200,	
			        chartArea : {
		                width : '55%',
		                height : '80%'
		            },
			        bar: {groupWidth: "95%"},
			        legend: { position: "center" },
			      };
			      var chart = new google.visualization.BarChart(document.getElementById("chartContainer"));
			      chart.draw(view, options);
			  }
			
			 google.charts.load("current", {packages:["corechart"]});
			    google.charts.setOnLoadCallback(drawChart);
			
			
			
			}
		})
	}) 
	
	
	/* var title = "[휴양림, 이용횟수, {role: style}]"
	
	var data = google.visualization.arrayToDataTable([
			        ["휴양림", "이용횟수", { role: "style" } ],
			        [dataChart[13].for_name, dataChart[13].count, "#b87333"],
			        ["아세안휴양림", 10.49, "red"],
			        ["칠보산휴양림", 19.30, "gold"],
			        ["동해바다휴양림", 21.45, "color: #e5e4e2"]
			      ]); */

	
	
	
	
	
	
   
</script>
</head>
<body>
<jsp:include page="admin_header.jsp" />
<div id="container">
<jsp:include page="forest_introductionSideAdmin.jsp" />
	<div class="myChart">
		<h1>휴양림 연도별 차트</h1>
		<div class="chartInnerLine"></div>
			<div class="typeOfChart">
				<ul>
					<li><a href="">2016년</a></li>
					<li><a href="">2017년</a></li>
					<li><a href="">2018년</a></li>
					<li><a href="">통계</a></li>
				</ul>
			</div>
		<div id="chartContainer" style="width: 500px; height: 800px;"></div>
		<%-- ${chartList } --%>
	</div>
	</div>
	
	

<jsp:include page="footer.jsp" />
</body>
</html>