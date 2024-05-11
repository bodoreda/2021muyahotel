<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
<style>
#center{
height:  128.400px !important;
}
#muyaSub{
height: 96.400px  !important;
margin-top:16px  !important;
}
#mookBtn{
	box-sizing: content-box  !important;
}
*, ::after, ::before {
    box-sizing:  content-box  !important;
}

/**/

	.table-tr{
		text-align:center;
		background-color: #E0E3DA;
		height:50px;
	}
</style>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="container">
		<fieldset>
			<table class="table-hover" style="width: 100%; margin-top:60px; margin-bottom:100px;">
				<tr class="table-tr" >
					<!--리스트 띄우면 포인트 넣기 -->
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>성별</th>
					<!-- <th>가입일</th> -->
					<th>포인트</th>
					<th>포인트 입력</th>
					<th>회원등급</th>
					<th>변경</th>
				</tr>
				<c:forEach items="${list }" var="m">
					<tr class="table-light" style="text-align:center;">
						<td>${m.memberNo }</td>
						<td>${m.memberId }</td>
						<td>${m.memberName }</td>
						<td>${m.phone }</td>
						<td>${m.addr }</td>
						<td>${m.gender }</td>
						<%-- <td>${m.enrollDate }</td> --%>
						<td>${m.memberPoint }</td>
						<td>
							<input type="text" id="memberPoint" name="memberPoint">
						</td>
						<td>
							<select class="form-control"
							style="width: 80%; display: inline-block">
								<c:choose>
									<c:when test="${m.memberLevel==1}">
										<option value="1" selected>Silver</option>
										<option value="2">Gold</option>
										<option value="3">Vip</option>
										<option value="4">관리자</option>
									</c:when>
									<c:when test="${m.memberLevel==2}">
										<option value="1">Silver</option>
										<option value="2" selected>Gold</option>
										<option value="3">Vip</option>
										<option value="4">관리자</option>
									</c:when>
									<c:when test="${m.memberLevel==3}">
										<option value="1">Silver</option>
										<option value="2">Gold</option>
										<option value="3" selected>Vip</option>
										<option value="4">관리자</option>
									</c:when>
									<c:when test="${m.memberLevel==4}">
										<option value="1">Silver</option>
										<option value="2">Gold</option>
										<option value="3">Vip</option>
										<option value="4" selected>관리자</option>
									</c:when>
								</c:choose>
						</select>
						</td>
						<td>
							<button class="btn  btn-sm changeLevel" style="color:#D09E88;">등급변경</button>
							<button class="btn  btn-sm inputPoint" style="color:#D09E88;">포인트</button>
						</td>
				</c:forEach>

			</table>
		</fieldset>
	</div>
	<script>
		$(".changeLevel").click(function() {
					var memberLevel = $(this).parent().prev().children().val();
					var memberNo = $(this).parent().parent().children().eq(0).html();
					location.href = "/changeLevel.do?memberNo=" + memberNo+ "&memberLevel=" + memberLevel;
				});
		$(".inputPoint").click(function() {
			var memberPoint = $(this).prev().parent().parent().children().eq(7).children().val();
			var memberNo = $(this).prev().parent().parent().children().eq(0).html();	
			/* memberPoint += memberPoint + ㅇㅇ; */
			location.href = "/inputPoint.do?memberNo=" + memberNo+ "&memberPoint=" + memberPoint;
		});
		
	</script>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>