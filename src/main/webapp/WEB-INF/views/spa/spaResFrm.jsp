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

#what{
width: 1091.310px !important;
height: 773.150px !important;

}

/**/


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
	color: #282828;
	opacity: 0.8;
	border-radius: 3px;
	text-decoration: none;
	font-weight: 400;
	line-height: 1.5;
	padding: 10px
}

#btgroup {
	float: right;
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
					aria-current="page" href="#">소개하는 글</a></li>
				<li class="nav-item"><a class="nav-link" href="/spaResFrm.do">스파</a></li>
				<li class="nav-item"><a class="nav-link" href="/massRes.do">마사지</a></li>
				<li class="nav-item"><a class="nav-link" href="/swim.do">수영장</a></li>
			</ul>
		</div>
		<div id="what" class="img-wrapper">

			<div id="">
				<a href="/spaResFrm.do" id="btbt">예약하기</a> <a href="/spaResView.do"
					id="btbt">예약내역보기</a>
			</div>
			<br> <br>
			<div class="Res-wrapper">
				<c:choose>
					<c:when test='${not empty sessionScope.m}'>
						<form action="/spaRes.do" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="spaNo" class="form-control"
								id="memberNo" value="${sessionScope.m.memberNo }" readonly>
							<select id="spaType" class="form-select form-select-lg mb-3"
								aria-label=".form-select-lg example" name="spaType">
								<option selected>서비스 선택</option>
								<option value="1">아로마 테라피</option>
								<option value="2">마사지</option>
								<option value="3">발마사지</option>
							</select> <select id="spaTime" class="form-select form-select-sm "
								aria-label=".form-select-sm example" name="spaTime">
								<option selected>시간 선택</option>
								<option value="10">10:00~11:00</option>
								<option value="11">11:00~12:00</option>
								<option value="12">12:00~13:00</option>
								<option value="13">13:00~14:00</option>
								<option value="14">14:00~15:00</option>
								<option value="15">15:00~16:00</option>
								<option value="16">16:00~17:00</option>
								<option value="17">17:00~18:00</option>
							</select> <span id="resChk"></span> <br> <br>
							<div id="btgroup">
								<button type="submit" id="btbt" class="btn btn-outline-primary">신청하기</button>
								<button type="reset" id="btbt" class="btn btn-outline-secondary">취소하기</button>
							</div>
						</form>
					</c:when>
					<c:otherwise>
						<div>
							<h2>로그인후 이용해주세요</h2>
						</div>
					</c:otherwise>
				</c:choose>
				<br> <br>
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
		$("#spaTime").change(function() {
			var count = 0;
			var memberNo = $("#memberNo").val();
			var spaType = $("#spaType").val();
			var spaTime = $("#spaTime").val();
			$.ajax({
				url : "/resChk.do",
				data : {
					spaUser : memberNo,
					spaType : spaType,
					spaTime : spaTime
				},
				type : "get",
				success : function(data) {
					//리턴된 data는 객체타입으로 꺼내서 사용해야 함
					console.log(data);
					if (data == 0) {
						count = 0;
					} else {
						count = 1;
					}
					if (count == 1) {
						$("#resChk").html("예약할 수 없습니다. ");
					} else {

						$("#resChk").html("예약 가능합니다");
					}
					console.log(count);
				}
			});
		})
	</script>
</body>
</html>