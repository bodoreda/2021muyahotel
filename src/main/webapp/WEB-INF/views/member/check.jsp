<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
<!--font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<style>
.container {
	width: 100%;

	
}

.wrap2 {
	width: 800px;
	height: 300px;
	/* border: 3px solid #9c836a; */
	 margin: 0 auto; 
	margin-bottom: 50px;
 	margin-top:50px;
	 /* background-color: #9c836a;  */
	text-align:center;
}

/* .explan{
	border: 3px solid #9c836a;
	 width:700px; 
	  margin: 0 auto;
	  height:300px;
	  margin-top:40px;
} */

.Title {
	text-align: center;
	margin-top: 30px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
	font-size: 35px;
	color: #9c836a;
	margin-bottom:50px;
}

.information {
	margin: 0 auto;
}

.msg {
	text-align: center;
	padding-top: 60px;
	font-family: 'Noto Sans KR', sans-serif;
	 color: rgb(12, 62, 114); 
	 font-size:40px;
	
}

.name {
	font-size: 50px;
	font-family: 'Do Hyeon', sans-serif;
}

.page {
	text-align: center;
	padding-top: 40px;
	font-family: 'Noto Sans KR', sans-serif;
	color: rgb(12, 62, 114);
}

.page>a {
	text-decoration: none;
	color: rgb(12, 62, 114);
}
.page>a:hover{
	color:rgb(12, 62, 114);
}

.level {
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
	color: rgb(12, 62, 114);
}

p {
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
	color: #a3a1a1;
	font-size:17px;
}
/* .explan>p:nth-child(1){
	margin-top:80px;
} */
/* .wrap1{
	background-image: url('/img/check.jpeg');
	background-repeat:no-repeat;
	background-size:100% 400px;
	
} */
fieldset{
	width: 1000px;
	margin: 0 auto;
	margin-bottom:50px;
	
}
.wrap3{
 width:900px;
 height:300px;
 margin:0 auto;
 display:flex;
 justify-content:center;
 margin-top:50px;

}
.wrap3-1{
 width: 300px;
 height:100%;
 /* ber: 1px solid red; */
 /* margin-right: 20px; */
 
}
.wrap3-2{
 width: 300px;
 borheight:10
 /* border: 1px solid red; */
 /* margin-right: 20px; */
}
.wrap3-3{
 width: 300px;
 height:100%;
 /* border: 1px solid red; */
 /* margin-right: 20px; */
}

</style>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="wrap1">
	<div class="container">
	<fieldset>
	<legend> <h2 class="Title">MUYAHOTEL</h2></legend>
		<div class="explan">
			<p>무야호텔 홈페이지를 통해 객실 예약이 가능합니다.(반려견 객실 예약 가능)</p>
			<p>편의시설(스파, 마사지, 웨딩홀)예약이 가능하고, 반려용품 또한 구매가 가능합니다.</p>
			<p>구매 시, 포인트 적립 됩니다.<span style="font-weight:bold; color:#7C7877">(최초 가입 시 등급 : Silver)</span></p>
			<p>각종 이벤트 참여를 통해 혜택을 얻어보세요.</p>
		</div>
		<div  class="wrap3">
			<div class="wrap3-1">
				<img src="/img/coucou.jpeg" style="max-width:300px; height:100%;margin-right: 20px;">
			</div>
			<div class="wrap3-2">
				<img src="/img/reservation.jpeg" style="max-width:300px; height:100%;margin-right: 20px;">
			</div>
			<div class="wrap3-3">
				<img src="/img/point.png" style="max-width:300px; height:100%;margin-right: 20px;">
			</div>
<!-- 			<div class="wrap3-4"></div> -->
		</div>
		<div class="wrap2">
			<h2 class="msg">
				<span class="name">${mem.memberName }</span>님 회원가입을 축하합니다 ! <!-- ${name} -->
			</h2>
			<div class="page">
				<a href="/">메인으로  </a> | <a href="/loginFrm.do">로그인</a>
			</div>
		</div>
		</fieldset>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>