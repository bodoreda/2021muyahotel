<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
<style>

#muyaSub{
width: 560px !important;
height: 96.400px  !important;
margin-top:16px  !important;
margin-bottom: 16px  !important;
padding-left: 40px;
}

/**/




* {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	font-family: sans-serif;
}

body {
	background-image: #34495e;
}

.idForm {
	width: 500px;
	height: 500px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	/* border-radius: 15px; */
	margin: 0 auto;
	margin-top: 60px;
	border: 1px solid #9c836a;
	margin-bottom: 50px;
}

.idForm h2 {
	text-align: center;
	margin: 30px;
}

.nameForm {
	border-bottom: 2px solid #adadad;
	margin: 50px;
	padding: 10px 10px;
}

.phoneForm {
	border-bottom: 2px solid #adadad;
	margin: 50px;
	padding: 10px 10px;
}

.name {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.phone {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.bottomText {
	width: 150px;
	font-family: 'Noto Sans ', sans-serif;
	color: #9c836a;
	margin: 0 auto;
	
}

#searchId {
	margin-top: 50px;
	text-align: center;
	color: rgb(12, 62, 114);
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
	font-size: 30px;
}

.underlineHover {
	color: #9c836a;
}

.underlineHover:after {
	display: block;
	left: 0;
	bottom: -10px;
	width: 0;
	height: 2px;
	background-color: #9c836a;
	/* background-color:#fff; */
	content: "";
	transition: width 0.2s;
}

.underlineHover:hover {
	color: rgb(12, 62, 114);
}

.underlineHover:hover:after {
	width: 100%;
}

.wrap {
	width: 500px;
	height: 500px;
	margin: 0 auto;
	margin-bottom: 80px;
	box-shadow: 30px 30px 30px #e3dede;
}
input[type=submit] {
   background-color: #9c836a; 
  /* background-color: rgb(12, 62, 114); */
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
   text-decoration: none; 
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  font-family: 'Noto Sans KR', sans-serif;
  cursor:pointer;
  
/*  -webkit-box-shadow: 0 10px 30px 0 rgba(168,123,93,66);
  box-shadow: 0 10px 30px 0 rgba(168,123,93,66);  */
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=submit]:hover {
  background-color: rgb(12, 62, 114);
  font-family: 'Noto Sans KR', sans-serif;
}
.icon{
	 text-align:center; 
	
}
.icon>i{
	font-size: 18px;
	margin-top:20px;
	color:#8b8687;
	display:block;
	
}

</style>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div style="width: 100%;">
	<div class="icon">
		<i class="xi-help">아이디를 찾으시려면 이름과 전화번호를 입력해주세요.</i>	
	</div>
		<div class="wrap">
			<form action="/idSearch.do" class="idForm">
				
				<h2 id="searchId">아이디 찾기</h2>
				<div class="nameForm">
					<input type="text" class="name" name="memberName"
						placeholder="이름을 입력하세요">
				</div>
				<div class="phoneForm">
					<input type="text" class="phone" name="phone"
						placeholder="ex)01012345678">
				</div>
				<input type="submit" class="fadeIn fourth" value="Search">
				<div class="bottomText">
					<a href="/pwSearchFrm.do" class="underlineHover">Forget
						Password ?</a>
					<a href="/loginFrm.do" class="underlineHover">Go to login !</a>	
				</div>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>