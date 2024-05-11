<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
	font-size: 30px;
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
	font-size: 30px;
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
	font-size: 30px;
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
	font-size: 30px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color: #9c836a;
	border-bottom: 3px solid rgba(66, 66, 66, 0.774);
	padding-bottom:8px;
}
#pTh3{
	text-align:left;
	font-size: 60px;
	font-weight:600;
    line-height: 60px;
    font-family: 'Noto Sans KR', sans-serif;
	color: rgba(66, 66, 66, 0.774);
	border-bottom: 3px solid rgba(66, 66, 66, 0.774);
	padding-bottom:8px;
}
#pTh4{
	text-align:left;
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
    margin:0% 0% 2% 0%;
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
			<h2>${sessionScope.m.memberName }님의 장바구니</h2>
			<br><br>
			<div id="result">
				<table class="bTable">
					<tr>
						<th id="th1"><input type="checkbox" id="allCheck"></th><th id="th2">이미지</th><th id="th3">장바구니번호</th><th id="th4">품목이름</th><th id="th5">수량</th><th id="th6">가격</th>
					</tr>
					<tr class="wTr1"></tr>
					<c:forEach items="${list }" var="bsk" varStatus="i">
						<c:if test="${not empty sessionScope.m && sessionScope.m.memberId eq bsk.memberId && bsk.basketStatus eq 'N'}">
							<tr class="bTtr">
								<th id="bTtr1"><input type="checkbox" name="oneCheck" id="oneCheck" onclick="select(this);"></td>
								<td id="bTtr2"><img src="/img/store/${bsk.mainImg }" class="bImg"></td>
								<td class="iCount" id="bTtr3">${i.count }<input type="hidden" id="basketNo" value="${bsk.basketNo }"></td>
								<td id="bTtr4">${bsk.psName }
									<input type="hidden" id="mi" value="${bsk.memberId }">
									<input type="hidden" id="mp" value="${sessionScope.m.phone }">
									<input type="hidden" id="ml" value="${sessionScope.m.memberLevel }">
									<input type="hidden" id="mPoint" value="${sessionScope.m.memberPoint }">
								</td>
								<td class="count" id="bTtr5"><button class="amountBtn">-</button><span class="amount" id="psAmount">${bsk.psAmount }</span><button class="amountBtn">+</button></td>
								<td class="total" id="bTtr6"><span id="totalPrice">${bsk.psAmount*bsk.psPrice }</span>원<input type="hidden" id="psPrice" value="${bsk.psPrice }"></td>
							</tr>
							<tr class="wTr2"></tr>
						</c:if>
					</c:forEach>
					<tr class="wTr2"></tr>
					<tr class="wTr2"></tr>
					<tr>
						<th id="pTh3"><button id="deleteBskBtn">품목삭제</button></th><th id="pTh1">총 가격</th><th colspan="2" id="pTh2"><span id="sumPrice">0</span></th><th colspan="2" id="pTh4"><button id="payment">결제하기</button></th>
					</tr>
				</table>
				
				
			</div>
		</div>
	</div>	
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<script>
		
		$(function(){
			$("#allCheck").click(function(){
				$("[name=oneCheck]").prop("checked",$(this).prop("checked"));
				changeTotalPrice();
			});
			$("[name=oneCheck]").change(function(){
				changeTotalPrice();
			});
			$("#allCheck").click();
		});
		function changeTotalPrice(){
			$("#sumPrice").html(0);
			var checkedProduct = $("[name=oneCheck]:checked");			
			var sum = 0;
			for(var i=0;i<checkedProduct.length;i++){
				sum += Number(checkedProduct.eq(i).parent().next().next().next().next().next().children('span').html());
			}
			$("#sumPrice").html(sum);
		}
		

		$(".amountBtn").click(function(){
			var currAmount = Number($(this).parent().children('span').html());
			if($(this).html() == "+"){
				$(this).prev().html(currAmount+1);
			}else{
				if(currAmount != 1){
					$(this).next().html(currAmount-1);				
				}
			}
			currAmount = Number($(this).parent().children('span').html());
			var price = Number($(this).parent().next().children('input').attr('value'));
			$(this).parent().next().children('span').html(currAmount*price);
			changeTotalPrice();
		});
		
		$(".amountBtn").click(function(){
	    	var basketNo = $(this).parent().prev().prev().children('input').attr('value');
	    	var psAmount = $(this).parent().children('span').html();
			//객체생성
			var basket = {basketNo:basketNo,psAmount:psAmount};
			$.ajax({
				url : "/updateBasket.do",
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
		
		$("#deleteBskBtn").click(function(){
	    	var checkBoxes = [];
	    	$('input[name="oneCheck"]:checked').each(function(idx){
	    		checkBoxes.push($('input[name="oneCheck"]:checked:eq('+idx+')').parent().next().next().children('input').attr('value'));
            });
	    	
	    	$.ajax({
                url : "/deleteBasket.do",
                dataType : "json",
                type : "post",
                data : {basketNo:checkBoxes},
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
		
		$("#payment").click(function(){
			var psNo = $('input[name=psNo]').attr('value');
			var basketNo = $('input[id=basketNo]').attr('value');
			var basketStatus = "Y";
			var checkBoxes = [];
			$('input[name="oneCheck"]:checked').each(function(idx){
	    		checkBoxes.push($('input[name="oneCheck"]:checked:eq('+idx+')').parent().next().next().children('input').attr('value'));
            });
			var basketNo = $('input[id=basketNo]').attr('value');
			var memberId = $('input[id=mi]').attr('value');
			var phone = $('input[id=mp]').attr('value');
			var price = $("#sumPrice").html();
			var d = new Date();
			var date = d.getFullYear()+""+(d.getMonth()+1)+""+d.getDate()+""+d.getHours()+""+d.getMinutes()+""+d.getSeconds();
			var paymentDate = d.getFullYear()+"/"+(d.getMonth()+1)+"/"+d.getDate()+"/"+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
			var basket = {basketNo:checkBoxes, basketStatus:basketStatus};
			var payment = {basketNo:checkBoxes, paymentDate:paymentDate, memberId:memberId};
			var memberLevel = $('input[id=ml]').attr('value');
			var memberPoint = Number($('input[id=mPoint]').attr('value'));
			if(memberLevel==1){
				memberPoint = memberPoint+(price*0.02);
			}else if(memberLevel==2){
				memberPoint = memberPoint+(price*0.05);
			}else if(memberLevel==3){
				memberPoint = memberPoint+(price*0.07);
			}else{
				memberPoint = memberPoint+(price*0.07);
			}
			IMP.init('imp69263723');//결제 API 사용을 위한 코드 입력
			IMP.request_pay({
				merchant_uid : basketNo+"_"+date,		//거래 ID
				name : "MUYAHOTEL_PETSUPPLIES_BUY",					//결제 이름
				amount : price,						//결제 금액
				buyer_name : memberId,				//구매자 이름
				buyer_phone : phone,		//구매자 전화번호
				buyer_email : ""//구매자 email주소
			}, function(rsp){
				if(rsp.success){
					//결제 성공 시
					//DB에 결제정보 저장하고 사용자 화면 처리
					alert("결제 성공");
					console.log("카드 승인 번호 : "+rsp.apply_num);
					$.ajax({
		                url : "/updateBasketStatus.do",
		                type : "post",
		                dataType : "json",
		                data : basket,
		                success : function(data){
							if(data == 1){
								$.ajax({
									url : "/insertPayment.do",
									type : "post",
									dataType : "json",
									data : payment,
									success : function(data){
										if(data == 1){
											$.ajax({
												url : "/updateMemberPoint.do",
												type : "post",
												data : {memberId:memberId,memberPoint:memberPoint},
												success : function(data){
													if(data == 1){
														console.log("성공");
														location.reload();	
													}else{
														console.log("실패");	
													}
												}
											});

										}else{
											console.log("실패");	
										}
									}
								});
							}else{
								console.log("실패");	
							}
						}
		            });
				}else{
					//결제 실패 시
					alert("결제 실패");
				}
			});
			
			
		});
	</script>
</body>
</html>