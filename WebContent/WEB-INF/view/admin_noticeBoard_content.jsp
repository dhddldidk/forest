<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
     //치환 변수 선언합니다.
      pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
      pageContext.setAttribute("br", "<br/>"); //br 태그
%>
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


#contentAll #content{
	text-align: center;
	padding:20px 25px;
	border-bottom:2px solid #787b86;
}




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
		pageContext.include("admin_header.jsp");
	%>
	<div id="noticeboard">
		<p>공지사항</p>
		<div id=contentAll>
			<div id=title><span>${notice.nb_title }</span></div>
			<div id="board_wrap">
				<ul id="ul1">
					<li id="ul1_li1">휴양림</li>
					<li id="ul1_li2">${notice.nb_forest }</li>
					<li id="ul1_li3">|</li>
					<li id="ul1_li4">등록자</li>
					<li id="ul1_li5">국립자연휴양림관리소</li>
					<li id="ul1_li6">|</li>
					<li id="ul1_li7">등록일</li>
					<li id="ul1_li8"><fmt:formatDate value="${notice.nb_date }" type="date" pattern="yyyy-MM-dd"/></li>					
					<li id="ul1_li9">조회수</li>
					<li id="ul1_li10">${notice.nb_count }</li>				
				</ul>						
			</div>	
			<div id="content">
					  ${fn:replace(notice.nb_content, crcn, br)}
			</div>
			<div id="Listbtn">
				<div>
					<a href="#">수정</a>					
				</div>
				<div>					
					<a href="adminnoticeBoardDel.do?nb_no=${notice.nb_no }">삭제</a>			
				</div>
				<div>					
					<a href="adminnoticeBoard.do">목록보기</a>
				</div>
			</div>			
		</div>
	</div>
	
	<%
		pageContext.include("footer.jsp");
	%>
</body>
</html>