<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<style>
#muyaSub{
padding-left: 40px !important;


}

* {
    margin: 0;
    padding: 0;
}
.container{
    width: 100%;
    overflow: hidden;
    margin-top: 3%;
    margin-bottom:10%;
}
.center{
    margin:0 10%;
    width:80%;
    overflow:hidden;
}
.center>h2{
    padding-bottom: 13px;
    font-size: 18px;
    color: #9c836a;
    font-weight: bold;
    width:100%;
    border-bottom:2px solid #b2b2b2;
}
.tabMenu{
    width: 100%;
	margin-top:3%;
    margin-bottom:10%;
    overflow:hidden;
}
.tabs{
	width:20%;
    padding: 0;
    overflow: hidden;
    list-style-type: none;
    float:left;
}
.tab{
    width: 100%;
    height: 60px;
    line-height: 60px;
    text-align: center;
    font-size:16px;
    font-family: 'Noto Sans', sans-serif;
    font-weight:500;
    color: #9c836a;
}
.tab:hover{
    cursor:pointer;
}
.tabContent{
	float:left;
    width:70%;
    height:auto;
    display: none;
    margin: 1% 0 0 5%;
    overflow:hidden;
    text-align:center;
}
.bTable{
	width:80%;
	text-align:center;
	padding:0;
	border-collapse:collapse;
	border-spacing:0;
	margin: 0 auto;
}
.bTable th{
	width:16.5%;
	border-bottom: 5px solid #cab7a1;
	color:rgba(66, 66, 66, 0.774);
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}
.wTr1{
	height:40px;
}
.wTr2{
	height:30px;
}
.tabContent button{
	width:200px;
    height:45px;
    margin-top:3%;
    background-color: #afa294;
    color:rgb(255, 255, 255);
    border: none;
    font-family: 'Noto Sans', sans-serif;
	font-weight:800;
	line-height: 40px;
    font-size:18px;
    border-radius:3%;
}
.tabContent button:hover{
	background-color: #8d8379;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="center">
			<h2>${sessionScope.m.memberName }님의 예약페이지</h2>
			<br><br>
			<div class="tabMenu">
		        <ul class="tabs">
		            <li class="tab" onclick="selectTab(0);">호텔</li>
		            <li class="tab" onclick="selectTab(1);">반려견호텔</li>
		            <li class="tab" onclick="selectTab(2);">스파</li>
		            <li class="tab" onclick="selectTab(3);">웨딩</li>
		        </ul>
		        <div class="tabContent">
			        <table class="bTable">
						<tr>
							<th>선택</th><th>예약 번호</th><th>호실 번호</th><th>예약자 성함</th><th>체크인 날짜</th><th>체크아웃 날짜</th>
						</tr>
						<tr class="wTr1"></tr>
						<c:forEach items="${grList }" var="gr">
							<c:if test="${not empty sessionScope.m && sessionScope.m.memberId eq gr.reservedClient}">
								<tr>
									<td><input type="checkbox" name="oneCheck" id="oneCheck" onclick="select(this);"></td>
									<td>${gr.reserveNo }</td>
									<td>${gr.roomNo }</td>
									<td>${sessionScope.m.memberName }</td>
									<td>${gr.checkIn }</td>
									<td>${gr.checkOut }</td>
								</tr>
								<tr class="wTr2"></tr>
							</c:if>
						</c:forEach>
					</table>
					<button id="deleteGrBtn">선택한 예약 취소</button>
                </div>
                <div class="tabContent">
					<table class="bTable">
						<tr>
							<th>선택</th><th>호실 번호</th><th>예약자 성함</th><th>체크인 날짜</th><th>체크아웃 날짜</th>
						</tr>
						<tr class="wTr1"></tr>
						<c:forEach items="${prrList }" var="prr">
							<c:if test="${not empty sessionScope.m && sessionScope.m.memberId eq prr.memberId}">
								<tr>
									<td><input type="checkbox" name="oneCheck" id="oneCheck" onclick="select(this);"></td>
									<td>${prr.roomNo }</td>
									<td>${sessionScope.m.memberName }</td>
									<td>${prr.petChkin }</td>
									<td>${prr.petChkout }</td>
								</tr>
								<tr class="wTr2"></tr>
							</c:if>
						</c:forEach>
					</table>
					<button id="deletePrrBtn">선택한 예약 취소</button>
                </div>
                <div class="tabContent">
					<table class="bTable">
						<tr>
							<th>선택</th><th>예약번호</th><th>예약자 성함</th><th>타입</th><th>날짜</th><th>시간</th>
						</tr>
						<tr class="wTr1"></tr>
						<c:forEach items="${spaList }" var="spa">
							<c:if test="${not empty sessionScope.m && sessionScope.m.memberNo eq spa.spaUser}">
								<tr>
									<td><input type="checkbox" name="oneCheck" id="oneCheck" onclick="select(this);"></td>
									<td>${spa.spaNo }</td>
									<td>${sessionScope.m.memberName }</td>
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
								<tr class="wTr2"></tr>
							</c:if>
						</c:forEach>
					</table>
					<button id="deleteSpaBtn">선택한 예약 취소</button>
                </div>
                <div class="tabContent">
					<table class="bTable">
						<tr>
							<th>선택</th><th>예약번호</th><th>예약자 성함</th><th>웨딩홀</th><th>날짜</th><th>진행상황</th>
						</tr>
						<tr class="wTr1"></tr>
						<c:forEach items="${weddingList }" var="wr">
							<c:if test="${not empty sessionScope.m && sessionScope.m.memberId eq wr.memberId}">
								<tr>
									<td><input type="checkbox" name="oneCheck" id="oneCheck" onclick="select(this);"></td>
									<td>${wr.wrNo }</td>
									<td>${sessionScope.m.memberName }</td>
									<td>${wr.whName }</td>
									<td>${wr.wrDate }</td>
									<td>예약상담중</td>
								</tr>
								<tr class="wTr2"></tr>
							</c:if>
						</c:forEach>
					</table>
					<button id="deleteWeddingBtn">선택한 예약 취소</button>
                </div>
		    </div>
		</div>
	</div>	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
	
	<script>
		window.onload=function(){
	        var tabContents = document.getElementsByClassName("tabContent");
	        var tabs = document.getElementsByClassName("tab");
	        tabs[0].style.borderBottom = "2px solid #9c836a";
	        tabContents[0].style.display="block";
            tabs[1].style.borderBottom = "1px solid #e6e0dbab";
            tabs[1].style.color = "#666";
            tabs[2].style.borderBottom = "1px solid #e6e0dbab";
            tabs[2].style.color = "#666";
            tabs[3].style.borderBottom = "1px solid #e6e0dbab";
            tabs[3].style.color = "#666";
	    }
		function selectTab(idx){
            var tabContents = document.getElementsByClassName("tabContent");
            var tabs = document.getElementsByClassName("tab");
            for(var i=0;i<tabContents.length;i++){
                tabs[i].style.borderBottom = "1px solid #e6e0dbab";
                tabs[i].style.color = "#666";
                tabContents[i].style.display = "none";
            }
            tabs[idx].style.borderBottom = "2px solid #9c836a";
            tabs[idx].style.color = "#9c836a";
            tabContents[idx].style.display="block";
        }
		$("#deleteSpaBtn").click(function(){
	    	var checkBoxes = [];
	    	$('input[name="oneCheck"]:checked').each(function(idx){
	    		checkBoxes.push($('input[name="oneCheck"]:checked:eq('+idx+')').parent().next().html());
	        });
	    	
	    	$.ajax({
	            url : "/deleteSpa.do",
	            dataType : "json",
	            type : "post",
	            data : {spaNo:checkBoxes},
	            success : function(data){
					if(data == 1){
						console.log("성공");
						location.reload();
					}else{
						console.log("실패");	
					}
				}
	        });
		});
		$("#deleteWeddingBtn").click(function(){
	    	var checkBoxes = [];
	    	$('input[name="oneCheck"]:checked').each(function(idx){
	    		checkBoxes.push($('input[name="oneCheck"]:checked:eq('+idx+')').parent().next().html());
	        });
	    	
	    	$.ajax({
	            url : "/deleteWedding.do",
	            dataType : "json",
	            type : "post",
	            data : {wrNo:checkBoxes},
	            success : function(data){
					if(data == 1){
						console.log("성공");
						location.reload();
					}else{
						console.log("실패");	
					}
				}
	        });
		});
		$("#deletePrrBtn").click(function(){
	    	var checkBoxes = [];
	    	$('input[name="oneCheck"]:checked').each(function(idx){
	    		checkBoxes.push($('input[name="oneCheck"]:checked:eq('+idx+')').parent().next().html());
	        });
	    	
	    	$.ajax({
	            url : "/deletePrr.do",
	            dataType : "json",
	            type : "post",
	            data : {roomNo:checkBoxes},
	            success : function(data){
					if(data == 1){
						console.log("성공");
						location.reload();
					}else{
						console.log("실패");	
					}
				}
	        });
		});
		$("#deleteGrBtn").click(function(){
	    	var checkBoxes = [];
	    	$('input[name="oneCheck"]:checked').each(function(idx){
	    		checkBoxes.push($('input[name="oneCheck"]:checked:eq('+idx+')').parent().next().html());
	        });
	    	
	    	$.ajax({
	            url : "/deleteGr.do",
	            dataType : "json",
	            type : "post",
	            data : {reserveNo:checkBoxes},
	            success : function(data){
					if(data == 1){
						console.log("성공");
						location.reload();
					}else{
						console.log("실패");	
					}
				}
	        });
		});
		
	</script>
</body>
</html>