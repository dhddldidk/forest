<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="smarteditor/workspace/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
    //전역변수선언
    var editor_object = [];
    
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "smarteditor/workspace/SmartEditor2Skin.html",    
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,                
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,        
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,    
        }
    });
    
    //전송버튼 클릭이벤트
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
        
        // 이부분에 에디터 validation 검증
        
        //폼 submit
        $("#frm").submit();
    })
})
</script>
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
	border: 1px solid black;
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
					<th>제목</th>
					<td><input type="text" name="texttitle"></td>
				</tr>
				<tr>
					<th>자연휴양림</th>
					<td>
						<select name="forest">
							<option value="">휴양림공통</option>
							<option value="가리왕산(정선)">가리왕산(정선)</option>
							<option value="">검마산(영양)</option>
							<option value="">검봉산(삼척)</option>
							<option value="">낙안민속(순천)</option>
							<option value="">남해편백(남해)</option>
							<option value="">진도(진도)</option>
							<option value="">대관령(강릉)</option>
							<option value="">대야산(문경)</option>
							<option value="">덕유산(무주)</option>
							<option value="">두타산(평창)</option>
							<option value="">미천골(양양)</option>
							<option value="">방장산(장성)</option>
							<option value="">방태산(인제)</option>
							<option value="">백운산(원주)</option>
							<option value="">변산(부안)</option>
							<option value="">복주산(철원)</option>
							<option value="">신불산(울주)</option>
							<option value="">산음(양평)</option>
							<option value="">삼봉(홍천)</option>
							<option value="">상당산성(청주)</option>
							<option value="">속리산(보은)</option>
							<option value="">오서산(보령)</option>
							<option value="">아세안(양주)</option>
							<option value="">용대(인제)</option>
							<option value="">용현(서산)</option>
							<option value="">용화산(춘천)</option>
							<option value="">운문산(청도)</option>
							<option value="">운악산(포천)</option>
							<option value="">운장산(진안)</option>
							<option value="">유명산(가평)</option>
							<option value="">중미산(양평)</option>
							<option value="">지리산(함양)</option>
							<option value="">천관산(장흥)</option>
							<option value="">청옥산(봉화)</option>
							<option value="">청태산(횡성)</option>
							<option value="">칠보산(영덕)</option>
							<option value="">통고산(울진)</option>
							<option value="">황정산(단양)</option>
							<option value="">회문산(순창)</option>
							<option value="">희리산(서천)</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<th>
						<textarea class="inp" style="width: 95%; height: 120px;"
							name="content" id="smarteditor">
						</textarea>
					</th>
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