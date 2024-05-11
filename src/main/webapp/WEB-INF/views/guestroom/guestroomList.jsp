<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- datepicker api 사용을 위한 css 및 js 문서 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
    <style>
    
    *, ::after, ::before {
    box-sizing: content-box !important;
}
	dl, ol, ul{
		margin-top:16px !important;
	}
	.header-logo>img{
		width: 150px;
		height: 150px !important;
	}
	.lang {
	margin-top: 10px !important;
	width: 91.25px !important;
}

#moyattom{

	height: 812.444px !important;
}


/**/
        .guestrooms{
          	/* border: 2px dashed red; */
            margin: 10px;
            text-align: center;
        }
        .tabs{
            width: 800px;
            background-color: #9c836a;
            padding: 10px;
            display: inline-block;
        }
        .menu-tab{
            margin: 0;
            padding: 0;
            overflow: hidden;
            list-style-type: none;
            display: table;
            border-collapse: collapse;
        }
        .menu-tab>li{
            border: 2px solid #fff;
            width: 100px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #fff;
            display: table-cell;
        }
        .menu-tab>li:hover{
            background-color: #fff;
            color: black;
            cursor: pointer;
        }
        .content-tab{
            width: 780px;
            padding: 10px;
            background-color: #fff;
            display: none;
            text-align: left;
        }
        .content-wrap{
            margin: 5px 0;
            border: 2px solid #9c836a;
        }
        .content-wrap:hover{
            border: 2px solid orange;
        }
        .contents{
            margin: 10px;
            text-align: center;
        }
        .content{
            height: 150px;
            background-clip: padding-box;
            overflow: hidden;
        }
        .content>ul{
            margin: 0;
            padding: 0;
            height: 150px;
            list-style-type: none;
            text-align: center;
        }
        .content li{
            height: 100%;
            float: left;
            background-color: #E0E3DA;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            /* background-clip: padding-box; */
        }
        .content li:nth-child(1){
            line-height: 150px;
            margin-right: 2px;
            width: 10%;
        }
        .content li:nth-child(2){
            line-height: 150px;
            margin-right: 2px;
            font-size: 0;
            width: 30%;
        }
        .content li:nth-child(2)>img{
            width: 100%;
            padding: 0;
            vertical-align: middle;
        }
        .content li:nth-child(3){
            position: relative;
            margin-right: 2px;
            width: 40%;
            text-align: left;
        }
        .content li:nth-child(4){
            width: calc(20% - 6px);
        }
        .content-info{
            width: 100%;
            margin: 10px;
            text-align: left;
            position: relative;
            overflow: auto;
        }
        .content-info>p{
            display: flex;
            align-items: center;
        }
        [name=detail]{
            width: 80px;
            bottom: 10px;
            right: 10px;
            position: absolute;
        }
        [name=detail]:hover{
        	cursor: pointer;
        }
        .content-detail{
            padding: 10px;
            display: none;
            text-align: center;
        }
        .content-detail>div:not(.content-img){
            margin: 10px 0;
            text-align: left;
        }
        .content-img{
        	font-size: 0;
            background-clip: padding-box;
            border: 1px solid black; /* border 값 변경 시 width 값 조정할 것*/
            padding: 10px; /* padding 값 변경 시 width 값 조정할 것*/
            width: calc(100% - (1px*2) - (10px*2)); /* border와 padding 크기를 뺀 것*/
            display: inline-block;
        }
        .content-img>img{
            width: 100%;
        }
        .reserve-wrap{
            padding: 5px;
            /* border: 2px dashed red; */
        }
        .reserve{
            display: block;
            text-align: center;
        }
        dl,dd{
        	margin: 0;
        	/* padding: 0; */
        }
        .charge{
        	display:inline;
        }
        h3{
        	font-family: 'Noto Sans KR', sans-serif;
        	font-weight:bold;
        }
        #more-btn{
        	width: 200px;
        }
        #login-btn{
        	width: 200px;
        	background-color: #9c836a;
        	color: white;
        	border: 2px solid transparent;
        }
        #login-btn:hover{
        	background-color: white;
        	color: black;
        	border:2px solid #9c836a;
        	cursor: pointer;
        }
    </style>
    <style>
        .input-contents{
            display: none;
            width: 700px;
            padding: 10px;
        }
        .input-text{
            display: inline-block;
            margin: 0;
            width: 160px;
            text-align: right;
        }
        #select-room{
        	margin: 30px 0;
        	padding: 10px;
        	font-size: 14pt
        }
        #reserve-btn{
        	margin-top: 25px;
        	width: 100px;
        	height: 40px;
        	line-height: 30px;
        }
        #reserve-date input{
        	padding-left: 10px;
        }
    </style>
    <script>
        $(function(){
        	var addContent = 1;
        	$(".content-wrap").slice(4).hide();
        	$("#more-btn").click(function(){
        		var contentLen = $(".content-wrap").length;
        		var showContent = 4 * addContent;
        		if(showContent <= contentLen){
        			addContent++;
        			$(".content-wrap").slice(4, showContent).show();
            		// 5번째부터 shoContent번째까지 display:block으로 설정
        		}else{
        			$(".content-wrap").slice(4, contentLen).show();
        			$(this).hide();
        		}
        	});
        	
        	$(".charge").each(function(index){
        		var charge = $(".charge").eq(index).text();
        		charge = charge.replace(/\B(?=(\d{3})+(?!\d))/g,",");
            	$(".charge").eq(index).text(charge);
        	});
			// 천단위 콤마(,)로 구분하는 정규표현식 : /\B(?=(\d{3})+(?!\d))/g
			// \B : 첫번째 문자가 단어가 아닌 경우
			// ?= : 찾는다
			// ?!\d : 전방에 숫자가 있으면
			// \d{3} : 세자리숫자 다음
			// g : 전체 검색
        	var selectedTab = 0;
            var menuTab = $(".menu-tab>li");
            var contentTab = $(".content-tab");
            menuTab.eq(selectedTab).css("background-color","#fff");
            menuTab.eq(selectedTab).css("color","#000");
            contentTab.eq(selectedTab).css("display","block");
            menuTab.click(function(){
                var tabIndex = $(this).index();
                menuTab.each(function(index){
                    menuTab.eq(index).css("background-color","#9c836a");
                    menuTab.eq(index).css("color","#fff");
                    contentTab.hide();
                });              
                $(this).css("background-color","#fff");
                $(this).css("color","#000");
                contentTab.eq(tabIndex).show();
            });
            $("[name=detail]").click(function(){
                if($(this).val() == "상세보기"){
                    $(this).val("닫기");
                }else{
                    $(this).val("상세보기");
                }
                var detail = $(this).parents(".content-wrap").children(".content-detail");
                detail.toggle();
            });
            $(".content-wrap").dblclick(function(){
            	var index = $(".content-wrap").index($(this));
                if($("[name=detail]").eq(index).val() == "상세보기"){
                    $("[name=detail]").eq(index).val("닫기");
                }else{
                    $("[name=detail]").eq(index).val("상세보기");
                }
                var detail = $("[name=detail]").eq(index).parents(".content-wrap").children(".content-detail");
                detail.toggle();
            });
        });
    </script>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>	
    <div class="guestrooms">
        <div class="tabs">
            <ul class="menu-tab">
                <li>객실 정보</li>
                <li>객실 예약</li>
            </ul>
            <div class="content-tab">
                <div class="contents">
                	<p>*객실 상세보기는 객실 더블 클릭 시에도 가능합니다.</p>
                	<c:forEach items="${list }" var="g">
                		<div class="content-wrap">
	                        <div class="content">
	                            <ul style="margin: 0 !important;">
	                                <li>${g.roomNo }</li>
	                                <li>
	                                    <img src="/resources/guestroom/${g.imgName }">
	                                </li>
	                                <li>
	                                    <div class="content-info">
	                                        <p>
	                                            객실명 : ${g.roomName }<br>
	                                            객실 분류 : ${g.sortRoom }<br>
	                                            인원 : ${g.visitors }<br>
	                                            면적 : ${g.roomSize } <br>
	                                        </p>
	                                    </div>
	                                    <input type="button" value="상세보기" name="detail">
	                                </li>
	                                <li>
	                                    <div class="content-info">
	                                        <b><p class="charge">
	                                            &#8361; ${g.roomCharge }
	                                        </p></b>
	                                    </div>
	                                </li>
	                            </ul>
	                        </div>
	                        <div class="content-detail">
	                            <div class="content-img">
	                                <img src="/resources/guestroom/${g.imgName }">
	                            </div>
	                            <div>
	                                <dl>
	                                    <b><dt>객실정보</dt></b>
	                                    <dd>객실명 : ${g.roomName }</dd>
	                                    <dd>객실 타입 : ${g.roomType }</dd>
	                                    <dd>객실 분류 : ${g.sortRoom }</dd>
	                                    <dd>인원 : ${g.visitors }</dd>
	                                    <dd>면적 : ${g.roomSize }</dd>
	                                    <dd>체크 인 : ${g.checkIn }</dd>
	                                    <dd>체크 아웃 : ${g.checkOut }</dd>
	                                </dl>
	                            </div>
	                            <div>
	                                <dl>
	                                    <b><dt>객실 안내</dt></b>
	                                    <dd>${g.roomGuide }</dd>
	                                </dl>
	                            </div>
	                            <div>
	                                <dl>
	                                    <b><dt>구비용품 및 구비시설</dt></b>
	                                    <dd>${g.supply }</dd>
	                                    <dd>${g.facility }</dd>
	                                </dl>
	                            </div>
	                        </div>
	                    </div>
                	</c:forEach>
                	<div>
               			<button type="button" id="more-btn">더 보기</button>
                	</div>
                </div>
            </div>
            <div class="content-tab">
                <div class="reserve-wrap">
                    <div class="reserve">
					<c:choose>
		        		<c:when test="${empty sessionScope.m }">
		        			<div style="padding: 10px 0;">
		        			<h3>로그인이 필요한 서비스입니다.</h3>
		        			<br>
		        				<input type="button" id="login-btn" value="로그인하기" onclick="login();">
		        			</div>
		        		</c:when>
		        		<c:otherwise>
		        		<div class=reserve-content>
							<form action="/reserve.do" method="post">
						        <fieldset>
						        	<div id="select-room">객실 :
						        		<select name="roomNo" required>
							                <option value="" hidden>객실 선택</option>
							                <c:forEach items="${list }" var="g">
		                                   		<option value="${g.roomNo }">${g.roomName }</option>
		                                   	</c:forEach>
						            	</select>
						        	</div>
						        	<div>
										<div class="input-contents">
							            	<table border="1" style="margin: 0 auto;">
							            		<tr>
							            			<th>객실 명</th>
							            			<th id="room-title"></th>
							            			<th>예약 현황</th>
							            		</tr>
							            		<tr>
													<td colspan="3">
														<div id="datepicker"></div>
													</td>
							            		</tr>
						            		</table>						        	
							        	</div>
						        	</div>
						        	<div>
   							            <div class="input-contents">
							            	<div style="float: left;width: 60%;">
							            		<input type="hidden" name="reservedClient" value="${sessionScope.m.memberId }">
							            		<table id="reserve-date">
							            			<tr>
							            				<th style="text-align: right;">체크 인 날짜 선택 : </th>
							            				<td style="text-align: left;"><input type="text" name="checkIn" id="checkIn" readonly></td>
							            			</tr>
							            			<tr>
							            				<th style="text-align: right;">체크 아웃 날짜 선택 : </th>
							            				<td style="text-align: left;"><input type="text" name="checkOut" id="checkOut" readonly></td>
							            			</tr>
							            			<tr>
							            				<th style="text-align: right;">총 예약일 : </th>
							            				<td style="text-align: left;"><input type="text" id="gap" placeholder="총 예약일이 표시됩니다." readonly>일</td>
							            			</tr>
							            		</table>
							            	</div>
							                <div style="float: right;width: 40%;height: 100%;">
							                	<input type="submit" value="예약하기" id="reserve-btn" onclick="return reserve();">
							                </div>
						                </div>
						        	</div>
						        </fieldset>
						    </form>
		        		</div>
		        		</c:otherwise>
		        	</c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>		
    <script>
    	function login(){
    		location.href="/loginFrm.do";
    	}
	    // 목표)
	    // 체크 인 날짜부터 체크 아웃 날짜까지 비활성 시킨다.
	    // 체크 인 날짜 바로 앞 날짜도 비활성 시킨다.
	    // (체크 인 되어있는 바로 전 날짜는 체크 인이 불가능하므로)
	    
	    $.datepicker.setDefaults({
	        dateFormat: 'yy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true, // 년도 다음에 월 표시, ex) 2021 7월
	        yearSuffix: '년' // 년도 뒤에 붙일 텍스트
	    });
	    function dateFormat(date){
	        var year = date.getFullYear();
	        var month = (date.getMonth()+1);
	        month = month>=10 ? month : '0' + month;
	        var day = date.getDate();
	        day = day >= 10 ? day : '0' + day;
	        var str = year+"-"+month+"-"+day;
	        return str;
	    }
	    
		var disabledDate = new Array();
		// getDateRange(checkIn,checkOut);
		
		function getDateRange(checkIn, checkOut) {
			var start = new Date(checkIn);
			var end = new Date(checkOut);
			while(start.getTime() <= end.getTime()){
				disabledDate.push(dateFormat(start));
				start.setDate(start.getDate()+1);
			}
		}
		function disabledDay(date){
		    var calendar = dateFormat(date);
		    for (var i = 0; i < disabledDate.length; i++) {
		        if($.inArray(calendar,disabledDate) != -1) {
		            return [false];
		        }
		    }
		    return [true];
		}
	    function nextDayOk(selectedDate){
	    	var count = 0;
    		var date = new Date(selectedDate);
    		var today = new Date();
    		var gap = Math.ceil((date.getTime()-today.getTime())/(24*3600*1000));
// console.log("오늘 날짜와 차이:"+gap);
    		date.setDate(date.getDate()+1);
    		var checkDate = dateFormat(date);
    		// 배열에 값이 있으면(배열의 길이가 0이 아니면)
 	    	if(disabledDate.length != 0){
	    		for(var i=0;i<30;i++){
	    			// 배열(disabledDate)에 값(checkDate)이 없으면 -1 리턴
	    			if($.inArray(checkDate,disabledDate) == -1){
	    				date = new Date(checkDate);
			    		date.setDate(date.getDate()+1);
			    		checkDate = dateFormat(date);
			    		count++;
// console.log(count+"번째 반복중!");	
	    			}
	    		}
	    		count += gap;
	    	}else{ // 배열에 값이 없으면
	    		count = 30;
	    	}
 	    	count = count<30 ? count : 30;
// console.log(count);
	    	return count;
	    }
	    $(function(){
	        $("#checkIn").datepicker({
	            showOn:"both",
	            buttonImage: "/resources/guestroom/calendar-icon.png",
	            buttonImageOnly: true,
	            // showButtonPanel: true,
	            // currentText: '오늘 날짜',
	            // closeText: '닫기',  // 닫기 버튼 패널
	            showAnim: "slideDown",
	            minDate:0,
	            maxDate:'+29D',
	            beforeShowDay: disabledDay,
	            onSelect:function(selectedDate){
	    	        $("#checkOut").datepicker({
	    	            showOn:"both",
	    	            buttonImage: "/resources/guestroom/calendar-icon.png",
	    	            buttonImageOnly: true,
	    	            showAnim: "slideDown",
	    	            minDate:1,
	    	            maxDate:'+30D',
	    	            beforeShowDay: disabledDay,
	    	            onClose:function(selectedDate){
	    	                var checkIn = $("#checkIn").val();
	    	                var date1 = new Date(checkIn);
	    	                var date2 = new Date(selectedDate);
	    	                var gap = Math.ceil((date2.getTime()-date1.getTime())/(24*3600*1000));
// console.log("두 날짜의 차이는 "+gap+"일 입니다.");
	    	                if(selectedDate != ""){
	    	                    $("#gap").val(gap);
	    	                }
	    	            }
	    	        });
	            },
	            onClose:function(selectedDate){
// console.log("선택된 날짜:"+selectedDate);
	                var date = new Date(selectedDate);
	                date.setDate(date.getDate()+1);
	                $("#checkOut").datepicker("option","minDate",date);
	                $("#checkOut").datepicker("option","maxDate",nextDayOk(selectedDate));
	                $("#checkOut").val("");
	                $("#gap").val("");
	            }
	        });

	        $("[name=roomNo]").change(function(){
	        	$("#select-room").css("margin","0");
	        	disabledDate = [];
	        	var roomName = $("[name=roomNo] option:selected").text();
	        	var roomNo = $(this).val();	        	
// console.log(roomNo);
// console.log(roomName);
	        	$.ajax({
	        		url:"reservedRoom.do",
	        		data:{roomNo:roomNo},
	        		success:function(data){
	        			if(data.length != 0){
// console.log("데이터 있음");
	        				for(var i=0;i<data.length;i++){
	        					var checkIn = data[i].checkIn;
	        					var checkOut = data[i].checkOut;
	        					getDateRange(checkIn,checkOut);
	        				}
	        		    	
	        			}else{
// console.log("데이터 없음");
	        			}
	        			$("#datepicker").datepicker({
        		    		numberOfMonths:2,
	        				minDate:0,
        		    		maxDate:'+30D',
        		    		beforeShowDay: disabledDay
        		    	});
        		    	$("#datepicker").datepicker("refresh");
	        		}
	        	});
	            $(".input-contents").css("display","inline-block");
	            $("#checkIn").val("");
	            $("#checkOut").val("");
	            $("#gap").val("");
	            $("#room-title").text(roomName);
	        });
	    });
	    function reserve(){
	    	if($("#checkIn").val() == "" || $("#checkOut").val() == ""){
	    		alert("날짜를 선택해주세요.");
	    		return false;
	    	}
	        var reserve = confirm("예약을 진행하시겠습니까?");
	        if(reserve){
	            alert("예약 페이지로 이동합니다.");
	        }else{
	            alert("예약을 취소하였습니다.");
	        }
	        return reserve;
	    }
    </script>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
</body>
</html>