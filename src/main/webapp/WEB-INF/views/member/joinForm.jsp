<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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

/**/


#joinInfo {
	width: 650px;
	height: 150px;
	font-size:13px;
}

.infoForm {
	margin-top: 30px;
	margin-bottom: 100px;
}

#agree {
	margin-top: 50px;
	padding-bottom:40px;
	text-align: center;
	/* color: rgb(12, 62, 114); */
	color: #9c836a;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
}

#agree_title {
	margin-right: 470px;
	font-family: 'Noto Sans KR', sans-serif;
}

#agree_title1 {
	margin-right: 480px;
	font-family: 'Noto Sans KR', sans-serif;
}

#agree_title2 {
	margin-right: 410px;
	font-family: 'Noto Sans KR', sans-serif;
}

#agree_title3 {
	margin-right: 520px;
	font-family: 'Noto Sans KR', sans-serif;
}

#allCheck {
	text-align: center;
	margin-top:30px;
}

#joinFooter {
	text-align: center;
	font-size: 20px;
	font-family: 'Noto Sans KR', sans-serif;
	margin-bottom:20px;
	/*  border: 1px solid #9c836a; */ 
	 width:100px; 
	margin: 0 auto;
	margin-top:30px;
	margin-bottom:50px;
}
#joinFooter>a{
	font-weight: bold;
}
#joinFooter:hover{
	/* background-color:#9c836a; */
}
#joinFooter>a:hover{
	text-decoration:none;
	font-weight:bold;
	color:#9c836a; 
	/* background-color:#9c836a;  */
	
}
.joinLink {
	color: #9c836a;
	 /* border: 1px solid #9c836a; */
}
.joinLink:after {
	display: block;
	left: 0;
	bottom: -10px;
	width: 0;
	height: 2px;
	background-color: rgb(12, 62, 114);
	/* background-color:#fff; */
	content: "";
	transition: width 0.2s;
}

.joinLink:hover {
	color: rgb(12, 62, 114);
}

.joinLink:hover:after {
	width: 100%;
}
.joinLink>span{
	font-size:25px;
}

p>textarea {
	font-size: 12px;
}
#check_all{
	margin-bottom: 30px;
	margin-top:30px;
	
}
.checkbox_group{
	box-shadow:10px 10px 10px 10px grey;
	border: 1px solid #9c836a;
	width:900px;
	margin:0 auto;
	margin-top:30px;
}
</style>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	
	<h1 id="agree">MUYAHOTEL</h1>
	<form action="/joinFrm.do" method="get" class="infoForm">
		<div class="checkbox_group">
			<div id="allCheck">
				<div>
					<input type="checkbox" id="check_all"> <label
						for="check_all" style="font-weight:bold;">MUYA HOTEL 이용약관, 개인정보 수집 및 이용, 위치정보
						이용약관(선택)에 모두 동의합니다.</label>
				</div>
				<div id="allCheck">
					<div id="agree_title">
						<input type="checkbox" id="check_1" class="normal"> <label
							for="check_1">무야호텔 이용 약관 동의</label>
					</div>
					<p>
						<textarea name="info" id="joinInfo" readonly>제1조 멤버십 규정 일반

1. 본 약관은 주식회사 무야호텔(이하 “회사”)의 호텔 멤버십 프로그램인 Muyahotel Rewards(이하 “멤버십 프로그램”)의 이용에 관한 기본적인 사항을 정함을 목적으로 합니다.


2. 멤버십 프로그램의 이용약관 및 멤버십 운영에 관련한 각종 혜택 및 서비스의 적용 범위는 다음과 같습니다. (이하 (1)~(3)을 총칭하여 "가맹호텔")


(1) 무야호텔 : 서울무야호텔, 제주무야호텔


(2) 무야스테이 전 점


(3) 그 외 향후 제휴 호텔 및 리조트


3. 회사는 본 약관에서 멤버십 프로그램의 회원 자격과 혜택, 멤버십 포인트 획득과 사용에 관한 내용을 규정합니다.


4. 멤버십 프로그램은 만 19세 이상의 개인 회원을 대상으로 하며, 법인 또는 단체 등은 멤버십에 가입할 수 없습니다.


5. 멤버십 프로그램의 약관, 규칙 중에 신청자 및 회원의 소속 국가 및 거주지의 강행법규에 위배되는 부분이 있을 경우, 해당 부분은 해당 회원에 한하여 무효화 합니다.


6. 회사는 멤버십 운영 주체의 상황에 따라 본 이용약관을 포함한 프로그램 구성, 특전 및 그 내용을 변경하고, 본 멤버십 프로그램을 종료할 수 있습니다.


7. 회사는 본 약관을 변경하는 경우 변경되는 약관의 적용일자 및 변경내용, 사유 등을 명시하여 현행약관과 함께 변경약관 적용일로부터 10일(회원에게 불리하게 변경되는 경우 1개월) 이전에 서면, 전자우편, 홈페이지 공지 등의 방법을 통해 회원에게 통지합니다. 회원은 변경약관에 동의하지 않을 수 있으며, 변경약관에 동의하지 않을 경우 회원 탈퇴를 할 수 있습니다. 단, 회사가 위 약관 변경 통지를 하면서 변경약관 적용일까지 의사표시를 하지 않으면 변경약관에 동의한 것으로 간주한다는 내용을 고지하였음에도 불구하고, 회원이 명시적으로 거부의사를 표시하지 않은 경우 회원이 변경약관에 동의한 것으로 간주합니다. 단, 회원에게 불리하게 변경되는 경우 통지 후 2개월 이내 회원 탈퇴를 할 수 있습니다.


8. 회사는 멤버십 프로그램 종료 최소 6개월 이전에 호텔 공식 웹사이트(https://www.muyahotel.com, 이하 “멤버십 홈페이지”)에 공지를 하며, 전 회원을 대상으로 1회 이상 전자우편을 통한 안내문을 발송합니다.


9. 멤버십 프로그램 종료 통보 이후 6개월 경과 시점 기준으로 보유 포인트는 자동 소멸되며, 모든 혜택 및 서비스 제공이 중단됩니다.


10. 주소 및 기타 개인정보 사항의 변경 시 회원은 회사에 통보하여야 하고, 미 통보로 인한 회원의 불이익은 해당 회원이 감수하며 회사가 책임지지 않습니다.


11. 회사는 호텔정보 및 회원의 계정명세 등을 회원에게 통지할 수 있고, 우편에 의한 통지의 경우 그 분실 또는 전달의 지연에 대한 책임을 지지 않습니다.


12. 본 약관은 대한민국 법률이 적용되며, 본 약관과 관련된 제반 분쟁 및 소송은 회원의 주소지, 회사의 소재지를 관할하는 법원을 합의 관할법원으로 합니다.
       </textarea>
					</p>
				</div>
				<div id="allCheck">
					<div id="agree_title1">
						<input type="checkbox" id="check_2" class="normal"> <label
							for="check_2">개인정보 처리방침 동의</label>
					</div>
					<p>
						<textarea name="info" id="joinInfo" readonly>1. 수집 이용 항목

성명(국문·영문), 생년월일, 성별, 이메일주소, 휴대폰번호, 구매 및 예약내역, 투숙기간, 아이디, 비밀번호, 무야리워즈 번호, IPIN(DI)

2. 수집 이용 목적

본인 식별, 신라리워즈 서비스 제공 및 민원처리

3. 보유 이용 기간

회원 탈퇴 시 까지

※ 관련 법령에서 정한 별도 보유 기한이 있는 경우는 그에 따름.
※ 위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 신라리워즈 회원 가입 및 서비스 이용이 불가합니다.
닫기

       </textarea>
					</p>
				</div>
				<div id="allCheck">
					<div id="agree_title2">
						<input type="checkbox" id="check_3" class="normal"> <label
							for="check_3">개인정보 제3자 제공에 대한 동의 </label>
					</div>
					<p>
						<textarea name="info" id="joinInfo" readonly>1. 제공받는 자

무야스테이㈜

2. 제공받는 자의 이용 목적

무야리워즈 서비스 제공

3. 제공하는 항목

성명(국문), 생년월일, 성별, 이메일주소, 휴대폰번호, 구매 및 예약 내역, 투숙기간, 아이디

4. 제공받은 자의 보유·이용 기간 :

회원 탈퇴 시까지

※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 무야리워즈 회원 가입 및 서비스 이용이 불가합니다.
       </textarea>
					</p>
				</div>
				<div id="allCheck">
					<div id="agree_title3">
						<input type="checkbox" id="check_4" class="normal"> <label
							for="check_4">마케팅 수신 동의</label>
					</div>
					<p>
						<textarea name="info" id="joinInfo" readonly>1. 수집, 이용 항목

성명(국문), 생년월일, 성별, 이메일주소, 휴대폰번호, 자택주소, 구매 및 예약 내역, 아이디

2. 수집·이용 목적

㈜호텔무야 상품 및 서비스 소개(호텔, 스토어 등), 무야스테이㈜ 기타 제휴 호텔의 상품 및 서비스 소개, 사은·판촉행사 안내, 만족도 조사, 시장 조사

3. 보유·이용 기간

회원 탈퇴 시 까지 또는 마케팅 활용 동의 철회시 까지 중 빠른 시점

※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 개인형 맞춤 상품 안내 등 유용한 상품안내를 받아보실 수 없습니다.
닫기
					
       </textarea>
					</p>
				</div>
			</div>
			<div id="joinFooter" >
				<a class="joinLink" href="/joinFrm.do" onclick="return check_join()" ><span>회원가입</span></a>
			</div>
			</div>
	</form>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
		//체크박스 전체 선택
		$(".checkbox_group").on(
				"click",
				"#check_all",
				function() {
					$(this).parents(".checkbox_group").find('input').prop(
							"checked", $(this).is(":checked"));
				});

		// 체크박스 개별 선택
		$(".checkbox_group").on("click", ".normal", function() {
			var is_checked = true;

			$(".checkbox_group .normal").each(function() {
				is_checked = is_checked && $(this).is(":checked");
			});

			$("#check_all").prop("checked", is_checked);
		});
		
		function check_join() {
			var count = 0;
			if ($("#check_1").is(":checked") == false) {
				alert("'무야호텔 이용 약관' 에 동의 하셔야 다음 단계로 진행이 가능합니다.");
				count++;
			}
			if ($("#check_2").is(":checked") == false) {
				alert("'개인정보 처리 방침' 에 동의 하셔야 다음 단계로 진행이 가능합니다.");
				count++;
			}

			if ($("#check_3").is(":checked") == false) {
				alert("'개인정보 제3자 제공' 에 대한 동의 하셔야 다음 단계로 진행이 가능합니다.");
				count++;
			}

			if ($("#check_4").is(":checked") == false) {
				alert("'마케팅 수신 동의' 에 대한 동의 하셔야 다음 단계로 진행이 가능합니다.");
				count++;
			}

			if (count != 0) {
				return false;
			}
		}
	</script>
</body>
</html>