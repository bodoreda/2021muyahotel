<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
* {
    margin: 0;
    padding: 0;
}
.container{
    width: 100%;
    height:auto;
    overflow: hidden;
}
.container1{
	position: absolute; 
    width: 100%;
	height:1100px;
    background-position: 0% 0%;
    background-size: cover;
    background-repeat: no-repeat;
    opacity:80%;
    z-index:1;
    background-image:url(../img/wedding/g1.jpg);
    
}
.container2{
    position: absolute; 
    width: 100%;
	height:1100px;
    background-position: 0% 0%;
    background-size: cover;
    background-repeat: no-repeat;
    opacity:80%;
    z-index:1;
    background-image:url(../img/wedding/c3.jpg);
}
.container3{
    position: absolute; 
    width: 100%;
	height:1100px;
    background-position: 0% 0%;
    background-size: cover;
    background-repeat: no-repeat;
    opacity:80%;
    z-index:1;
    background-image:url(../img/wedding/s5.jpg);
}
.container4{
    position: absolute; 
    width: 100%;
	height:1100px;
    background-position: 0% 0%;
    background-size: cover;
    background-repeat: no-repeat;
    opacity:80%;
    z-index:1;
    background-image:url(../img/wedding/o5.jpg);
}
.center{
	position: absolute; 
	height:auto;
    float:left;
    margin:0 10%;
    width:80%;
    z-index:3;

}
.shadow{
	position: absolute; 
	width:100%;
	height:1100px;
	background-color:rgba(107, 107, 107, 0.11);
	opacity:80%;
	z-index:2;
}
.wiImg1{
	width:450px;
	height:600px;
	margin: auto;
	margin-top:100px;
	background-size: cover;
    background-repeat: no-repeat;
    display:none;
	background-image:url(../img/wedding/invitation1.png);
}
.wiImg2{
	width:450px;
	height:600px;
	margin: auto;
	margin-top:100px;
	background-size: cover;
    background-repeat: no-repeat;
    display:none;
	background-image:url(../img/wedding/invitation2.png);
}
.wiImg3{
	width:450px;
	height:600px;
	margin: auto;
	margin-top:100px;
	background-size: cover;
    background-repeat: no-repeat;
    display:none;
	background-image:url(../img/wedding/invitation3.png);
}
.wiImg4{
	width:450px;
	height:600px;
	margin: auto;
	margin-top:100px;
	background-size: cover;
    background-repeat: no-repeat;
    display:none;
	background-image:url(../img/wedding/invitation4.png);
}
.wiContent{
	padding-top:300px;
}
.wicS1{
	margin-left:100px;
	line-height:25px;
	font-size: 16px;
    color: #9c836a;
    font-family: 'Noto Sans', sans-serif;
}
.wicS2{
	margin-left:45px;
	font-size: 16px;
	line-height:25px;
	color: #666;
    font-family: 'Noto Sans', sans-serif;
}
.wicS3{
	margin-left:30px;
	font-size: 16px;
	line-height:25px;
	color: #666;
    font-family: 'Noto Sans', sans-serif;
}
.wicS4{
	margin-left:130px;
	font-size: 16px;
	line-height:25px;
    color: #666;
    font-family: 'Noto Sans', sans-serif;
}
.wicS5{
	margin-left:110px;
	font-size: 16px;
	line-height:25px;
    color: #666;
    font-family: 'Noto Sans', sans-serif;
}
#miImg{
	width:80px;
	height:70px;
	float:left;
	transition-duration: 1s;
	z-index:10;
	position:absolute;
}
#miA p{
	text-decoration:none;
	font-weight:bold;
	color:rgb(34, 34, 34);
	font-family: 'Noto Sans', sans-serif;
	font-size: 40px;
	line-height:65px;
	float:left;
	opacity: 80%;
	z-index:8;
	position:absolute;
	transition-duration: 1s;
	margin-left:85px;
}
#miA:hover>#miImg{
	transform: translateX(340px);
	
}
#miA:hover>p{
	color:rgb(255, 255, 255);
}
.goMain{
	display:none;
	margin-top:210px;
	margin-left:10px;
}
</style>
</head>
<body>
	<div class="container">
		<c:if test="${weddingReserve.whName eq '그랜드볼룸'}">
			<div class="container1"></div>
			<div class="shadow"></div>
			<div class="center">
				<div class="wiImg1">
					<div class="wiContent">
						<span class="wicS1">성함</span><span class="wicS2">${sessionScope.m.memberName }</span><br>
						<span class="wicS1">예식장</span><span class="wicS3">${weddingReserve.whName }</span><br>
						<span class="wicS1">예식일</span><span class="wicS3">${weddingReserve.wrDate }</span><br><br>
						<span class="wicS4">※ [${weddingReserve.wrNo }] 예약번호에 따라</span><br>
						<span class="wicS5"> 순차적으로 전화상담 드립니다.</span>				
					</div>
					<div class="goMain">
						<a href="/" id="miA"><img src="/img/wedding/main.png" id="miImg"><p>MUYAHOTEL</p></a>				
					</div>
				</div>
			</div>
		</c:if>
		<c:if test="${weddingReserve.whName eq '카프리룸'}">
			<div class="container2"></div>
			<div class="shadow"></div>
			<div class="center">
				<div class="wiImg1">
					<div class="wiContent">
						<span class="wicS1">성함</span><span class="wicS2">${sessionScope.m.memberName }</span><br>
						<span class="wicS1">예식장</span><span class="wicS3">${weddingReserve.whName }</span><br>
						<span class="wicS1">예식일</span><span class="wicS3">${weddingReserve.wrDate }</span><br><br>
						<span class="wicS4">※ [${weddingReserve.wrNo }] 예약번호에 따라</span><br>
						<span class="wicS5"> 순차적으로 전화상담 드립니다.</span>				
					</div>
					<div class="goMain">
						<a href="/" id="miA"><img src="/img/wedding/main.png" id="miImg"><p>MUYAHOTEL</p></a>				
					</div>
				</div>
			</div>
		</c:if>
		<c:if test="${weddingReserve.whName eq '시실리룸'}">
			<div class="container3"></div>
			<div class="shadow"></div>
			<div class="center">
				<div class="wiImg1">
					<div class="wiContent">
						<span class="wicS1">성함</span><span class="wicS2">${sessionScope.m.memberName }</span><br>
						<span class="wicS1">예식장</span><span class="wicS3">${weddingReserve.whName }</span><br>
						<span class="wicS1">예식일</span><span class="wicS3">${weddingReserve.wrDate }</span><br><br>
						<span class="wicS4">※ [${weddingReserve.wrNo }] 예약번호에 따라</span><br>
						<span class="wicS5"> 순차적으로 전화상담 드립니다.</span>				
					</div>
					<div class="goMain">
						<a href="/" id="miA"><img src="/img/wedding/main.png" id="miImg"><p>MUYAHOTEL</p></a>				
					</div>
				</div>
			</div>
		</c:if>
		<c:if test="${weddingReserve.whName eq '야외가든'}">
			<div class="container4"></div>
			<div class="shadow"></div>
			<div class="center">
				<div class="wiImg1">
					<div class="wiContent">
						<span class="wicS1">성함</span><span class="wicS2">${sessionScope.m.memberName }</span><br>
						<span class="wicS1">예식장</span><span class="wicS3">${weddingReserve.whName }</span><br>
						<span class="wicS1">예식일</span><span class="wicS3">${weddingReserve.wrDate }</span><br><br>
						<span class="wicS4">※ [${weddingReserve.wrNo }] 예약번호에 따라</span><br>
						<span class="wicS5"> 순차적으로 전화상담 드립니다.</span>				
					</div>
					<div class="goMain">
						<a href="/" id="miA"><img src="/img/wedding/main.png" id="miImg"><p>MUYAHOTEL</p></a>				
					</div>
				</div>
			</div>
		</c:if>
	</div>
	<script>
		$(function(){
			$(".goMain").fadeIn(2000);
			$(".wiImg1").fadeIn(2000);
			$(".wiImg2").fadeIn(2000);
			$(".wiImg3").fadeIn(2000);
			$(".wiImg4").fadeIn(2000);
		});
	</script>
</body>
</html>