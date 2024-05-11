<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
#muyaSub{

width: 560px !important;
height: 96.400px !important;
margin-top:16px !important;
margin-bottom:16px !important;
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
    margin:0 15% 0 25%;
    width:60%;
    overflow:hidden;
}
.center>h2{
    padding-bottom: 13px;
    font-size: 18px;
    color: #9c836a;
    font-weight: bold;
    width:85%;
    border-bottom:2px solid #b2b2b2;
}
.sTable{
	width:100%;
	text-align:left;
}
.sTable th{
	width:20%;
	height:70px;
	
}
.sTable th p{
	margin: 10% 0 10% 0;
	width:70%;
	height:50px;
	color:rgba(66, 66, 66, 0.774);
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
	font-size: 18px;
	text-align:left;

	padding-left:7%;
	padding-top:2%;
}
.sTable td{
	width:80%;
	height:70px;
}
.sTable td div{
	border-bottom: 3px solid #cab7a1;
	width:80%;
}
.siArea{
	margin-top:5%;
	width:100%;
	font-size: 14px;
	font-family: 'Noto Sans', sans-serif;
	border:none;
}
.siArea:focus{
	outline:none;
}
.siAreaC{
	margin-top:5%;
	width:80%;
	height:150px;
	font-size: 14px;
	font-family: 'Noto Sans', sans-serif;
	border:3px solid #cab7a1;
	resize:none
}
.siAreaC:focus{
	outline:none;
}
.sBtn{
	width:50%;
	height:60px;
	background-color:rgb(255, 255, 255);
	margin:5% 0 0 20%;
	border:3px solid #cab7a1;
	font-family: 'Noto Sans', sans-serif;
	line-height: 55px;
	font-size: 18px;
	font-weight:bold;
	color:rgba(66, 66, 66, 0.774);
}
.sBtn:hover{
	background-color:#cab7a1;
	color:rgb(255, 255, 255);
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>	
	<div class="container">
		<div class="center">
			<h2>WEDDING 예약</h2>
			<br><br>
			<c:forEach items="${list }" var="wr" varStatus="i">
				<input type="hidden" name="reservedDate" value="${wr.wrDate }">			
			</c:forEach>
			<form action="/reserveWedding.do" method="post" name="rewe">
				<table class="sTable">
					<tr>
						<th><p>웨딩홀</p></th>
						<td>
							<div>
								<input type="hidden" name="whNo" value="${wh.whNo}">
								<input type="text" name="whName" value="${wh.whName }" readonly class="siArea">
							</div>
						</td>
					</tr>
					<tr>
						<th><p>예약자 성함</p></th>
						<td>
							<div>
								<input type="text" name="memberName" value="${sessionScope.m.memberName }" readonly class="siArea">
								<input type="hidden" name="memberId" value="${sessionScope.m.memberId }">
							</div>
						</td>
					</tr>
					<tr>
						<th><p>예약 날짜</p></th>
						<td class="dateTd">
							<div>
								<input type="text" id="datepicker" name="wrDate" required>
							</div>
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" value="예약하기" class="sBtn">
						</th>
					</tr>
				</table>
			</form>
	    </div>
	</div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>	
    
    <script>
    $(function(){
    	$("#datepicker").datepicker({
       		showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
       		changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
       		changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
       		minDate: '0', // 현재날짜로부터 10년이전까지 년을 표시한다.
       		nextText: '다음 달', // next 아이콘의 툴팁.
       		prevText: '이전 달', // prev 아이콘의 툴팁.
       		numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
       		stepMonths: 1, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.
       		yearRange: 'c-5:c+5', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
       		showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다.
       		currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
       		closeText: '닫기', // 닫기 버튼 패널
       		dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
       		showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.
       		dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
       		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], // 월의 한글 형식.
       		beforeShowDay: disableAllTheseDays
   		});
    	var disabledDays = new Array();
    	   $("input[name=reservedDate]").each(function(index, item){
    		   disabledDays.push($(item).val());
    	   });
   		for(i=0;i<reDates.length;i++){
   			disabledDays.push(reDates);
   		}
   		function disableAllTheseDays(date) {
   			var m = date.getMonth()+1, d = date.getDate(), y = date.getFullYear();
   			for (i = 0; i < disabledDays.length; i++) {
   				if($.inArray(y + '-' +(("00"+m.toString()).slice(-2)) + '-' + (("00"+d.toString()).slice(-2)),disabledDays) != -1) {
   					return [false];
   				}
   			}
   			return [true];
   		}

    });
    </script>
</body>
</html>