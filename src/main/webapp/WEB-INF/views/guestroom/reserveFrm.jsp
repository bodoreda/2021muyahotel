<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <style>
        .content-wrap{
            margin: 10px auto;
            width: 900px;
        }
        .tabs{
            list-style-type: none;
            margin: 0 auto;
            padding: 0;
            overflow: hidden;      
        }
        .tab{
            width: calc(100%/3);
            height: 75px;
            float: left;
            text-align: center;
            font-size: 16pt;
            box-sizing: border-box;
        }
        .contents{
            width:calc(900px - (10px*2) - (1px*2));
            padding: 10px;
            border: 1px solid #9c836a;
            border-top: none;
            
        }
        .content-detail{
            padding: 5px 0;
        }
        .content-detail:nth-child(1){
        	margin: 0 10px;
        }
        .nextBtn{
            width:180px;
            height: 50px;
            border: 1px solid #9c836a;
            font-size: 20px;      
        }
        .nextBtn:hover{
            background-color: #9c836a;
            color: white;
            cursor: pointer;
        }
        .btnBox{
            text-align: center;
        }
        .rsv-info{
            color: blue;
        }
        .reserve-list{
            margin: 0 auto;
            width: 500px;
            border-collapse: collapse;
        }
        .reserve-list tr{
            height: 50px;
        }
        .reserve-list th, .reserve-list td{
        	border-bottom: 1px solid #e7e7e7;
        }
        .reserve-list th{
            border-left: 1px solid transparent;
            width: 40%;
            font-size: 14pt;
            font-weight: 600;
            background-color: #f3f3f3;
        }
        .reserve-list td{
            border-right: 1px solid transparent;
            width: 60%;
            font-size: 14pt;
        }
        .reserve-list td:not(.t-header>td){
            font-weight: 600;
            padding-left: 20px;
        }
        .t-header{
            color: white;
            background-color: #676767;
            border-bottom: 2px solid #bbbbbb;
            height: 50px;
            font-weight: bold;
            text-align: center;
        }
        .t-header>td{
            font-size: 18pt;
        }
        #total{
            margin: 0 auto;
            border: 1px solid #d0184a;
            height: 50px;
            line-height: 50px;
            width: calc(500px - (1px*2));
        }
        #total>div{
            float: left;
            text-align: center;
            font-size: 14pt;
            font-weight: bold;
        }
        #total>div:first-child{
            width: 40%;
            background-color: #ee3e61;
            color: white;
        }
        #total>div:last-child{
            width: calc(60% - 20px);
            color: #ee3e61;
            text-align: left;
            padding-left: 20px;
        }
        .agreement{
        	diplay:inline-block;
        	margin: 0 auto;
        }
        .agreement ul{
        	display: inline-block;
        }
        .agreement li{
        	text-align: left;
        }
        #success{
        	text-align: center;
        }
        #success>div{
           	width: 200px;
        	background-color: green;
        	color: white;
        	font-size: 18pt;
        	display: inline-block;
        	margin: 20px 0;
        }
    </style>
    <script>
        $(function(){
            selectTab(0);
            var charge = $(".rsv-info").eq(5).text();
            charge = charge.replace(/\B(?=(\d{3})+(?!\d))/g,",");
            $(".rsv-info").eq(5).text(charge);
            $("#total span").text(charge);
        });
        function updateTab(){
            var tabs = $(".tab");
            var content = $(".content");
            for(var i=0;i<tabs.length;i++){        
                tabs.eq(i).css("border","1px solid #9c836a");
                tabs.eq(i).css("line-height","70px");
                tabs.eq(i).css("color","black");
                content.eq(i).css("display","none");
            }
        }
        function selectTab(index){
            var tabs = $(".tab");
            var content = $(".content");
            updateTab();
            tabs.eq(index).css("border-top", "5px solid #9c836a");
            tabs.eq(index).css("color","#9c836a");
            tabs.eq(index).css("border-bottom","none");
            tabs.eq(index).css("font-weight","bold");            
            content.eq(index).css("display","block");
        }
        function next(){
            var agree = $("#agreement");
            if(agree.is(":checked")){        
                selectTab(1);        
            }else{
                alert("이용약관에 먼저 체크해주세요.");
            }
        }
        function next2(){
        	// var fee = 100; // 100원 결제로 테스트합니다.
        	var strFee = $(".rsv-info").eq(5).text();
        	strFee = strFee.replace(/[^0-9]/g,'');
        	var fee = Number(strFee); // 실제 결제 금액
        	var rsv = $(".rsv-info");
        	// 예약자ID, 체크인, 체크아웃, 객실번호
        	var rId = rsv.eq(0).text();
			var chkIn = rsv.eq(1).text();
			var chkOut = rsv.eq(2).text();
			var rNo = Number(rsv.eq(3).text());
   			var d = new Date(); // 결제가 되었을 때 고유번호(결제 번호)를 만듦.
   			var date = d.getFullYear()+""+(d.getMonth()+1)+""+d.getDate()
   						+""+d.getHours()+""+d.getMinutes()+""+d.getSeconds();
   			// ""는 숫자 연산 안되게 하려고
   			IMP.init('imp54498209'); // 가맹점 식별코드, 결제 api 사용을 위한 코드 입력 
   			IMP.request_pay({
   				merchant_uid : "거래 일"+date,
   				buyer_name: rId,
   				buyer_email: "",
   				name : "무야호텔 객실 예약",	// 결제 이름
   				amount : fee	// 결제 금액
   				
   			},function(rsp){
   				if(rsp.success){ // 결제 성공 시
   					$.ajax({
   						url:"reservation.do",
   						data:{
   							reservedClient:rId,
   							roomNo:rNo,
   							checkIn:chkIn,
   							checkOut:chkOut
   							},
   						success:function(data){
   							alert(data);
   						}
   					});
   					selectTab(2);
   					// rsp.apply_num : 카드 승인 번호
   				}else{
   					alert('결제 실패..');
   				}
   			});
        }
        function home(){
            location.href='/';
        }
    </script>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="content-wrap">
    	<ul class="tabs">
            <li class="tab">약관확인</li>
            <li class="tab">예약 정보</li>
            <li class="tab">결제 완료</li>
        </ul>
        <div class="contents">
            <div class="content">
                <div class="content-detail" style="text-align: center;">
                    <p style="font-size: 16pt;">이용약관 확인 및 동의</p>
                    <input type="checkbox" id="agreement">
                    <label for="agreement" style="font-size: 14pt;">이용약관</label>
                    <div class="agreement">
	                    <ul>
	                        <li>실시간예약 특성상 중복예약이 발생할 수 있습니다.</li>
	                        <li>당일 예약 취소는 불가능합니다.</li>
	                        <li>객실 내에 기물을 파손하거나 가져가지 않을 것을 약속합니다.</li>
	                        <li>객실 인원보다 인원이 많은 경우 추가 요금이 발생할 수 있습니다.</li>
	                    </ul>
                    </div>
                </div>
                <div class="btnBox">
                    <button class="nextBtn" onclick="next();">다음</button>
                </div>
            </div>
            <div class="content">
                <div class="content-detail">
			        <table class="reserve-list">
			            <tr class="t-header">
			                <td colspan="2">예약 내역</td>
			            </tr>
			            <tr>
			                <th>예약자 ID</th>
			                <td class="rsv-info">${rsv.reservedClient }</td>
			            </tr>
			            <tr>
			                <th>체크 인</th>
			                <td class="rsv-info">${rsv.checkIn }</td>
			            </tr>
			            <tr>
			                <th>체크 아웃</th>
			                <td class="rsv-info">${rsv.checkOut }</td>
			            </tr>
			            <tr>
			                <th>객실 번호</th>
			                <td class="rsv-info">${rsv.roomNo }</td>
			            </tr>
			            <tr>
			                <th>객실 이름</th>
			                <td class="rsv-info">${g.roomName }</td>
			            </tr>
			            <tr>
			                <th>객실 요금</th>
			                <td class="rsv-info">${g.roomCharge }<span>원</span></td>
			            </tr>
			        </table><br>
			        <div id="total">
			            <div>최종 결제 금액</div>
			            <div><span></span></div>
			        </div><br>
               	</div>
                <div class="btnBox">
                    <button class="nextBtn" onclick="next2();">결제하기</button>
                </div>
            </div>
            <div class="content">
                <div class="content-detail">
                	<div id="success">
                		<div>결제 완료</div>
                		<h3>결제가 완료되었습니다! 이용해주셔서 감사합니다. ^^</h3>
                	</div>
                </div>
                <div class="btnBox">
                    <button class="nextBtn" onclick="home();">홈으로</button>
                </div>
            </div>
        </div>
    </div> 
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>