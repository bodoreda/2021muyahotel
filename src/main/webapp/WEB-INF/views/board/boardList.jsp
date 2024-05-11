<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
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
/**/
.pagination {
	justify-content: center;
}

li {
	color: #9C836A;
}

#spament {
	color: white;
}

h2 {
	color: #695847;
	text-decoration: underline;
}

h1 {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
	/* font-size:30px; */
	text-align: left;
	color: #695847;
	padding-bottom:40px;
}

p {
	color: #9C836A;
}

.wrapper {
	overflow: hidden;
	background-image: url('/img/boardimg.jpeg');
	background-repeat:no-repeat;
	background-size:100% 30%;
	opacity:0.9;
	/* margin-top:100px; */
}

.board-wrapper {
	width: 80%;
	margin-top: 650px;
	margin-left: 10%;
	margin-bottom: 100px;
	border: 2px solid #9C836A;
	border-radius: 8px;
	background-color: #fff;
	opacity: 0.7;
	padding: 50px 50px 20px;
}

#writeBtn {
	float: right;
	border: #9C836A;
	border-radius: 8px;
	background-color: #9C836A;
	color: white;
	opacity: 0.7;
}

.title {
	text-decoration: none;
	color: #282828;
	font-weight: bold;
}

td {
	color: #282828;
	font-weight: bold;
	text-align: center;
	line-height: 2.0em;
}

tr {
	border-bottom: 1px solid #9C836A;
	height: 40px;
	text-align: center;
}
#pageNavi{
	margin-top:30px;
}
#pageNavi>a {
	color: #282828;
}
.title:hover{
	color: rgb(12, 62, 114);
	font-size:17px;
}
#writeBtn:hover{
	background-color:rgb(12, 62, 114);
}

</style>
</head>
<body>
<div class="header">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
	<div class="wrapper">		
		<div class="board-wrapper">
		<h1>공지사항</h1>
		<c:if test="${sessionScope.m.memberLevel==4 }">
					<div id="writeBtn" class="writeBtn1">
						<a id="writeBtn" class="btn btn-info writeBtn"
							href="/boardWriteFrm.do">글쓰기</a>
					</div>
				</c:if>
			<table class="table">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${list }" var="b" varStatus="i">
					<tr>
						<td>${b.boardNo }</td>
						<td><a href="/boardView.do?boardNo=${b.boardNo }" class="title">${b.boardTitle }</a></td>
						<td>${b.boardWriter }</td>
						<td>${b.boardDate }</td>
					</tr>
				</c:forEach>
			</table>
			<div id="pageNavi">${pageNavi}</div>
		</div>
		<div class="footer">
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</div>
</body>
</html>