<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<style>

#muyaSub{
		margin-top:16px !important;
		margin-bottom:16px !important;
		padding-left:40px  !important;
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
.bTable{
	width:80%;
	text-align:center;
	padding:0;
	border-collapse:collapse;
	border-spacing:0;
	margin: 0 auto;
}
.bImg{
	width:250px;
	height:200px;
}
#th1{
	width:10%;
	border-bottom: 5px solid #cab7a1;
	color:rgba(66, 66, 66, 0.774);
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}
#th2{
	width:30%;
	border-bottom: 5px solid #cab7a1;
	color:#353535;
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}
#th3{
	width:10%;
	border-bottom: 5px solid #cab7a1;
	color:#353535;
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}
#th4{
	width:20%;
	border-bottom: 5px solid #cab7a1;
	color:#353535;
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}
#th5{
	width:15%;
	border-bottom: 5px solid #cab7a1;
	color:#353535;
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}
#th6{
	width:15%;
	border-bottom: 5px solid #cab7a1;
	color:#353535;
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
}

#bTtr1{
	background-color:#cab7a12c;
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	height:250px;
}
#bTtr2{
	background-color:#cab7a12c;
}
#bTtr3{
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	height:250px;
	background-color:#cab7a12c;
	font-size: 18px;
    font-family: 'Noto Sans KR', sans-serif;
}
#bTtr4{
	background-color:#cab7a12c;
	font-size: 18px;
    font-family: 'Noto Sans KR', sans-serif;
}
#bTtr5{
	background-color:#cab7a12c;
	font-size: 20px;
	font-weight:600;
    font-family: 'Noto Sans KR', sans-serif;
	color:#9c836a;
}
#bTtr6{
	background-color:#cab7a12c;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
	font-size: 20px;
	font-weight:600;
    font-family: 'Noto Sans KR', sans-serif;
	color:rgba(66, 66, 66, 0.774);
}
.wTr1{
	height:40px;
}
.wTr2{
	height:30px;
}
.amountBtn{
	border:none;
	width:50px;
	height:30px;
	font-size: 40px;
	font-weight:600;
    font-family: 'Noto Sans KR', sans-serif;
	color:rgba(66, 66, 66, 0.774);
	background-color:transparent;
}
.amountBtn:hover{
	color: #9c836a;
}
#pTh1{
	text-align:right;
	font-size: 60px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color: rgba(66, 66, 66, 0.774);
	border-bottom: 3px solid rgba(66, 66, 66, 0.774);
	padding-bottom:8px;
}
#pTh2{
	text-align:left;
	padding-left:30px;
	font-size: 60px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color: #9c836a;
	border-bottom: 3px solid rgba(66, 66, 66, 0.774);
	padding-bottom:8px;
}
#pTh3{
	text-align:center;
	font-size: 60px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color: rgba(66, 66, 66, 0.774);
	border-bottom: 3px solid rgba(66, 66, 66, 0.774);
	padding-bottom:8px;
}
#payment{
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
#payment:hover{
	background-color: #8d8379;
}
#deleteBskBtn{
	width:100px;
    height:45px;
    float:right;
    background-color: #afa294;
    color:rgb(255, 255, 255);
    border: none;
    font-family: 'Noto Sans', sans-serif;
	font-weight:800;
	line-height: 40px;
    font-size:18px;
    border-radius:3%;
}
#deleteBskBtn:hover{
	background-color: #8d8379;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="center">
			<h2>${sessionScope.m.memberName }님의 결제내역</h2>
			<br><br>
			<div id="result">
				<table class="bTable">
					<tr>
						<th id="th3">결제내역번호</th><th id="th2">이미지</th><th id="th4">품목이름</th><th id="th6">결제가격</th><th id="th6">결제일</th>
					</tr>
					<tr class="wTr1"></tr>
					<c:forEach items="${list }" var="pm">
						<c:if test="${not empty sessionScope.m && sessionScope.m.memberId eq pm.memberId}">
							<tr>
								<td class="paymentNoTd" id="bTtr3">${pm.paymentNo }</td>
								<td class="mainImgTd" id="bTtr2"><img src="/img/store/${pm.mainImg }" class="bImg"></td>
								<td class="psNameTd" id="bTtr4">${pm.psName }</td>
								<td class="sumPriceTd" id="bTtr5">
									<input type="hidden" id="psAmount" value="${pm.psAmount }">
									<input type="hidden" id="psPrice" value="${pm.psPrice }">
									${pm.psAmount * pm.psPrice }원
								</td>
								<td class="paymentDateTd" id="bTtr6">${pm.paymentDate }</td>
							</tr>
							<tr class="wTr2"></tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>