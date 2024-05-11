<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려동물 용품</title>
<link rel="stylesheet" href="/css/store.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
#muyaSub{
		margin-top:16px !important;
		margin-bottom:16px !important;
		padding-left:40px  !important;
	}

.psWrap:nth-child(even){
	margin-left:7%;
}
.psP2{
	width:100%;
	height:200px;
	color:rgba(94, 94, 94, 0.774);
	font-family: 'Noto Sans', sans-serif;
	font-weight:500;
	line-height: 27px;
    font-size:17px;
}
.center>p{
    font-size: 30px;
    margin: 0;
    font-family: 'Noto Sans KR', sans-serif;
    color: #666;
    font-weight: 100;
    line-height: 42px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>	
	<div class="container">
        <div class="center">
            <h2>PET SUPPLIES</h2>
            <p>무야호텔의 반려동물 호텔에서만 누릴 수 있는 최고의 서비스를</p>
            <p>당신의 가족에게 선물해보세요.</p>
            <br>
            <br>
            <br>
            <div class="slideWrap">
                <div class="imgWrap">
                    <img src="/img/store/ps_s1.jpg">
                    <div class="text">MUYAHOTEL</div>
                </div>

                <div class="imgWrap">
                	<img src="/img/store/ps_s3.jpg">
                    <div class="text">MUYAHOTEL</div>
                </div>

                <div class="imgWrap">
                    <img src="/img/store/s2.jpg">
                    <div class="text">MUYAHOTEL</div>
                </div>
                <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
                <a class="next" onclick="moveSlides(1)">&#10095;</a>
            </div>
            <br/>
            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(0)"></span>
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
            </div>
            <p class="p3">MUYA PET SUPPLIES BOUTIQUE</p>
            <p class="p4" style="color: #9c836a;">로컬 식재료로 본연의 맛을 살리고 오랜 정성을 담아 건강까지 생각한 착한 사료와 간식</p>
            <p class="p4" style="margin-bottom: 7%;">전문 동물훈련사가 직접 엄선한 간식과 장난감을 가족에게 선물해보십시오.</p>
            <div class="tabMenu">
                <ul class="tabs">
                    <li class="tab" onclick="selectTab(0);">사료 &#38; 간식</li>
                    <li class="tab" onclick="selectTab(1);">장난감</li>
                </ul>
                <c:if test="${not empty sessionScope.m && sessionScope.m.memberLevel eq 4 }">
					<a href="/insertSupFrm.do"><button class="insertBtn">추가</button></a>
				</c:if>
                <div class="tabContent">
					<c:forEach items="${list }" var="ps">
						<c:if test="${ps.psCate eq '간식' or ps.psCate eq '사료'}">
							<div class="psWrap">
								<a href="/storeInfo.do?psNo=${ps.psNo }">
									<img src="/img/store/${ps.mainImg }" class="psImg" alt="대체텍스트">
									<p class="psP">${ps.psName }</p>
									<p class="psP2">${ps.psContent }</p>
								</a>
							</div>						
						</c:if>
					</c:forEach>
                </div>
                
                <div class="tabContent">
					<c:forEach items="${list }" var="ps">
						<c:if test="${ps.psCate eq '장난감' }">
							<div class="psWrap">
								<a href="/storeInfo.do?psNo=${ps.psNo }">
									<img src="/img/store/${ps.mainImg }" class="psImg" alt="대체텍스트">
									<p class="psP">${ps.psName }</p>
									<p class="psP2">${ps.psContent }</p>
								</a>
							</div>						
						</c:if>
					</c:forEach>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>	
    
    <script>
        var slideIndex = 0;
        window.onload=function(){
            showSlides(slideIndex);
            var sec = 4000;
            setInterval(function(){
                slideIndex++;
                showSlides(slideIndex);

            }, sec);
            
            var tabContents = document.getElementsByClassName("tabContent");
            var tabs = document.getElementsByClassName("tab");
            tabs[0].style.border = "1px solid #9c836a";
            tabs[0].style.borderBottom = "1px solid transparent";
            tabContents[0].style.display="block";
            tabs[1].style.border = "1px solid #e6e0dbab";
            tabs[1].style.borderBottom = "1px solid #9c836a";
            tabs[1].style.color = "#666";
        }
        function moveSlides(n) {
            slideIndex = slideIndex + n
            showSlides(slideIndex);
        }
        function currentSlide(n) {
            slideIndex = n;
            showSlides(slideIndex);
        }
        function showSlides(n) {
            var slides = document.getElementsByClassName("imgWrap");
            var dots = document.getElementsByClassName("dot");
            var size = slides.length;
            if ((n+1) > size) {
                slideIndex = 0; n = 0;
            }else if (n < 0) {
                slideIndex = (size-1);
                n = (size-1);
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[n].style.display = "block";
            dots[n].className += " active";
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
        
    </script>
</body>
</html>