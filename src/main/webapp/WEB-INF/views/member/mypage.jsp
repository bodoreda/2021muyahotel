<%@page import="kr.co.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!--vip 아이콘 -->

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">


<style>
*, ::after, ::before {
    box-sizing:  content-box  !important;
}

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
#memberId{
width: 413px !important;
height: 24px !important;
}
#currPw{
width: 325.200px !important;
height: 24px !important;
}

#memberName{
width: 413px !important;
height: 24px !important;
}
#phone{
width: 413px !important;
height: 24px !important;}
#addr{
width: 413px !important;
height: 24px !important;
}

.container {
	margin-top: 50px;
	margin-bottom: 50px;
	width: 100%;
}

form {
	display: flex;
	justify-content: center;
	/* align-items: center; */
}

.myinfo {
	border: 3px solid #9c836a;
	width: 500px;
	margin: 0;
}

.mypoint {
	border: 3px solid #9c836a;
	width: 500px;
	min-height: 550px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #9c836a;
}

h2 {
	margin-left: 200px;
	margin-top: 40px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
}

h3 {
	margin-top: 10px;
	color: #e3dede;
	font-family: 'Noto Sans KR', sans-serif;
}

#newPw {
	display: none;
}

#chkNewPw {
	display: none;
}

#chkPoint {
	text-align: center;
}

#qna {
	color: #e3dede;
	font-family: 'Noto Sans KR', sans-serif;
}
#qna:hover{
	text-decoration:none;

}
/*실버*/
.silver-icon {
	transform: rotate(320deg);
	font-size: 40px;
	/* color: #ffda8e; */
	color: #D4DFE6;
}
/*골드*/
.gold-icon {
	transform: rotate(320deg);
	font-size: 30px;
	color: #ffda8e;
}
/*븨아피*/
.vip-icon {
	font-size: 40px;
	/* color: #6f3826; */
	color: #e3dede;
}

.silver {
	color: #fff;
	font-size: 30px;
	font-family: 'Noto Sans KR', sans-serif;
}

.gold {
	color: #fff;
	font-size: 30px;
	font-family: 'Noto Sans KR', sans-serif;
}


.pointValue{
	font-size:40px;
	color:#f9c00c;
	font-weight:bold;
}
#update{
	border: 1px solid #9c836a;
	border-radius:3px;
	background-color:#9c836a;
	color:#fff;
	font-family: 'Noto Sans KR', sans-serif;
}
/*  #update:hover{
	border:1px solid #9c836a;
	border-radius:3px;
	background-color:#fff;
	font-family: 'Noto Sans KR', sans-serif;
	color:rgb(12, 62, 114);
}  */
#mem{
	border: 1px solid #9c836a;
	border-radius:3px;
	color:rgb(12, 62, 114);
	
}
 #mem:hover{
	background-color:#fff;
	color:rgb(12, 62, 114);
}  
</style>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<h2 style="color: #D09E88;">내 정보</h2>
	<hr>
	<div class="container">
		<form action="/updateMember.do" method="post">
			<div class="myinfo">

				<div class="form-group" style="margin: 10px;">

					<fieldset>
						<label class="control-label" for="memberId">아이디</label> <input
							type="text" id="memberId" name="memberId" class="form-control"
							value="${m.memberId }" readonly>
					</fieldset>
				</div>
				<div class="form-group pwChgWrap" style="margin: 10px;">
					<fieldset>
						<label class="control-label" for="currPw" style="display: block;">현재
							비밀번호</label> <input type="text" id="currPw" name="currPw"
							class="form-control" style="width: 80%; display: inline-block;"
							value="${m.memberPw }" readonly>
						<button type="button" id="pwChange"
							class="btn btn-secondary pwChg" name="change">비번변경</button>
					</fieldset>
				</div>
				<div class="form-group" id="newPw" style="margin: 10px;">
					<label class="control-label" for="memberPw">새 비밀번호</label> <input
						type="password" name="memberPw" id="memberPw" class="form-control">
					<span class="comment"></span>
				</div>
				<div class="form-group" id="chkNewPw" style="margin: 10px;">
					<label class="control-label" for="newRePw">새 비밀번호 확인</label> <input
						type="password" name="newRePw" id="newRePw" class="form-control">
					<span class="comment"></span>
				</div>
				<div class="form-group" style="margin: 10px;">
					<fieldset>
						<label class="control-label" for="memberName">이름</label> <input
							type="text" id="memberName" name="memberName"
							class="form-control" value="${m.memberName }" readonly>
					</fieldset>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label class="control-label" for="phone">전화번호</label> <input
						type="text" id="phone" name="phone" class="form-control"
						value="${m.phone }"> <span class="comment"></span>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label class="control-label" for="addr">주소</label> <input
						type="text" id="addr" name="addr" class="form-control"
						value="${m.addr }"> <span class="comment"></span>
				</div>

				<div class="form-group" style="margin: 10px;">
					<label class="control-label" for="gender">성별</label>
					<c:choose>
						<c:when test='${m.gender.equals("남") }'>
							<input type="radio" name="gender" value="남" checked>
				남자
				<input type="radio" name="gender" value="여">
				여자
				</c:when>
						<c:otherwise>
							<input type="radio" name="gender" value="남">
				남자
				<input type="radio" name="gender" value="여" checked>
				여자
				</c:otherwise>
					</c:choose>
				</div>
				<div class="form-group">

					<fieldset style="text-align: center">
						<button type="submit" class="btn btn-outline-primary" id="update"
							onclick="return checkValue();">수정</button>
						<c:choose>
							<c:when test="${m.memberLevel==4}">
								<a href="/admin.do" class="btn btn-outline-danger" id="mem">회원관리</a>
							</c:when>
							<c:otherwise>
								<a href="/deleteMember.do?memberId=${sessionScope.m.memberId }"
									id="mem" class="btn btn-outline-danger">탈퇴</a>
							</c:otherwise>
						</c:choose>
					</fieldset>
				</div>

			</div>

			<div class="mypoint">
				<div class="form-group">
					<fieldset>
						<div id="chkPoint">
							<div class="form-group">

								<label class="control-label" for="memberLevel"
									style="font-size: 18px;"></label>
								<!-- 아이콘하고 span 태그 간격 맞추기 -->
								<c:choose>
									<c:when test="${m.memberLevel==1 }">
										<i class="fas fa-bone silver-icon"></i>
										<span class="silver">SILVER</span>
									</c:when>
									<c:when test="${m.memberLevel==2 }">
										<i class="fas fa-bone gold-icon"></i>
										<span class="gold">GOLD</span>
									</c:when>

									<c:when test="${m.memberLevel==3 }">
											<i class="xi-crown vip-icon">VIP</i> 
											
									</c:when>
									<c:when test="${m.memberLevel==4 }">
										<i class="xi-profile-o" style="color: #fff; font-size: 30px;">ADMIN</i>
									</c:when>

								</c:choose>
								<c:choose>
									<c:when test="${m.memberLevel==1 }">
										<h3>현재 잔여 포인트는 <span class="pointValue">"${m.memberPoint }p"</span> 입니다.</h3>
									</c:when>
									<c:when test="${m.memberLevel==2 }">
										<h3>현재 잔여 포인트는 <span class="pointValue">"${m.memberPoint }p"</span> 입니다.</h3>
									</c:when>
									<c:when test="${m.memberLevel==3 }">
										<h3>현재 잔여 포인트는 <span class="pointValue">"${m.memberPoint }p"</span> 입니다.</h3>
									</c:when>
									<c:when test="${m.memberLevel==4 }">
									</c:when>
								</c:choose>
							</div>
							<div style="margin-top:40px;">
							<i class="xi-cart-o" style="color:#fff;"><a href="/selectPayment.do?memberId=${sessionScope.m.memberId }"id="qna">결제내역확인 </a>| </i>
							<i class="xi-calendar" style="color:#fff;"><a href="/dmList.do?memberId=${sessionScope.m.memberId }" id="qna">문의함</a></i>
							</div>
						</div>
					</fieldset>
				</div>
			</div>

		</form>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		$("#pwChange").click(function() {
			$("#newPw").show();
			$("#chkNewPw").show();
		})
		 
		function checkValue() {
			var count = 0;
			if ($("#newPw").css("color") == "rgb(255, 0, 0)") {

				count++;
			}

			var info = $("input");
			var comments = $(".comment");
			comments.html("");
		
			//비번
			var pw = /^[a-zA-Z0-9]{8,12}$/;
			if (!(pw.test($("#memberPw").val()))) {
				comments.eq(0).html("소문자, 대문자, 숫자로 8~12글자");
				comments.eq(0).css("color", "red");
				count++;
			}
			//비번확인
			if (info.eq(2).val() != info.eq(3).val()) {
				comments.eq(1).html("비밀번호가 일치하지 않습니다.");
				comments.eq(1).css("color", "red");
				count++;
			}
			//폰
			var phone = /^\d{3}\d{3,4}\d{4}$/;
			if (!phone.test(info.eq(5).val())) {
				comments.eq(2).html("전화번호를 확인해주세요");
				comments.eq(2).css("color", "red");

				count++;
			}
			//주소
			var addr = /^[a-zA-Z]+$/;
			if (info.eq(6).val() == "" || addr.test(info.eq(6).val())) {
				comments.eq(3).html("영어 및 공백이 불가능합니다.");
				comments.eq(3).css("color", "red");
				count++;
			}

			if (count != 0) {
				return false;
			}
		}
	</script>

</body>
</html>