<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
#noticeWrite {
	width: 1180px;
	height: 500px;
	margin: 0 auto;
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 20px;
	padding-bottom:60px;
}

#noticeWrite p {
	height: 60px;
	font-size: 30px;
	color: #333;
	font-weight: bold;
	border-bottom: 1px solid #e3e3e3;
	line-height: 60px;
}

#noticeWrite #noticeWrite_text1 {
	margin-top: 30px;
}

#noticeWrite #noticeWrite_text1 span {
	display: inline-block;
	width: 47px;
	height: 2px;
	border-bottom: 2px solid #209159;
}

#noticeWrite #noticeWrite_text1 h4 {
	font-weight: bold;
	font-size: 19px;
}

/*---------- table ----------*/
#noticeWrite_main_wrap table {
	width: 100%;
    margin-top: 30px;
    border-top: 2px solid #787b86;
}

table, th, td {
	margin: 0;
	padding: 0;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

#noticeWrite_main_wrap table{
	margin-top:50px;
	border-top: 2px solid #787b86;
}
#noticeWrite_main_wrap th{
	width:20%;
	background-color: #f7f7f7;;
	
}



#noticeWrite_main_wrap table th,td{
	height:30px;
}


#noticeWrite_main_wrap table tr{
	border-bottom:1px solid #e3e3e3;
}
#noticeWrite_main_wrap table tr td{
	padding:5px;
}

#noticeWrite_main_wrap table tr:FIRST-CHILD>td input{
	width:98%;
	height:20px;
}


#noticeWrite_main_wrap table #tr2 select{
	width:220px;
	height:25px
}


#noticeWrite_main_wrap textarea {
	width: 98%; 
	height: 160px;
}

/*------------ 버튼 -------------*/
#noticeWrite_main_wrap #button{
	position: relative;
    overflow: hidden;
    margin-top: 10px;
    height: 40px;
    text-align: right;
}
#noticeWrite_main_wrap #button>div{
	margin-right: 3px;
    display: inline-block;
}
#noticeWrite_main_wrap #button #left{
	border:1px solid #2d905b;
}
#noticeWrite_main_wrap #button #left input{
	display: inline-block;
	background: #2d905b;
 	padding: 8px 14px;
 	color:#fff;
}
#noticeWrite_main_wrap #button #right{
	border:1px solid #8b8b8b;
}
#noticeWrite_main_wrap #button #right a{
	display: inline-block;
 	padding: 8px 14px;
 	
}





</style>
</head>
<body>
	<%
		pageContext.include("header.jsp");
	%>
	<form action="noticeWrite.do" method="post">
	<div id="noticeWrite">
		<p>공지사항</p>
		<div id="noticeWrite_text1">
			<span></span>
			<h4>공지 사항</h4>
		</div>
		<div id="noticeWrite_main_wrap">
			<table>
				<tr>
					<th class="background">제목</th>
					<td><input type="text" name="texttitle"></td>
				</tr>
				<tr id="tr2">
					<th>자연휴양림</th>
					<td>
						<select name="forest">
							<option value="휴양림공통">휴양림공통</option>
							<option value="가리왕산(정선)">가리왕산(정선)</option>
							<option value="검마산(영양)">검마산(영양)</option>
							<option value="검봉산(삼척)">검봉산(삼척)</option>
							<option value="낙안민속(순천)">낙안민속(순천)</option>
							<option value="남해편백(남해)">남해편백(남해)</option>
							<option value="진도(진도)">진도(진도)</option>
							<option value="대관령(강릉)">대관령(강릉)</option>
							<option value="대야산(문경)">대야산(문경)</option>
							<option value="덕유산(무주)">덕유산(무주)</option>
							<option value="두타산(평창)">두타산(평창)</option>
							<option value="미천골(양양)">미천골(양양)</option>
							<option value="방장산(장성)">방장산(장성)</option>
							<option value="방태산(인제)">방태산(인제)</option>
							<option value="백운산(원주)">백운산(원주)</option>
							<option value="변산(부안)">변산(부안)</option>
							<option value="복주산(철원)">복주산(철원)</option>
							<option value="신불산(울주)">신불산(울주)</option>
							<option value="산음(양평)">산음(양평)</option>
							<option value="삼봉(홍천)">삼봉(홍천)</option>
							<option value="상당산성(청주)">상당산성(청주)</option>
							<option value="속리산(보은)">속리산(보은)</option>
							<option value="오서산(보령)">오서산(보령)</option>
							<option value="아세안(양주)">아세안(양주)</option>
							<option value="용대(인제)">용대(인제)</option>
							<option value="용현(서산)">용현(서산)</option>
							<option value="용화산(춘천)">용화산(춘천)</option>
							<option value="운문산(청도)">운문산(청도)</option>
							<option value="운악산(포천)">운악산(포천)</option>
							<option value="운장산(진안)">운장산(진안)</option>
							<option value="유명산(가평)">유명산(가평)</option>
							<option value="중미산(양평)">중미산(양평)</option>
							<option value="지리산(함양)">지리산(함양)</option>
							<option value="천관산(장흥)">천관산(장흥)</option>
							<option value="청옥산(봉화)">청옥산(봉화)</option>
							<option value="청태산(횡성)">청태산(횡성)</option>
							<option value="칠보산(영덕)">칠보산(영덕)</option>
							<option value="통고산(울진)">통고산(울진)</option>
							<option value="황정산(단양)">황정산(단양)</option>
							<option value="회문산(순창)">회문산(순창)</option>
							<option value="희리산(서천)">희리산(서천)</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea name="content" id="content"></textarea>
					</td>
				</tr>
			</table>
			<div id="button">
				<div id="left">
					<!-- <a href="noticeWrite.do">등록하기</a> -->
					<input type="submit" name="bjhjbh" value="등록하기">
				</div>
				<div id="right">
					<a href="#">취소하기</a>
				</div>
			</div>
		</div>		
	</div>
	</form>
	<%
		pageContext.include("footer.jsp");
	%>
</body>
</html>