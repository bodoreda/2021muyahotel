<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
 <style>
 .msgArea{
            font-family: 'Noto Serif KR', serif;           
        }
       .msgText{
        font-family: 'Noto Serif KR', serif;       
       }
        h1{
            font-family: 'Noto Serif KR', serif;
            font-size: 50px;
        }
        .noteZone{
        height: 250px;}
        
        .msgArea{
         height: 250px;
         text-align: center;
        }
        .reciveMsg{
         height: 500px;
         text-align: center;
         width: 1000px;
         margin: 0 auto;
         margin-top: 50px;
        }
        .sendZone{
         height: 500px;
         text-align: center;
          width: 1000px;
            margin: 0 auto;
        }
        table{
         width: 100%;
         margin-top:20px;
          font-family: 'Noto Serif KR', serif;
        }
        th {
    	background-color: #e0dad4;
    	
 		 }
  		th,td{
  		 padding: 10px;}
  		 textarea{
  		 width:400px; 
	height:150px; 
    resize:none
  		 
  		 }
  		
        .selectReceiver{
            margin-right: 328px;
        }
         .sendBtn{
            margin-top: 10px;
        }
          button {
             border: 2px solid #9C836A;
            background-color: transparent;
	color: #282828;
	opacity: 0.8;
	border-radius: 3px;
	text-decoration: none;
	font-weight: 400;
	line-height: 1.5;
	padding: 10px
        }
        
        button:active {
    box-shadow: inset -2px -2px 3px rgba(255, 255, 255, .6),
                inset 2px 2px 3px rgba(0, 0, 0, .6);
}

  select {
width: 80px;
padding: .8em .5em;
border: 1px solid #999;
font-family: inherit;
background: url('img/arrow.jpg') no-repeat 95% 50%;
border-radius: 0px;
-webkit-appearance: none;
-moz-appearance: none;
appearance: none;
}

select::-ms-expand {
display: none;
}
 </style>
<script>
	$(function(){
		$.ajax({
			url : "/receiverList.do",
			success : function(data){
				for(var i=0;i<data.length;i++){
					var html = "<option value='"+data[i]+"'>"+data[i]+"</option>";
					$("#receiver").append(html);
				}
			}
		});
	});
	function sendDm(sender){
		var receiver = $("#receiver").val();
		var dmContent = $("#dmContent").val();
		$.ajax({
			url : "/sendDm.do",
			type : "post",
			data : {dmContent:dmContent,sender:sender,receiver:receiver},
			success : function(data){
				if(data == '1'){
					alert("쪽지보내기 성공");
					dmCount(receiver);
					location.reload();
				}else{
					alert("쪽지보내기 실패");
				}
			}
		});
	}
	
	function deleteDm(dmNo){
		var receiver = $("#receiver").val();
		var sender = $("#sender").val();
		var dmContent = $("#dmContent").val();
		$.ajax({
			url : "/deleteDm.do",
			type : "post",
			data : {dmContent:dmContent,sender:sender,receiver:receiver,dmNo:dmNo},
			success : function(data){
				if(data == '1'){
					alert("삭제 성공");
				}else{
					alert("삭제 실패");
				}
			}
			
		});
	}
	
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	 <div class="msgArea">
    <div class="noteZone">
        <h2>문의함</h2>
        <p>저희 무야호텔은  언제나 고객의 목소리에 귀기울이고 있습니다.</p>

        <p>고객님의 소중한 충고와 격려, 또는 제안의 말을 반영하여 더 나은 서비스로 보답합시다.</p>
        <jsp:include page="/WEB-INF/views/dm/alarm.jsp"/>
    </div>
    </div>
    <div class="countMsg">
    <div class="msgArea">
        CONTENT
        <div class="msg">
            <div class="selectReceiver">
                <select id="receiver"></select>
            </div>
            <div class="textZone">
                <textarea type="text" id="dmContent"  rows="10" cols="50"></textarea>
            </div>
            <div class="sendBtn">
                <button onclick="sendDm('${sessionScope.m.memberId}')">답변보내기</button>
            </div>
        </div>
    </div>
    <div class="reciveMsg">
        Reception
        <table>
            <tr>
                <th>No.</th><th>문의ID</th><th>내용</th><th>날짜</th><th>읽음여부</th><th>삭제</th>
            </tr>
            <c:forEach items="${list }" var="dm" varStatus="i">
                <c:if test="${dm.receiver eq sessionScope.m.memberId }">
                    <tr>
                        <td>${dm.dmNo }</td>
                        <td>${dm.sender }</td>
                        <td>${dm.dmContent }</td>
                        <td>${dm.dmTime }</td>					
                        <td><a href="updateDm.do?dmNo=${dm.dmNo }">${dm.read }</a></td>
                          <td><button onclick="deleteDm('${dm.dmNo}')">삭제</button></td>
                    </tr>
                </c:if>
            </c:forEach>		
        </table>
    </div>
    <div class="sendZone">
        Dispatch
        <table>
            <tr>
                <th>No.</th><th>답변ID</th><th>내용</th><th>날짜</th><th>읽음여부</th><th>삭제</th>
            </tr>
            <c:forEach items="${list }" var="dm" varStatus="i">
                <c:if test="${dm.sender eq sessionScope.m.memberId }">
                    <tr>
                        <td>${dm.dmNo }</td>
                        <td>${dm.receiver }</td>
                        <td>${dm.dmContent }</td>
                        <td>${dm.dmTime }</td>					
                        <td>${dm.read }</td>
                        <td><button onclick="deleteDm('${dm.dmNo}')">삭제</button></td>
                    </tr>
                </c:if>
            </c:forEach>		
        </table>
    </div>
    </div>
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
</body>
</html>