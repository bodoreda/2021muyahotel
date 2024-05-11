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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.wrapper {
	overflow: hidden;
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
	color: #4F3E2E;
	color: #695847;
}

p {
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
	padding-left: 100px;
	padding-right: 100px;
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
	padding-left: 40px;
	float: right;
}

#btbt {
	border: 2px solid #9C836A;
	color : #282828;
	opacity: 0.8;
	border-radius: 3px;
	text-decoration : none;
	font-weight: 400;
    line-height: 1.5;
	padding :10px
	
}
#btgroup{
	float : right;
}
</style>
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
		<div class="nav-wrapper">
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">소개하는 글</a></li>
				<li class="nav-item"><a class="nav-link" href="/spaResFrm.do">스파</a></li>
				<li class="nav-item"><a class="nav-link" href="/massRes.do">마사지</a></li>
				<li class="nav-item"><a class="nav-link" href="/swim.do">수영장</a></li>
			</ul>
		</div>
		<div class="img-wrapper">
			<div id = "">
				<a href="/spaResFrm.do" id="btbt">예약하기</a> 
				<a href="/spaResView.do"id="btbt" >예약내역보기</a>
			</div>			<br> <br>
			<div class="Res-wrapper">
				<c:choose>
					<c:when test='${not empty sessionScope.m}'>
						<table  class="table table-striped table-hover">
							<c:forEach items="${list }" var="spa" varStatus="i">
								<tr>
								<td>#${i.count }.  </td>
								<c:if test="${spa.spaType==1 }">
									<td>아로마테라피</td>
								</c:if>
								<c:if test="${spa.spaType==2 }">
									<td>마사지</td>
								</c:if>
								<c:if test="${spa.spaType==3}">
									<td>발마사지</td>
								</c:if>
								<td>${spa.spaDate }</td>
								<td>${spa.spaTime }시~${spa.spaTime +1}시</td>			
								</tr>
								
							</c:forEach>
							<c:if  test = "${empty list }">
									<h3>예약 내역이 없습니다.</h3>
								</c:if>
						</table>
					</c:when>
					<c:otherwise>
						<div>
							<h2>로그인후 이용해주세요</h2>
						</div>
					</c:otherwise>
				</c:choose>
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
		</div>

		<div class="info-wrapper">
			<div class="info-no"></div>
			<div class="info-content"></div>
		</div>
		<div class="footer">
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html>