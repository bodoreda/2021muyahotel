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
#mookBtn{
	box-sizing: content-box  !important;
}
#moyattom{
box-sizing: content-box  !important;

}
#muyaSub{
box-sizing: content-box  !important;
}

#mmub{
box-sizing: content-box  !important;

}
#mmub li{
box-sizing: content-box  !important;
}

#mmub li a{

box-sizing: content-box  !important;
height: 34.400px  !important;
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
}
#lastPleas{
width: 1251.310px  !important;
height: 1627.200px  !important;
padding:: 40px;

}


/**/
li{
color: #9C836A;
}
#spament{
	color:white;
}
h2{
	
	color : #695847;
	text-decoration : underline;
}
h1{
	color :#4F3E2E;
	color : #695847;
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
	padding-top:100px;
	padding-left:40px;
	padding-right:40px;
	float: right;
	width: 85%;
}

.info-wrapper {
	overflow:hidden;
	clear: both;
}

.info-no {
	width: 15%;
	float: left;

}

.info-content {
	width: 85%;
	padding-top:100px;
	padding-left:40px;
	float: right;

}

.footer {
	
}
</style>
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
		
		<div id="muyaSpa">
		<div id="please" class="nav-wrapper">
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">소개하는 글</a></li>
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
						<img src="/img/spa/spa1.jpg" class="d-block w-100"
							alt="First slide">
						<div class="carousel-caption d-none d-md-block">
							<h5 id="spament">아로마 테라피</h5>
							<p id="spament">아로마 테라피로 지친 하루를 회복하세요</p>
						</div>
					</div>
					<div class="carousel-item spaimg" data-bs-interval="6000">
						<img src="/img/spa/spa2.jpg" class="d-block w-100"
							alt="Second slide">
						<div class="carousel-caption d-none d-md-block">
							<h5 id="spament">온수 수영장</h5>
							<p id="spament">365일 따뜻한 온수에서 수영을 즐기세요</p>
						</div>
					</div>
					<div class="carousel-item spaimg">
						<img src="/img/spa/spa3.jpg" class="d-block w-100"
							alt="Third slide">
						<div class="carousel-caption d-none d-md-block">
							<h5 id="spament">프라이빗 마사지</h5>
							<p id="spament">가족 혹은 연인과 함께 마사지를 즐기세요</p>
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

		<div  class="info-wrapper">
			<div class="info-no"></div>
			<div id="lastPleas" class="info-content">
				<h1># 스파</h1>
				<h2><u>바쁜 도시의 일상에서 벗어난 변치 않는 휴식</u></h2>
				<p>오롯이 심신의 건강을 고려한 활력 있는 다중감각 공간으로서, 무야호텔은 편안하고 여유로운 환경에서 프리미엄
					수분공급이라는 독특한 경험을 제공해 드립니다.</p>
				<br>
				<p>물의 순환을 모방한 트리트먼트 코스는 모든 감각을 자극하기 위한 물의 모든 상태를 경험하실 수 있도록
					해드립니다.</p>
				<br>
				<p>무야호텔 스파는 에비앙 물에 투영된 4가지 경험 (Celestial, Mineral, Precious,
					Vitalizing)을 통해 자연의 기적을 불러 일으키는 코스로 구성이 되어 있습니다.</p>
				<br>
				<p>천상의 휴식처, 무야호텔 스파에서 오염된 환경으로부터 고객님의 심신 치유, 혼잡한 일상에서의 탈출, 피부의
					노화방지 및 재생을 약속 드립니다.</p>
				<ul>
					<li>스파 시설</li>
					<li>개인 라커와 샤워시설을 갖춘 6개의 트리트먼트룸</li>
					<li>개인 자쿠지를 갖춘 1개의 VIP 커플 스위트룸</li>
					<li>휴게라운지와 에비앙 아쿠아 바</li>
					<li>건식, 습식 사우나, 자쿠지, 풀</li>
				</ul>
				<p>요금과 트리트먼트는 사전 통보 없이 변경될 수 있으며, 모든 요금에 10% 세금이 포함되어 있습니다.</p>
				<br> <br>
				<h1>마사지</h1>
				<h2>바쁜 도시의 일상에서 벗어난 변치 않는 휴식</h2>
				<p>오롯이 심신의 건강을 고려한 활력 있는 다중감각 공간으로서, 무야호텔은 편안하고 여유로운 환경에서 프리미엄
					수분공급이라는 독특한 경험을 제공해 드립니다.</p>
				<br>
				<p>물의 순환을 모방한 트리트먼트 코스는 모든 감각을 자극하기 위한 물의 모든 상태를 경험하실 수 있도록
					해드립니다.</p>
				<br>
				<p>무야호텔 스파는 에비앙 물에 투영된 4가지 경험 (Celestial, Mineral, Precious,
					Vitalizing)을 통해 자연의 기적을 불러 일으키는 코스로 구성이 되어 있습니다.</p>
				<br>
				<p>천상의 휴식처, 무야호텔 스파에서 오염된 환경으로부터 고객님의 심신 치유, 혼잡한 일상에서의 탈출, 피부의
					노화방지 및 재생을 약속 드립니다.</p>
				<ul>
					<li>스파 시설</li>
					<li>개인 라커와 샤워시설을 갖춘 6개의 트리트먼트룸</li>
					<li>개인 자쿠지를 갖춘 1개의 VIP 커플 스위트룸</li>
					<li>휴게라운지와 에비앙 아쿠아 바</li>
					<li>건식, 습식 사우나, 자쿠지, 풀</li>
				</ul>
				<p>요금과 트리트먼트는 사전 통보 없이 변경될 수 있으며, 모든 요금에 10% 세금이 포함되어 있습니다.</p>
				<br> <br>
				<h1>수영장</h1>
				<h2>바쁜 도시의 일상에서 벗어난 변치 않는 휴식</h2>
				<p>오롯이 심신의 건강을 고려한 활력 있는 다중감각 공간으로서, 무야호텔은 편안하고 여유로운 환경에서 프리미엄
					수분공급이라는 독특한 경험을 제공해 드립니다.</p>
				<br>
				<p>물의 순환을 모방한 트리트먼트 코스는 모든 감각을 자극하기 위한 물의 모든 상태를 경험하실 수 있도록
					해드립니다.</p>
				<br>
				<p>무야호텔 스파는 에비앙 물에 투영된 4가지 경험 (Celestial, Mineral, Precious,
					Vitalizing)을 통해 자연의 기적을 불러 일으키는 코스로 구성이 되어 있습니다.</p>
				<br>
				<p>천상의 휴식처, 무야호텔 스파에서 오염된 환경으로부터 고객님의 심신 치유, 혼잡한 일상에서의 탈출, 피부의
					노화방지 및 재생을 약속 드립니다.</p>
				<ul>
					<li>스파 시설</li>
					<li>개인 라커와 샤워시설을 갖춘 6개의 트리트먼트룸</li>
					<li>개인 자쿠지를 갖춘 1개의 VIP 커플 스위트룸</li>
					<li>휴게라운지와 에비앙 아쿠아 바</li>
					<li>건식, 습식 사우나, 자쿠지, 풀</li>
				</ul>
				<p>요금과 트리트먼트는 사전 통보 없이 변경될 수 있으며, 모든 요금에 10% 세금이 포함되어 있습니다.</p>
			</div>
		</div>
		
		</div>
		<div class="footer">
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</div>
</body>
</html>