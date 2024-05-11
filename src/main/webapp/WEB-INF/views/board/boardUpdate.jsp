<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<!-- 부트스트랩 CSS -->
<!-- 기본 CSS -->
<!-- jQuery라이브러리 추가(2개) -->
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<!-- 부트스트랩 jQuery -->
<script type="text/javascript" src="/js/bootstrap.bundle.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#center-muya{
height: 128.400px  !important;
}

#muyaSub{
padding-left: 40px;
margin-top:16px;
}

#mookBtn{
box-sizing: content-box  !important; 
}
*, ::after, ::before {
   box-sizing: content-box  !important; 
}
#boardK{
 width: 474px  !important; 
 height: 36px  !important; 
}


/**/

li {
	color: #9C836A;
}



h2 {
	color: #695847;
	text-decoration: underline;
}

h1 {
	color: #4F3E2E;
	color: #695847;
}

p {
	color: #9C836A;
	margin-left: 200px;
	font-weight: bolder;
}

.wrapper {
	overflow: hidden;
}

.board-wrapper {
	width: 80%;
	margin-top: 100px;
	margin-left: 10%;
	margin-bottom: 100px;
	border: 3px solid #9C836A;
	border-radius: 8px;
	background-color: #fff;
	opacity: 0.7;
	padding : 40px;
	
}
#writeBtn{
 		   border: 2px solid #9C836A;
            background-color: transparent;
			color: #282828;
			opacity: 0.8;
			border-radius: 3px;
			text-decoration: none;
			font-weight: 400;
			line-height: 1.5;
			padding: 10px;
			display:flex;
			margin: 0 auto;
}

a{
	text-decoration  :none;
	color : #282828;
	font-weight : bold;
}
td{
	color : #282828;
	font-weight : bold;
	
}
tr{
	border-bottom : 1px solid #9C836A;
	height : 48px;
	
}

textarea.form-control{
width: 500px;
height: 200px;
margin : 0 auto;
resize:none
}
input.form-control{
width: 500px;
height: 50px;
margin : 0 auto;
}


</style>
</head>
<body>
 <div class="wrapper">
		<div class="header">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
		<div class="board-wrapper">
            <h1>게시글 작성</h1>
            <hr>
           
            <div class="center">
           <form action="/boardUpdate.do" method="post" enctype="multipart/form-data">
	<input type ="hidden" name = "boardNo" value="${b.boardNo }">
	
		<p> 제목 </p> <input type="text" id="boardK" name="boardTitle" class="form-control"><br>
		  <p>작성자 </p> <input type="text" id="boardK" name="boardWriter"  class="form-control"
					value="${sessionScope.m.memberId }" readonly><br>
		<p>파일 </p> <input type="file" id="boardK" name="files" multiple class="form-control"><br>
		<p>내용 </p> <textarea rows="5" cols="20" name="boardContent" class="form-control"></textarea><br>
		<input id="writeBtn" type="submit" value="작성">
	</form>
            </div>
           
		
		</div>
		<div class="footer">
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</div>
</body>
</html>