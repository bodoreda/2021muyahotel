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
<!--  <link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"> -->
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
	integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
	crossorigin="anonymous">

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
width: 582px !important;
height: 20px !important;
}
#memberPw{
width: 582px !important;
height: 20px !important;
}
#rePw{
width: 582px !important;
height: 20px !important;
}
#memberName{
width: 582px !important;
height: 20px !important;
}
#phone{
width: 582px !important;
height: 20px !important;
}

#addr{
width: 582px !important;
height: 20px !important;
}

#joinInfo{
width: 608px  !important;

}
#muya > a{
font-size: 16px;
}

/**/


#wrap{
	background-image: url('/img/join-hotel1.jpeg');
	background-repeat:no-repeat;
	 background-size: 100% 400px; 
}
#joinTitle {
	margin-top: 450px;
	text-align: center;
	color: rgb(12, 62, 114);
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
	
}

#joinWrap {
	/* margin-top: 50px; */
	width: 700px;
	height: 100%;
	margin-bottom: 100px;

}

#joinForm {
	margin: 0px;
	padding-top: 40px;
}

#joinInfo {
	padding: 70px;
	margin-top:50px;
	border: 1px solid #9c836a;
	box-shadow:20px 20px 20px grey;
	width:750px;
	height:100%;
	/* border: 5px solid; */
    /* border-radius: 20px; */
    /* border-image: linear-gradient(to right, #F0E5DE, #ABD0CE, #7C7877,#D9D4CF); */
    /* border-image-slice: 1; */
	
}
.join-btn{
	border : 1px solid #9c836a;
	background-color: #9c836a;
	color:#fff;
	font-family: 'Noto Sans KR', sans-serif;	
	width: 100px;
	height:30px;
	float: right;
	border-radius:3px;
}
.join-btn:hover{
	background-color: rgb(12, 62, 114);
	color:#fff;
	border: 1px solid rgb(12, 62, 114);
}
</style>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div id="wrap">
		
		<div class="container" id="joinWrap">
			<!-- 수정 -->
			<input type="hidden" name="checkId"> <input type="hidden"
				name="memberLevel" value=1>

			<h1 id="joinTitle">MUYAHOTEL</h1>
			<!-- 아이콘넣기(이미지나) -->
			
				<form action="/join.do" method="post" id="joinInfo">
					<div class="form-group">
						<label class="control-label" for="memberId"
							style="display: block;">아이디</label> <input type="text"
							name="memberId" id="memberId" class="form-control"
							placeholder="ID"> <span id="idChk"></span>
					</div>

					<div class="form-group">
						<label class="control-label" for="memberPw">비밀번호</label> <input
							type="password" name="memberPw" id="memberPw"
							class="form-control" placeholder="Password"> <span
							class="comment"></span>
					</div>
					<div class="form-group">
						<label class="control-label" for="rePw">비밀번호확인</label> <input
							type="password" name="rePw" id="rePw" class="form-control"
							placeholder="Password Check"> <span class="comment"></span>
					</div>
					<div class="form-group">
						<label class="control-label" for="memberName">이름</label> <input
							type="text" name="memberName" id="memberName"
							class="form-control" placeholder="Name"> <span
							class="comment"></span>
					</div>
					<div class="form-group">
						<label class="control-label" for="phone">전화번호</label> <input
							type="text" name="phone" id="phone" class="form-control"
							placeholder="Phone Number"> <span class="comment"></span>
					</div>
					<div class="form-group">
						<label class="control-label" for="addr">주소</label> <input
							type="text" name="addr" id="addr" class="form-control"
							placeholder="Address"> <span class="comment"></span>
					</div>
					<div class="form-group">
						<label class="control-label" for="gender">성별</label> 
						<input type="radio" name="gender" value="남"> 남 
						<input type="radio" name="gender" value="여"> 여
					</div>
					<!-- <div>
				<label class="control-label" for="memberLevel">회원/관리자</label> 
						<input type="radio" name="memberLevel" value="memberLevel==4"> 관리자
						<input type="radio" name="memberLevel" value="memberLevel"> 회원 
			</div> -->
					<button type="submit"onclick="return checkValue();" class="join-btn">회원가입</button>
			
			</form>
			
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		$("[name=memberId]").keyup(function() {
			var memberId = $(this).val();
			$.ajax({
				url : "/idCheck.do",
				data : {
					memberId : memberId
				},
				type : "get",
				success : function(data) {
					if (data == 1) {
						$("#idChk").html("이미 사용중인 아이디 입니다.");
						$("#idChk").css("color", "red");

					} else {
						$("#idChk").html("사용가능한 아이디 입니다.");
						$("#idChk").css("color", "#9c836a");

					}
				}
			});
		});
		function checkValue() {
			/* alert("확인"); */
			var count = 0;
			if ($("#idChk").css("color") == "rgb(255, 0, 0)") {

				count++;
			}

			var info = $("input");
			var comments = $(".comment");
			comments.html("");
			
			
			var pw = /^[a-zA-Z0-9]{8,12}$/;
			if (!(pw.test($("#memberPw").val()))) {
				comments.eq(0).html("소문자, 대문자, 숫자로 8~12글자");
				comments.eq(0).css("color", "red");
				count++;
			}
			if (info.eq(3).val() != info.eq(4).val()) {
				comments.eq(1).html("비밀번호가 일치하지 않습니다.");
				comments.eq(1).css("color", "red");
				count++;
			}
			
			var name = /^[가-힣]+$/;
			if (!(name.test(info.eq(5).val()))) {
				comments.eq(2).html("한글최소 1글자 이상만 가능합니다.");
				comments.eq(2).css("color", "red");

				count++;
			}
			

			var phone = /^\d{3}\d{3,4}\d{4}$/;
			if (!phone.test(info.eq(6).val())) {
				comments.eq(3).html("전화번호를 확인해주세요");
				comments.eq(3).css("color", "red");

				count++;
			}

			var addr = /^[a-zA-Z]+$/;
			if (info.eq(7).val() == "" || addr.test(info.eq(7).val())) {
				comments.eq(4).html("영어 및 공백이 불가능합니다.");
				comments.eq(4).css("color", "red");
				count++;
			}
			
			if (count != 0) {
				return false;
			}

		}
	</script>
</body>
</html>