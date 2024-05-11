<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<style>
div{

 font-family: 'Noto Sans KR', sans-serif;

}
body {
	margin: 0;
	padding: 0;
}

/*메뉴 top*/
.muyahop {
	background-color: rgb(234, 239, 255);
	height: 50px;
}
/*메뉴 top*/

/*서브메뉴 div*/
#muyahoList {
	margin: 0 !important;
	padding: 0 !important;
	display: flex !important;
	list-style: none !important;
	justify-content: flex-end !important;
}
/*서브메뉴 div*/

/*서브 메뉴list*/
#muya {
	margin-top: 10px !important;
}

#muya>a {
	color: black;
	text-decoration: none;
	padding-right: 4px !important;
}

#muya>a::after {
	content: "";
	border-right: 1px solid #888383;
	padding-right: 4px;
}


#muya-logo{
	width: 150px !important;
	height: 150px !important;
}

/*언어*/
.lang {
	margin-top: 10px !important;
	width: 91.25px !important;
}

.lang>a {
	color: black;
	text-decoration: none;
}

.lang::before {
	content: "\e9d1";
	font-family: 'xeicon';
}

.lang::after {
	content: "\e942";
	font-family: 'xeicon';
}
/*언어*/

/*메뉴 div**/
#center-muya {
	min-width: 600px;
	box-sizing: content-box !important;
}
/*메뉴 div**/

/*bottom*/
#moyattom {
	display: flex !important;
	justify-content: space-around !important;
	height: 100px !important;
	width: 100% !important;
	align-items: center !important;
}

#moyattom li {
	display: inline-block !important;
	min-width: 55px !important;
}

#moyattom a {
	font-size: 18px !important;
	padding: 31px 12px !important;
	color: rgb(12, 62, 114) !important;
	text-decoration: none;
}

#moyattom ul {
	list-style-type: none;
	overflow: hidden;
}

#moyattom ul>li>a {
	display: block;
}

#muyaSub {
	box-sizing: content-box!imortant;
}

#muyaSub>li {
	float: left;
	text-align: center;
}

#muyaSub>li>a {
	text-decoration: none;
	height: 34.4px !important;
	font-weight: 600 !important;
	font-size: 20px !important;
	line-height: 35px !important;
}

#mmub {
	position: absolute;
	padding: 0;
	height: 0;
	width: 100%;
	opacity: 95%;
	transition-duration: 0.5s;
	z-index: 1000;
	background-color: white;
	text-align: center;
	left: 0;
	margin:0 !important;
}

#mmub li a {
	color: rgb(71, 57, 41);
	height: 40px !important;
	text-decoration: none;
	line-height: 40px !important;
}

#muyaSub>li:hover>#mmub {
	height: 80px !important;
}

#mmub>li:hover>a {
	font-weight: bold;
	font-size: 18px;
}

.silver-icon {
	transform: rotate(320deg);
	font-size: 20px;
	/* color: #ffda8e; */
	color: #D4DFE6;
}
/*골드*/
.gold-icon {
	transform: rotate(320deg);
	font-size: 20px;
	color: #ffda8e;
}

/*오른쪽 예약버튼*/
.moyaBook {
	width: 139.938px;
	height: 47px !important;
}

#mookBtn {
	height: 21px !important;
	font-size: 16px;
	color: rgb(255, 255, 255);
	background-color: rgb(254, 92, 36);
	font-weight: 500;
	padding: 13px 30px;
	cursor: pointer;

}
</style>
</head>
<body>
	<div class="muyahoWrap">
		<div class="muyahoArea">
			<div class="muyahop">

				<ul id="muyahoList">
				<li id="muya">
						<c:choose>
							<c:when test="${not empty sessionScope.m }">
								<a href="/selectReserved.do">예약조회</a>							
							</c:when>
							<c:otherwise>
								<a href="/loginFrm.do">예약조회</a>
							</c:otherwise>
						</c:choose>
						
						</li>
					<c:choose>
						<c:when test="${empty sessionScope.m }">
							<li id="muya"><a href="/loginFrm.do">로그인</a></li>
							<li id="muya"><a href="/joinForm.do">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li id="muya"><a href="/mypage.do"> <c:choose>
										<c:when test="${m.memberLevel==1 }">
											<i class="fas fa-bone silver-icon"></i>
									 ${sessionScope.m.memberName }님
								</c:when>
										<c:when test="${m.memberLevel==2 }">
											<i class="fas fa-bone gold-icon"></i>
									${sessionScope.m.memberName }님
								</c:when>
										<c:when test="${m.memberLevel==3 }">
											<i class="xi-crown"></i>
									${sessionScope.m.memberName }님
								</c:when>
										<c:when test="${m.memberLevel==4 }">
											<i class="xi-profile-o"></i>
								 ${sessionScope.m.memberName }님
								</c:when>
									</c:choose>
							</a></li>
							<li id="muya"><a href="/logout.do">로그아웃</a></li>
							<li id="muya"><a
								href="/basket.do?memberId=${sessionScope.m.memberId }">장바구니</a></li>
						</c:otherwise>
					</c:choose>
					<div class="lang">
						<a href="#">한국어</a>
					</div>
				</ul>
			</div>


			<div id="moyattom">
				<div id="muya-logo">
					<a id="moo" href="/"><img src="img/logo.png" height="150px"></a>
				</div>

				<div id="center-muya">
					<ul id="muyaSub">
						<li><a href="/guestroom.do">객실예약</a></li>
						<li><a href="/aboutUs.do"> 오시는길 </a></li>

						<li><a href="#">편의시설</a>
							<ul id="mmub">
								<li><a href="/petRoomReserve.do?reqPage=1">반려견 객실예약</a></li>
								<li><a href="/store.do">반려견 용품</a></li>
								<li><a href="/spa.do">SPA</a></li>
								<li><a href="/wedding.do">WEDDINGS</a></li>
							</ul></li>

						<li><a href="/boardList.do?page=1"> 공지사항 </a></li>
						<li><a href="/eventList.do"> 프로모션</a>
							</li>
					</ul>
				</div>

				<div class="moyaBook">
					<div id="mookBtn">reservation</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>