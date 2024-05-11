<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
 <!-- 글꼴 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
  <style>
       h2{
        color : #9C836A;
       }
        .eventWrap{
            width: 100%;
           
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .eventCenter{
            width: 80%;
            
        }

        .tabMenu{
            width: 100%;
            padding: 10px;
        }
        .tabs{
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            list-style: none;
            width: 100%;
        }
        .tab{
            border: 1px solid gray;
            width: 100%;
    
            height: 50px;
            line-height: 50px;
            text-align: center;
            
        }
        .tab:hover{
            cursor: pointer;
        }
        .tabContent{
            width: 100%;
            background-color: white;
            display: none;
            
        }

.wrapper {
    margin-top: 50px;
    justify-content: center;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
   grid-template-columns: 550px 550px ;

    grid-auto-rows: 600px;

}

.event-text p{
 font-family: 'Noto Sans KR', sans-serif;
}

.bold{
font-weight: bold;
font-size:22px;
}        
.gray{
color:gray;

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
         padding: 10px;
         width : 120px;
         margin-right:10px;
         float:left;
        }
       a{
color:black;
text-decoration: none;
}




 .searchZone{
            display: flex;
            align-items: center;
            justify-content: flex-end;
            min-width: 500px;
         
        }
         select{
            width:50px;
            height: 50px;
            border:none;
            
        }
        input{
           margin-top:20px;
            width: 300px;
            height: 50px;
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 3px solid black;
        }
        
        input:focus { outline: none; }
        
        
        .searchBtn{
            height: 55px;
            width: 100px;

        }
        
        #proMt{
margin-top:20px;
}
.border{
  border-bottom: 2px solid #9c836a;
  margin-bottom: 10px;
}
.proText{
height: 46px;
}

  .weak{
        margin-right: 15px;
        font-weight: bold;
        	color:gray;
      
        }
        span{
        	color:gray;
        	
        }

#eventEnter{
margin-bottom: 50px;
}  

#more-btn{
width: 500px;
text-align: center;
cursor: pointer;
}
.more{
display: flex;
justify-content: center;
}
.more:hover>#more-btn{
background-color:rgb(219, 216, 216);
}



</style>

<script>
function selectTab(idx){
    var tabContents = document.getElementsByClassName("tabContent");
    var tabs = document.getElementsByClassName("tab");
    for(var i=0;i<tabContents.length;i++){
        tabs[i].style.border = "1px solid gray";
        tabs[i].style.borderBottom = "1px solid #9C836A";
        tabs[i].style.backgroundColor = "transparent"; //투명
        tabContents[i].style.display = "none";
    }
    tabs[idx].style.border ="1px solid  #9C836A";
    tabs[idx].style.borderBottom ="none";
    tabs[idx].style.backgroundColor = "white";
    tabContents[idx].style.display = "block";
}
 window.onload = function(){
    var tabContents = document.getElementsByClassName("tabContent");
    var tabs = document.getElementsByClassName("tab");
    tabs[1].style.border = "1px solid  #9C836A";
    tabs[1].style.borderBottom = "none";
    tabs[1].style.backgroundColor = "white";
    tabContents[1].style.display = "block";
}
     
    
</script>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>   
     <div class="eventWrap">
        <div class="eventCenter">
            <h2>PROMOTION</h2>
            <br>
        
            <p>최고급 호텔 서비스와 즐거운 이벤트,</p>
            <p>오직 무야호텔만의 알찬 패키지를 한 곳에서 만나 보세요. </p>

                  <div class="tabMenu">
                <ul class="tabs">
                    <li class="tab" onclick="selectTab(0);"><a href="/eventList.do">EVENT</a></li>
                       <c:choose>
					<c:when test="${sessionScope.m.memberId eq 'admin' }">
							  <li class="tab" onclick="selectTab(1);"><a href="/adminPro.do">OFFER</a></li>
					</c:when>
					<c:otherwise>
						<li class="tab" onclick="selectTab(1);"><a href="/proList.do">OFFER</a></li>
					</c:otherwise>
				</c:choose>
                
                </ul>
                
                
               <div class="searchZone">
                
                	<div id="search">
						<form action="/searchPro.do" method="get">
							<select name="searchCondition" id="searchCondition">
								<option value="proTitle">제목</option>
								<option value="proContent">내용</option>
							</select>
							<input type="text" name="searchkeyword" id="searchkeyword"  required>
							<input class="searchBtn" type="submit" value="조회"  required>
						</form>
					</div>
                </div>
                
                

                    <div class="wrapper">
               			
                
                
                  </div>
  <div class="more">
  				<button 
                 currentCount="0"
                         value="" 
                         totalCount="${ttc }" 
                         id="more-btn">더보기</a></button></div> 
	
                </div>
	
                </div>
                <div class="tabContent">
           
                  </div>
        </div>
    </div>
    
      <%@ include file="/WEB-INF/views/common/footer.jsp" %>   
 <script >
 $(function(){
		
     more(1);
     $("#more-btn").click(function(){
        more($(this).val());
     });
  });
 

 
     function more(start){   
        $.ajax({
           url : "/proMore.do",
           data : {start:start},
           type : "post",
           success : function(data){
              for(var i=0;i<data.length;i++){
                 var pt = data[i];
         
                 
                 var html="";
                 	console.log(pt);
               
                 	
                 	
                 	  html += " <div class='one'>"
                     html += " <div class='event-img'>";
                     html += "<img src='/resources/upload/promotion/"+pt.proPath+"'width='552px' height='312px'></div>";
                     html += " <div class='event-text'>"
                     html += "<p class='bold'>"+pt.proTitle+"</p>";
                     html += "<p class='proText'>"+pt.proContent+"</p><div class='border'></div>";
                     html += "<span class='weak'>숙박기간</span><span>"+pt.proEnter+"</span><br>";
                     html += "<span class='weak'>예약기간</span><span>"+pt.proDate+"</span><br>";
                     html += "<button id='proMt' onclick='proDelete("+pt.proNo+")'>프로모션 삭제</button></div>"
                  
                 
                  	
              
                	
                 $(".wrapper").append(html);
              }
              //이미 추가 끝난 후 더보기 버튼의 value, 값 조정
              $("#more-btn").val(Number(start)+4);
              var curr = Number($("#more-btn").attr("currentCount"));
              $("#more-btn").attr("currentCount",curr+data.length);
              var totalCount = $("#more-btn").attr("totalCount");
              var currCount = $("#more-btn").attr("currentCount");
              if(currCount == totalCount){
           	   $("#more-btn").attr("disabled",true);
           	   $("#more-btn").css("display","none");
              }
           }
        });
     }
     
     
     function proDelete(proNo){
 		
 		$.ajax({
 			url : "/proDelete.do",
 			type : "post",
 			data : {proNo:proNo},
 			success : function(data){
 				
 					alert("삭제 완료");
 				
 			}
 		});
 	}


    </script>
</body>
</html>