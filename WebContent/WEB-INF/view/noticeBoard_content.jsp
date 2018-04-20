<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#noticeboard {
	width: 1180px;
	margin: 0 auto;
	
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 20px;
}

#noticeboard p {
	height: 60px;
	font-size: 30px;
	color: #333;
	font-weight: bold;
	border-bottom: 1px solid #e3e3e3;
	line-height: 60px;
}
  

  
#contentAll{
	margin-top:50px;
	padding-bottom:50px;
}
#contentAll #title{
	margin-bottom:10px;
}
#contentAll #title>span{
	color: #37674d;
	font-size:20px;
	font-weight: bold;
}
#contentAll #board_wrap{
	border-top:2px solid #787b86;
	
}

/*------------ ul1 ------------*/
#contentAll #board_wrap ul#ul1{	
	width:100%;
	height:20px;
	padding-top:10px;
	padding-bottom:10px;
	border-bottom: 1px solid #e3e3e3;
}
#contentAll #board_wrap ul#ul1>li{
	float:left;	
}

#contentAll #board_wrap ul#ul1 li#ul1_li1{
	font-weight: bold;
	font-size: 15px;
}
#contentAll #board_wrap ul#ul1 li#ul1_li2{
	padding-left:15px;
	padding-right:10px;

}
#contentAll #board_wrap ul#ul1 li#ul1_li3{
	padding-left:15px;
	padding-right:15px;
	color: #e3e3e3;
}
#contentAll #board_wrap ul#ul1 li#ul1_li4{
	padding-left:10px;
	padding-right:15px;
	font-weight: bold;
	font-size: 15px;
}
#contentAll #board_wrap ul#ul1 li#ul1_li5{
	
}
#contentAll #board_wrap ul#ul1 li#ul1_li6{
	padding-left:15px;
	padding-right:15px;
	color: #e3e3e3;
}
#contentAll #board_wrap ul#ul1 li#ul1_li7{
	font-weight: bold;
	font-size: 15px;
}
#contentAll #board_wrap ul#ul1 li#ul1_li8{
	padding-left:15px;
	padding-right:15px;
}
#contentAll #board_wrap ul#ul1 li#ul1_li9{
	padding-left:540px;
	padding-right:10px;
	font-weight: bold;
	font-size: 15px;
}
   
/*------------ ul2 ------------*/
/* #contentAll #board_wrap ul#ul2{
	height:40px;
	padding-top:10px;
	padding-bottom:10px;
	line-height: 40px;
	border-bottom: 1px solid #e3e3e3;
}
#contentAll #board_wrap ul#ul2>li{
	float:left;	
	line-height: 40px;
}
#contentAll #board_wrap ul#ul2 li#ul2_li1{
	font-weight: bold;
	font-size: 15px;
}
#contentAll #board_wrap ul#ul2 li#ul2_li2{
	padding-left:15px;
	padding-right:15px;
	color: #e3e3e3;
} */

#contentAll #content{
	text-align: center;
	padding:20px 25px;
	border-bottom:2px solid #787b86;
}


/*------------ 다음글 이전글 ------------*/
/* #contentAll #nextpre{
	border-top:1px solid #787b86;
	border-bottom:1px solid #787b86;
}

#contentAll #nextpre #pre{
	border-bottom:1px solid #e3e3e3;
	height:70px;
}
#contentAll #nextpre #pre span{
	float:left;
	width:85px;
	height:70px;	
	text-align: center;
	line-height:70px;
	background: #f7f7f7;
} 
#contentAll #nextpre #pre #pre_textwrap{
	line-height:35px;
}

#contentAll #nextpre #pre #pre_textwrap #pre_text1{
	margin-left:100px;
}
#contentAll #nextpre #pre #pre_textwrap #pre_text2{
	margin-left:100px;	
}


#contentAll #nextpre #next{
	height:70px;
}
#contentAll #nextpre #next span{
	float:left;
	width:85px;
	height:70px;
	text-align: center;
	line-height:70px;
	background: #f7f7f7;	
}
#contentAll #nextpre #next #next_textwrap{
	line-height:35px;
}

#contentAll #nextpre #next #next_textwrap #next_text1{
	margin-left:100px;
}
#contentAll #nextpre #next #next_textwrap #next_text2{
	margin-left:100px;
} */


/*------------ 목록보기 버튼 ------------*/
#contentAll #Listbtn{
	height:40px;
	margin-top:10px;
	text-align: right;
}
#contentAll #Listbtn>div{
	display: inline-block;
	background: #2d905b;
	border: 1px solid #22794b;
	width:70px;
	height:30px;
	margin-right:5px;
	
	
}
#contentAll #Listbtn>div a{
	color:#fff;
	padding:8px 10px;
	line-height: 30px;
	
}

 

</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<%
		pageContext.include("header.jsp");
	%>
	<!-- <form action="noticeBoard.do" method="post"> -->
	<div id="noticeboard">
		<p>공지사항</p>
		<div id=contentAll>
			<div id=title><span>국립자연휴양림 숲속결혼식 참여자 모집</span></div>
			<div id="board_wrap">
				<ul id="ul1">
					<li id="ul1_li1">휴양림</li>
					<li id="ul1_li2">휴양림 공통</li>
					<li id="ul1_li3">|</li>
					<li id="ul1_li4">등록자</li>
					<li id="ul1_li5">국립자연휴양림관리소</li>
					<li id="ul1_li6">|</li>
					<li id="ul1_li7">등록일</li>
					<li id="ul1_li8">2018-04-17</li>					
					<li id="ul1_li9">조회수</li>
					<li id="ul1_li10">35</li>				
				</ul>				
				<!-- <ul id="ul2">
					<li id="ul2_li1">첨부파일</li>
					<li id="ul2_li2">|</li>
					<li>ㆍ공고문(2018년 국립자연휴양림 숲속 결혼식 참여자 모집).hwp</li>	
				</ul>	 -->		
			</div>	
			<div id="content">
					${notice.nb_content }
			</div>
			<!-- <div id="nextpre">
				<div id="pre">
					<span>이전글</span>
					<div id="pre_textwrap">
						<div id="pre_text1"><a href="#">산음_숲속수련장 예약 시 체크박스 요청</a></div>
						<div id="pre_text2">2018-04-19</div>
					</div>
				</div>
				<div id="next">
					<span>다음글</span>
					<div id="next_textwrap">
						<div id="next_text1"><a href="#">개성만점 국립자연휴양림 만들기 아이디어 공모</a></div>
						<div id="next_text2">2018-04-17</div>
					</div>
				</div>				
			</div> -->
			<div id="Listbtn">
				<div>
					<a href="#">목록보기</a>
				</div>
			</div>
			
			
				
		</div>
	</div>
	<!-- </form> -->
	<%
		pageContext.include("footer.jsp");
	%>
</body>
</html>