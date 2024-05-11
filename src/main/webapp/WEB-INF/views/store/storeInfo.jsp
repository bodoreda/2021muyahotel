<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/storeInfo.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
#muyaSub{
		margin-top:16px !important;
		margin-bottom:16px !important;
		padding-left:40px  !important;
	}


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
#goBasketBtn{
	width: 40%;
}
#aTitle{
	font-size: 20px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight:600;
    line-height: 60px;
    color:rgba(66, 66, 66, 0.774);
    height:60px;
}
.aBtn{
	border:none;
	width:140px;
	height:40px;
	font-size: 40px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color:rgba(66, 66, 66, 0.774);
	background-color:transparent;
}
.aBtn:hover{
	color: #9c836a;
}
.amount{
	font-size: 40px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color: #9c836a;
}
.count{
	margin-top:8%;
}
.total{
	margin-top:11%;
	font-size: 20px;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight:600;
    line-height: 60px;
    color:rgba(66, 66, 66, 0.774);
    height:60px;
}
#totalPrice{
	font-size: 40px;
	font-weight:600;
    line-height: 42px;
    font-family: 'Noto Sans KR', sans-serif;
	color: #9c836a;
}
.omloginBtn{
	width:130px;
    height:45px;
    float:right;
    margin:0% 15% 2% 0%;
    background-color: #afa294;
    color:rgb(255, 255, 255);
    border: none;
    font-family: 'Noto Sans', sans-serif;
	font-weight:800;
	line-height: 40px;
    font-size:18px;
    border-radius:3%;
}
.omloginBtn:hover{
	background-color: #8d8379;
}
.bskAjax{
	width:130px;
    height:45px;
    float:right;
    margin:0% 15% 2% 0%;
    background-color: #afa294;
    color:rgb(255, 255, 255);
    border: none;
    font-family: 'Noto Sans', sans-serif;
	font-weight:800;
	line-height: 40px;
    font-size:18px;
    border-radius:3%;
}
.bskAjax:hover{
	background-color: #8d8379;
}
.alertWrap{
	height:300px;
	width:500px;
	text-align:center;
	opacity:95%;
}
.alertModal{
	height:1200px;
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
            <c:if test="${not empty sessionScope.m && sessionScope.m.memberLevel eq 4 }">
				<a href="/deleteSup.do?psNo=${petSupplies.psNo }"><button class="insertBtn">삭제</button></a>
				<a href="/updateSupFrm.do?psNo=${petSupplies.psNo }"><button class="insertBtn">수정</button></a>
			</c:if>
            <div class="supImg">
	            <div class="slideWrap">
	                <div class="imgWrap">
	                    <img src="/img/store/${petSupplies.mainImg }" alt="대체텍스트">
	                    <div class="text">MUYAHOTEL</div>
	                </div>
	                <div class="imgWrap">
	                	<img src="/img/store/${petSupplies.subImg }" alt="대체텍스트">
	                    <div class="text">MUYAHOTEL</div>
	                </div>
	                <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
	                <a class="next" onclick="moveSlides(1)">&#10095;</a>
	            </div>
	            <br/>
	            <div style="text-align:center">
	                <span class="dot" onclick="currentSlide(0)"></span>
	                <span class="dot" onclick="currentSlide(1)"></span>
	            </div>
            </div>
            <div class="supInfo">
            	<div class="supName">
            		<h2>${petSupplies.psName }</h2>
            	</div>
            	<div class="supCatePrice">
            		<p>${petSupplies.psCate }</p><br>
            		<p>${petSupplies.psPrice }</p>
            	</div>
            	<div class="supContent">
            		<p>${petSupplies.psContent }</p>
            	</div>
            	<div class="count">
					<span id="aTitle">수량</span>
					<button class="aBtn">-</button>
					<span class="amount">1</span>
					<button class="aBtn">+</button>
				</div>
				<div class="total">
					총
					<span id="totalPrice">${petSupplies.psPrice }</span>원
					<c:choose>
				    	<c:when test="${empty sessionScope.m }">
							<button id="openModal" class="omloginBtn">장바구니 추가</button>
							<div class="alertModal">
						        <div class="alertWrap">
						            <p>로그인 후 사용하실 수 있습니다.</p>
						            <button id="closeBtn">닫기</button>
						            <a href="/loginFrm.do"><button id="closeBtn">로그인 하기</button></a>
						        </div>
						      	
				    		</div>
				    	</c:when>
				    	<c:otherwise>
							<button id="openModal" class="bskAjax">장바구니 추가</button>
				    		<div>
								<input type="hidden" id="psNo" name="psNo" value="${petSupplies.psNo }">
								<input type="hidden" id="memberId" name="memberId" value="${sessionScope.m.memberId }">
								<input type="hidden" id="psAmount" name="psAmount" class="amountInput">
							</div>
						    <div class="alertModal">
						        <div class="alertWrap">
						            <p>장바구니에 추가되었습니다.</p>
						            <button id="closeBtn">계속보기</button>
						            <a href="/basket.do?memberId=${sessionScope.m.memberId }"><button id="goBasketBtn">장바구니 이동</button></a>
						        </div>
						    </div>
				    	</c:otherwise>
				    </c:choose>
				</div>
            </div>  
    	</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
	<script>
        var slideIndex = 0;
        window.onload=function(){
            showSlides(slideIndex);
            var sec = 6000;
            setInterval(function(){
                slideIndex++;
                showSlides(slideIndex);

            }, sec);
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
    </script>
    <script>
        $(function(){
            $("#openModal").click(function(){
                $(".alertModal").css("display","flex");
            });
            $("#closeBtn").click(function(){
                $(".alertModal").hide();
            });
        });
        $(function(){
        	$('input[name=psAmount]').attr('value',$('.amount').html());
        });
        $(".count>button").click(function(){
			var currAmount = Number($(".amount").html());
			if($(this).html() == "+"){
				$(".amount").html(currAmount+1);
			}else{
				if(currAmount != 1){
					$(".amount").html(currAmount-1);				
				}
			}
			currAmount = Number($(".amount").html());
			var price = Number($(".supCatePrice>p").first().next().next().html());
			$("#totalPrice").html(currAmount*price);
			$('input[name=psAmount]').attr('value',currAmount);
		});

    </script>
    <script>
    
	    $(".bskAjax").click(function(){
	    	var psNo = $('input[name=psNo]').attr('value');
	    	var memberId = $('input[name=memberId]').attr('value');
	    	var psAmount = $('input[name=psAmount]').attr('value');
			//객체생성
			var basket = {psNo:psNo,memberId:memberId,psAmount:psAmount};
			$.ajax({
				url : "/insertBasket.do",
				type : "post",
				data : basket,
				success : function(data){
					if(data == 1){
						console.log("성공");					
					}else{
						console.log("실패");	
					}
				}
			});
		});
    </script>
</body>
</html>