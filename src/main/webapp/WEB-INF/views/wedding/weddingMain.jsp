<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/wedding.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
#muyaSub{

width: 560px !important;
height: 96.400px !important;
margin-top:16px !important;
margin-bottom:16px !important;
padding-left: 40px !important;

}

/**/
.alertModal{
    position: absolute;
    width: 100%;
    height: 1200px;
    top: 0;
    left: 0;
    background-color: rgba(0,0,0,0.5);
    display: none;
    justify-content: center;
    align-items: center;
}
.alertWrap{
    background-color: #fff;
    padding: 30px 50px;
    border-radius: 10px;
    width: 500px;
    min-width: 350px;/*350px이하로 화면이 줄어들면 scroll이 생김*/
}
#closeBtn{
    width: 40%;
}
.alertWrap{
	height:300px;
	width:500px;
	text-align:center;
	opacity:95%;
}
.alertModal{
	height:3000px;
}
.alertWrap>p{
	font-size: 20px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight:600;
    line-height: 60px;
    color:rgba(66, 66, 66, 0.774);
    text-align:center;
    margin-top:15%;
    margin-bottom:5%;
}
.alertWrap button{
	width: 30%;
	height:30px;
	margin: 0 auto;
	color:rgba(66, 66, 66, 0.774);
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>	
	<div class="container">
        <div class="center">
            <h2>WEDDING</h2>
            <p>또 하나의 가족을 맞이하는 가슴 따뜻한 순간,</p>
            <p>완벽해야만 하는 그날을 위해 각 분야 최고의 전문가들이 처음부터 끝까지 당신의 웨딩을 DESIGN해 드립니다.</p>
            <br>
            <br>
            <br>
            <div class="tabMenu">
                <ul class="tabs">
                    <li class="tab" onclick="selectTab(0);">그랜드볼룸</li>
                    <li class="tab" onclick="selectTab(1);">카프리룸</li>
                    <li class="tab" onclick="selectTab(2);">시실리룸</li>
                    <li class="tab" onclick="selectTab(3);">야외가든</li>
                </ul>
                <div class="tabContent">
                	<div class="slideWrap1">
		                <div class="imgWrap1">
		                    <img src="/img/wedding/g1.jpg">
		                    <div class="text1">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap1">
		                	<img src="/img/wedding/g2.jpg">
		                    <div class="text1">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap1">
		                    <img src="/img/wedding/g3.jpg">
		                    <div class="text1">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap1">
		                    <img src="/img/wedding/g4.jpg">
		                    <div class="text1">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap1">
		                    <img src="/img/wedding/g5.jpg">
		                    <div class="text1">MUYAHOTEL</div>
		                </div>
		                <a class="prev1" onclick="moveSlides1(-1)">&#10094;</a>
		                <a class="next1" onclick="moveSlides1(1)">&#10095;</a>
		            </div>
		            <br>
		            <div style="text-align:center">
		                <span class="dot1" onclick="currentSlide1(0)"></span>
		                <span class="dot1" onclick="currentSlide1(1)"></span>
		                <span class="dot1" onclick="currentSlide1(2)"></span>
		                <span class="dot1" onclick="currentSlide1(3)"></span>
		                <span class="dot1" onclick="currentSlide1(4)"></span>
		            </div>
		            <p class="tp1">그랜드볼룸</p>
		            <p class="tp2">모던하면서도 우아한 분위기의 그랜드볼룸은 MUYAHOTEL의 품격을 전해드릴 상징적인 웨딩홀입니다.</p>
		            <p class="tp3">브라운과 모던 베이지 칼라의 테이블 장식 등 웅장하면서도 세련된 기품이 느껴집니다.</p>
                	<p class="tp3">LED 조명과 최고의 음향, 전문 스탭들로 구성이 되어있어 마치 하나의 스토리처럼 진행 됩니다.</p>
                	<p class="tp3">본식이 끝난 후 진행되는 피로연에서는 커튼을 모두 오픈 하여 바다 풍경과 함께 시각과 미각을 동시에 만족시켜 드립니다.</p>
                	<div id="wHr"></div>
                	<br>
                	<span class="wSpan1">위치</span><span class="wSpan12">본관 2F</span><br>
                	<span class="wSpan1">전화문의</span><span class="wSpan2">02-0000-khkh</span>
                	<c:choose>
                		<c:when test="${not empty sessionScope.m }">
		                	<a href="/weddingReserveFrm.do?whNo=${1 }"><button class="wBtn">웨딩 예약하기</button></a>					                		
                		</c:when>
                		<c:otherwise>
                			<button class="wBtn" id="openModal">웨딩 예약하기</button>
                			<div class="alertModal">
						        <div class="alertWrap">
						            <p>로그인이 필요합니다.</p>
						            <button id="closeBtn">닫기</button>
						            <a href="/loginFrm.do"><button id="closeBtn">로그인 하기</button></a>
						        </div>
			    			</div>
                		</c:otherwise>
					</c:choose>
                </div>
                <div class="tabContent">
                	<div class="slideWrap2">
		                <div class="imgWrap2">
		                    <img src="/img/wedding/c3.jpg">
		                    <div class="text2">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap2">
		                	<img src="/img/wedding/c2.jpg">
		                    <div class="text2">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap2">
		                    <img src="/img/wedding/c4.jpg">
		                    <div class="text2">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap2">
		                    <img src="/img/wedding/c1.jpg">
		                    <div class="text2">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap2">
		                    <img src="/img/wedding/c5.jpg">
		                    <div class="text2">MUYAHOTEL</div>
		                </div>
		                <a class="prev2" onclick="moveSlides2(-1)">&#10094;</a>
		                <a class="next2" onclick="moveSlides2(1)">&#10095;</a>
		            </div>
		            <br>
		            <div style="text-align:center">
		                <span class="dot2" onclick="currentSlide2(0)"></span>
		                <span class="dot2" onclick="currentSlide2(1)"></span>
		                <span class="dot2" onclick="currentSlide2(2)"></span>
		                <span class="dot2" onclick="currentSlide2(3)"></span>
		                <span class="dot2" onclick="currentSlide2(4)"></span>
		            </div>
		            <p class="tp1">카프리룸</p>
		            <p class="tp2">바다를 품에 안은 듯한 카프리 룸.</p>
		            <p class="tp3">브라운과 모던 베이지 칼라의 테이블 장식 등 웅장하면서도 세련된 기품이 느껴집니다.</p>
                	<p class="tp3">낮에는 따스한 햇살과 반짝거리는 바다가, 오후에는 석양이 지는 모습으로, 자연을 테마로 삼고 있는 연회장으로 사랑 받고 있습니다.</p>
                	<p class="tp3">단아한 규모의 로맨틱한 웨딩홀이며 사랑스러움과 영롱함을 전해드릴 것 입니다.</p>
                	<div id="wHr"></div>
                	<br>
                	<span class="wSpan1">위치</span><span class="wSpan12">본관 2F</span><br>
                	<span class="wSpan1">전화문의</span><span class="wSpan2">02-0000-khkh</span>
                	<c:choose>
                		<c:when test="${not empty sessionScope.m }">
		                	<a href="/weddingReserveFrm.do?whNo=${2 }"><button class="wBtn">웨딩 예약하기</button></a>					                		
                		</c:when>
                		<c:otherwise>
                			<p class="loginP">로그인 후 예약이 가능합니다.</p>
                			<a href="/loginFrm.do"><button class="wBtn">로그인 하기</button></a>
                		</c:otherwise>
					</c:choose>
                </div>
                <div class="tabContent">
                	<div class="slideWrap3">
		                <div class="imgWrap3">
		                    <img src="/img/wedding/s5.jpg">
		                    <div class="text3">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap3">
		                	<img src="/img/wedding/s1.jpg">
		                    <div class="text3">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap3">
		                    <img src="/img/wedding/s2.jpg">
		                    <div class="text3">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap3">
		                    <img src="/img/wedding/s3.jpg">
		                    <div class="text3">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap3">
		                    <img src="/img/wedding/s4.jpg">
		                    <div class="text3">MUYAHOTEL</div>
		                </div>
		                <a class="prev3" onclick="moveSlides3(-1)">&#10094;</a>
		                <a class="next3" onclick="moveSlides3(1)">&#10095;</a>
		            </div>
		            <br>
		            <div style="text-align:center">
		                <span class="dot3" onclick="currentSlide3(0)"></span>
		                <span class="dot3" onclick="currentSlide3(1)"></span>
		                <span class="dot3" onclick="currentSlide3(2)"></span>
		                <span class="dot3" onclick="currentSlide3(3)"></span>
		                <span class="dot3" onclick="currentSlide3(4)"></span>
		            </div>
		            <p class="tp1">시실리룸</p>
		            <p class="tp2">모두가 꿈꿔왔던 로맨틱한 동화 속 숲 속 웨딩, My Fairy Forest Wedding</p>
		            <p class="tp3">들꽃으로 수놓은 공간, 마치 동화 속 깊은 숲 속 풍경을 선사하는 ‘마이 페어리 포레스트 웨딩’은 영화 ‘트와일라잇’을 모티브로 길게 늘어진 행잉 연출과 고급스러운 골드 오브제가 어우러져 사계절</p>
                	<p class="tp3">내내 초록빛 무드 감성을 표현하며, 내추럴하고 로맨틱함을 선사하는 소규모 웨딩입니다. 해운대 드넓은 바다 품에 안긴 푸르름 가득한 시실리룸은 야외 오션 가든과 실내공간이 연결되어 웰컴</p>
                	<p class="tp3">리셉션 및 세레머니 등 다양한 웨딩 스타일이 가능해 그 특별함을 더합니다.</p>
                	<div id="wHr"></div>
                	<br>
                	<span class="wSpan1">위치</span><span class="wSpan12">본관 1F</span><br>
                	<span class="wSpan1">전화문의</span><span class="wSpan2">02-0000-khkh</span>
                	<c:choose>
                		<c:when test="${not empty sessionScope.m }">
		                	<a href="/weddingReserveFrm.do?whNo=${3 }"><button class="wBtn">웨딩 예약하기</button></a>					                		
                		</c:when>
                		<c:otherwise>
                			<p class="loginP">로그인 후 예약이 가능합니다.</p>
                			<a href="/loginFrm.do"><button class="wBtn">로그인 하기</button></a>
                		</c:otherwise>
					</c:choose>
                </div>
                <div class="tabContent">
                	<div class="slideWrap4">
		                <div class="imgWrap4">
		                    <img src="/img/wedding/o1.jpg">
		                    <div class="text4">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap4">
		                	<img src="/img/wedding/o2.jpg">
		                    <div class="text4">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap4">
		                    <img src="/img/wedding/o3.jpg">
		                    <div class="text4">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap4">
		                    <img src="/img/wedding/o4.jpg">
		                    <div class="text4">MUYAHOTEL</div>
		                </div>
		                <div class="imgWrap4">
		                    <img src="/img/wedding/o5.jpg">
		                    <div class="text4">MUYAHOTEL</div>
		                </div>
		                <a class="prev4" onclick="moveSlides4(-1)">&#10094;</a>
		                <a class="next4" onclick="moveSlides4(1)">&#10095;</a>
		            </div>
		            <br>
		            <div style="text-align:center">
		                <span class="dot4" onclick="currentSlide4(0)"></span>
		                <span class="dot4" onclick="currentSlide4(1)"></span>
		                <span class="dot4" onclick="currentSlide4(2)"></span>
		                <span class="dot4" onclick="currentSlide4(3)"></span>
		                <span class="dot4" onclick="currentSlide4(4)"></span>
		            </div>
		            <p class="tp1">야외가든</p>
		            <p class="tp2">일생에 단 한번뿐인 순간, MUYAHOTEL에서만 경험 할 수 있는 시간입니다.</p>
		            <p class="tp3">MUYAHOTEL의 상징적인 웨딩으로 누구나 한번쯤은 꿈꿔왔던 이국적이면서도 로맨틱한 웨딩을 실현해 드립니다.</p>
		            <div id="wHr"></div>
                	<br>
                	<span class="wSpan1">위치</span><span class="wSpan12">본관, 신관 앞 바다측면 정원</span><br>
                	<span class="wSpan1">전화문의</span><span class="wSpan2">02-0000-khkh</span>
                	<c:choose>
                		<c:when test="${not empty sessionScope.m }">
		                	<a href="/weddingReserveFrm.do?whNo=${4 }"><button class="wBtn">웨딩 예약하기</button></a>					                		
                		</c:when>
                		<c:otherwise>
                			<p class="loginP">로그인 후 예약이 가능합니다.</p>
                			<a href="/loginFrm.do"><button class="wBtn">로그인 하기</button></a>
                		</c:otherwise>
					</c:choose>
                </div>
            </div>
            <p class="p3">WEDDING</p>
            <div class="wedding">
	            <p class="wcP">아름다운 추억으로 간직 될 축복의 순간, 낭만적인 해운대 바다풍경과 어우러져 한층 특별한 분위기.</p>
	            <p class="wcP">호텔 웨딩 전문가들이 만들어가는 품격 있는 맞춤 웨딩 상품으로 당신만을 위한 단 하나뿐인 웨딩을 선사 해 드립니다.</p>
	            <p class="wcP">최고급으로 준비되는 웅장한 스케일의 Black Lable, 프라이빗한 소규모 예식을 위한 Vintage Label.</p>
	            <p class="wcP">세상에 단 한번 뿐인 기억에 남는 아름다운 결혼식을 위해 MUYAHOTEL이 함께 합니다.</p>            
            </div>
            
            <p class="p3">CONCEPT</p>
            <div class="concept">
            	<div class="c_wrap">
            		<div class="cImgWrap">
	            		<img src="/img/wedding/wc1.jpg">            		
            		</div>
            		<h4>FLOWER</h4>
            		<p class="wcP">MUYAHOTEL 플라워샵 Modern & Chic의 전문 Florist가 감각적인 데코와 플라워를 선보입니다.</p>
            	</div>
            	<div class="c_wrap">
            		<div class="cImgWrap">
	            		<img src="/img/wedding/wc2.jpg">            		
            		</div>
            		<h4>SERVICE</h4>
            		<p class="wcP">한분 한분의 마음을 섬세하게 읽는 전문화된 서비스로 다가가겠습니다.</p>
            	</div>
            	<div class="c_wrap">
            		<div class="cImgWrap">
	            		<img src="/img/wedding/wc3.jpg">            		
            		</div>
            		<h4>MENU</h4>
            		<p class="wcP">예식만큼 의미있는 피로연, 귀중한 손님들에게 선사하는 최상급의 메뉴를 경험해 보세요 .</p>
            	</div>
            	<div class="c_wrap">
            		<div class="cImgWrap">
	            		<img src="/img/wedding/wc4.jpg">            		
            		</div>
            		<h4>RESERVATION</h4>
            		<p class="wcP">예식의 시작부터 마무리까지, 가장 가까운 곳에서 혼주의 부모님들까지 세심하게 케어해 드립니다.</p>
            	</div>
            </div>
            
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>	
    
    <script>
        var slideIndex1 = 0;
        var slideIndex2 = 0;
        var slideIndex3 = 0;
        var slideIndex4 = 0;
        window.onload=function(){
            showSlides1(slideIndex1);
            showSlides2(slideIndex2);
            showSlides3(slideIndex3);
            showSlides4(slideIndex4);
            
            var tabContents = document.getElementsByClassName("tabContent");
            var tabs = document.getElementsByClassName("tab");
            tabs[0].style.border = "1px solid #9c836a";
            tabs[0].style.borderBottom = "1px solid transparent";
            tabContents[0].style.display="block";
            tabs[1].style.border = "1px solid #e6e0dbab";
            tabs[1].style.borderBottom = "1px solid #9c836a";
            tabs[1].style.color = "#666";
            tabs[2].style.border = "1px solid #e6e0dbab";
            tabs[2].style.borderBottom = "1px solid #9c836a";
            tabs[2].style.color = "#666";
            tabs[3].style.border = "1px solid #e6e0dbab";
            tabs[3].style.borderBottom = "1px solid #9c836a";
            tabs[3].style.color = "#666";
        }
        
        function selectTab(idx){
            var tabContents = document.getElementsByClassName("tabContent");
            var tabs = document.getElementsByClassName("tab");
            for(var i=0;i<tabContents.length;i++){
                tabs[i].style.border = "1px solid #e6e0dbab";
                tabs[i].style.borderBottom = "1px solid #9c836a";
                tabs[i].style.color = "#666";
                tabContents[i].style.display = "none";
            }
            tabs[idx].style.border = "1px solid #9c836a";
            tabs[idx].style.borderBottom = "1px solid transparent";
            tabs[idx].style.color = "#9c836a";
            tabContents[idx].style.display="block";
            
        }
        function moveSlides1(n1) {
            slideIndex1 = slideIndex1 + n1
            showSlides1(slideIndex1);
        }
        function currentSlide1(n1) {
            slideIndex1 = n1;
            showSlides1(slideIndex1);
        }
        function moveSlides2(n2) {
            slideIndex2 = slideIndex2 + n2
            showSlides2(slideIndex2);
        }
        function currentSlide2(n2) {
            slideIndex2 = n2;
            showSlides2(slideIndex2);
        }
        function moveSlides3(n3) {
            slideIndex3 = slideIndex3 + n3
            showSlides3(slideIndex3);
        }
        function currentSlide3(n3) {
            slideIndex3 = n3;
            showSlides3(slideIndex3);
        }
        function moveSlides4(n4) {
            slideIndex4 = slideIndex4 + n4
            showSlides4(slideIndex4);
        }
        function currentSlide4(n4) {
            slideIndex4 = n4;
            showSlides4(slideIndex4);
        }
        function showSlides1(n1) {
            var slides = document.getElementsByClassName("imgWrap1");
            var dots = document.getElementsByClassName("dot1");
            var size = slides.length;
            if ((n1+1) > size) {
                slideIndex1 = 0; n1 = 0;
            }else if (n1 < 0) {
                slideIndex1 = (size-1);
                n1 = (size-1);
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active1", "");
            }
            slides[n1].style.display = "block";
            dots[n1].className += " active1";
        }
        function showSlides2(n2) {
            var slides = document.getElementsByClassName("imgWrap2");
            var dots = document.getElementsByClassName("dot2");
            var size = slides.length;
            if ((n2+1) > size) {
                slideIndex2 = 0; n2 = 0;
            }else if (n2 < 0) {
                slideIndex2 = (size-1);
                n2 = (size-1);
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active2", "");
            }
            slides[n2].style.display = "block";
            dots[n2].className += " active2";
        }
        function showSlides3(n3) {
            var slides = document.getElementsByClassName("imgWrap3");
            var dots = document.getElementsByClassName("dot3");
            var size = slides.length;
            if ((n3+1) > size) {
                slideIndex3 = 0; n3 = 0;
            }else if (n3 < 0) {
                slideIndex3 = (size-1);
                n3 = (size-1);
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active3", "");
            }
            slides[n3].style.display = "block";
            dots[n3].className += " active3";
        }
        function showSlides4(n4) {
            var slides = document.getElementsByClassName("imgWrap4");
            var dots = document.getElementsByClassName("dot4");
            var size = slides.length;
            if ((n4+1) > size) {
                slideIndex4 = 0; n4 = 0;
            }else if (n4 < 0) {
                slideIndex4 = (size-1);
                n4 = (size-1);
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active4", "");
            }
            slides[n4].style.display = "block";
            dots[n4].className += " active4";
        }
        
        $(function(){
            $("#openModal").click(function(){
                $(".alertModal").css("display","flex");
            });
            $("#closeBtn").click(function(){
                $(".alertModal").hide();
            });
        });
    </script>
</body>
</html>