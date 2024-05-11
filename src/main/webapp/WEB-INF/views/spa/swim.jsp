<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#center-muya{
height: 128.400px;
}
#muyaSub{
width: 560px !important;
height: 96.400px !important;
padding-left: 40px !important;
margin-top:16px !important;
}
#muyaSub li{
height: 96.400px !important;
}


*, ::after, ::before {
    box-sizing: content-box  !important;
}
#please{
width: 221.875px !important;
height: 194px  !important;
}

#veryPleas{
width: 1211.310px  !important;
height: 807.531px  !important;
padding-left:40px !important;
padding-right:40px !important;
}

#stop{
margin-top:0px !important;
}

/**/

#spament{
	color:white;
}
h1{
	color : #4F3E2E;
}
p{
	color: #9C836A;
}

.wrapper {
	overflow: hidden;
}

.nav-wrapper {
	width: 15%;
	height:200px;
	margin-top :100px;
	margin-left : 2%;
	float: left;
	position: fixed;
	border : 3px solid  #9C836A;
	border-radius: 8px;
	background-color : #fff;
	opacity: 0.7;
	

}
.nav-wrapper>ul>li{
	margin : 0 auto;
	height :50px;
}
.nav-wrapper>ul>li>a{
	color : #B39A70;
	font : bold;
	
	
}
.img-wrapper {
	padding-top: 100px;
	padding-left: 80px;
	padding-right: 80px;
	float: right;
	width: 85%;
}

.info-wrapper {
	overflow: hidden;
	clear: both;
}

.info-no {
	width: 15%;
	float: left;
}

.info-content {
	width: 85%;
	padding-top: 100px;
	padding-right: 50px;
	float: right;
}

.sub-info {
	overflow: hidden;
}

.sub-left-info {
	float: left;
}

.sub-right-info {
	float: left;
	list-style: none;
}

.sub-right-info>ul {
	list-style: none;
}

.sub-left-info>ul {
	list-style: none;
}

.sub-left-info>ul>li {
	padding-top: 15px;
	color: #9C836A;
}

.sub-right-info>ul>li {
	padding-top: 15px;
	color: #9C836A;
}

.sub-bottom-info {
	clear: both;
}

.sub-bottom-info>ul>li {
	padding-top: 15px;
	color: #9C836A;
}

.footer {
 clear:both;
}
</style>
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
	<div id="please" class="nav-wrapper">
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/spa.do">소개하는 글</a></li>
				<li class="nav-item"><a class="nav-link" href="/spaResFrm.do">스파</a></li>
				<li class="nav-item"><a class="nav-link" href="/massRes.do">마사지</a></li>
				<li class="nav-item"><a class="nav-link" href="/swim.do">수영장</a></li>
			</ul>
		</div>
	<div id="veryPleas" class="img-wrapper">
			<div id="carouselExampleDark" class="carousel carousel-dark slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleDark"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleDark"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleDark"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active spaimg" data-bs-interval="6000">
						<img src="/img/spa/swim1.jpg" class="d-block w-100"
							alt="First slide">
						<div class="carousel-caption d-none d-md-block">
							<h5 id="spament">실내 수영장</h5>
							<p id="spament">365일 따뜻한 온수에서 수영을 즐기세요</p>
						</div>
					</div>
					<div class="carousel-item spaimg" data-bs-interval="6000">
						<img src="/img/spa/swim2.jpg" class="d-block w-100"
							alt="Second slide">
						<div class="carousel-caption d-none d-md-block">
							<h5 id="spament">야외 수영장</h5>
							<p id="spament">365일 따뜻한 온수에서 수영을 즐기세요</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleDark" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleDark" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>

		<div class="info-wrapper">
			<div class="info-no"></div>
			<div id="stop" class="info-content">
				<div class="info-no"></div>
			<div class="info-content">
					<h1>실내 수영장</h2>
					<br>
					<p>모던하고 럭셔리한 분위기와 감각적인 디자인의 실내 수영장입니다. 자동 필터링 관리 시스템으로 최상의 수질을
						자랑하며 사계절 내내 쾌적함 여유로움을 느낄 수 있습니다.</p>
					<br>
					<p>안락한 풀사이드 선라운저와 체온 유지풀은 긴장과 피로를 완화하여 재충전의 기회를 제공합니다.</p>
					<br>
					<p>[사회적 거리두기 1.5단계​ 기간 연장에 따른 이용 안내]</p>
					<br>
					<p>- 시행기간 : 2021/06/14 ~ 2021/07/04</p>
					<br>
					<p>- 내용 : 06:00~22:00 (정상운영)</p>
					<br>
					<hr>
					<h1>실외 수영장</h1>
					<br>
					<p>해운대 전망을 감상하며 즐길 수 있는 사계절 온수풀 입니다. 끝없이 펼쳐진 해운대 전경과 완벽한 조화를
						이루는 인피니티 풀은 이국적인 분위기를 자아냅니다.</p>
					<br>
					<p>[사회적 거리두기 1.5단계​ 기간 연장에 따른 이용 안내]</p>
					<br>
					<p>- 시행기간 : 2021/06/14 ~ 2021/07/04</p>
					<br>
					<p>- 내용 : 06:00~22:00 (정상운영)</p>
					<br>
					<hr>
					<h1>추가정보</h1>
					<div class="sub-info">
						<div class="sub-left-info">
							<ul>
								<li>타입</li>
								<li>위치</li>
								<li>이용시간</li>
							</ul>
						</div>
						<div class="sub-right-info">
							<ul>
								<li>실내수영장</li>
								<li>6F</li>
								<li>06:00~22:00</li>
							</ul>
						</div>
						<div class="sub-bottom-info">
							<ul>
								<li>시설구성 : Main Pool, Plunge Pool, Sunlounger</li>
								<li>Indoor Pool 이용 수칙 : 유아 및 어린이 (13세미만) 보호자 동반 입장 가능</li>
								<li>수모 별도 판매 : 성인 16,000원 / 어린이 11,000원 (세금포함)</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<%@ include file="/WEB-INF/views/common/footer.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>