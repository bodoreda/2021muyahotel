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
  
  #muyahoList{
  	height: 35px !important;
  }
  
  
  	/**/
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
            width: 100%;
    
            height: 50px;
            line-height: 60px;
            text-align: center;
             font-size:16px;
            font-family: 'Noto Sans', sans-serif;
    		font-weight:500;
    		color: #9c836a;
            
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
.wrapper2 {
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
         width : 110px;
         margin-right:10px;
         float:left;
        }
       a{
color:black;
text-decoration: none;
}

#closeEvent{
   background-color: rgba(0,0,0,0.3);
} 
        
        
<!--모달-->
  <!--모달-->
 #modal{
  display:none;
  position:fixed; 
  width:100%; height:100%;
  top:0; left:0; 
  background:rgba(0,0,0,0.3);
}
.modal-con{
  display:none;
  position:fixed;
  top:50%; left:50%;
  transform: translate(-50%,-50%);
  width: 300px;
  height: 200px;
  background:#fff;
}
.title{
  font-size:20px; 
  padding: 20px; 
  background : gold;
}
.con{
  font-size:15px; line-height:1.3;
  padding: 30px;
}
.close{
  display:block;
  position:absolute;
  width:30px; height:30px;
  border-radius:50%; 
  border: 3px solid #000;
  text-align:center; line-height: 30px;
  text-decoration:none;
  color:#000; font-size:20px; font-weight: bold;
  right:10px; top:10px;
}    

#eventEnter{
margin-top:30px;
margin-bottom: 50px;
}    


 .searchZone{
            display: flex;
            align-items: center;
            justify-content: flex-end;
         
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
    	tabs[i].style.border = "1px solid #e6e0dbab";
        tabs[i].style.borderBottom = "1px solid #9c836a";
        tabs[i].style.color = "#666";
        tabContents[i].style.display = "none";
    }
    tabs[idx].style.border = "1px solid #9c836a";
    tabs[idx].style.borderBottom = "1px solid transparent";
    tabs[idx].style.color = "#9c836a";
    tabContents[idx].style.display="block";
}
 window.onload = function(){
    var tabContents = document.getElementsByClassName("tabContent");
    var tabs = document.getElementsByClassName("tab");
    tabs[0].style.border = "1px solid #9c836a";
    tabs[0].style.borderBottom = "1px solid transparent";
    tabContents[0].style.display="block";
    tabs[1].style.border = "1px solid #e6e0dbab";
    tabs[1].style.borderBottom = "1px solid #9c836a";
    tabs[1].style.color = "#666";
}
     
     
     function countPp(evNo,obj) {
          $.ajax({
                url: "/eventCount.do",
                  type: "POST",
                  data: {evNo:evNo},
                  success: function (data) {
                      var c = data;
                      $(obj).next().html("현재"+c+"명이 참여중입니다!").fadeToggle();

                     
                  }
             })
       };  
     
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
                    <li class="tab" onclick="selectTab(0);">EVENT</li>
					<li class="tab" onclick="selectTab(1);">OFFER</li>
                </ul>
                <div class="tabContent">
                	<div class="searchZone">
	                   <div id="search">
	                  <form action="/searchlist.do" method="get">
	                     <select name="searchCondition" id="searchCondition">
	                        <option value="evTitle">제목</option>
	                        <option value="evContent">내용</option>
	                     </select>
	                     <input type="text" name="searchkeyword" id="searchkeyword" placeholder="검색어를 입력해주세요!" required>
	                     <input class="searchBtn" type="submit" value="조회"  required>
	                  </form>
	               </div>
	                </div>
	                
	                
	                
	                <h2>검색 결과가 없습니다.</h2>
	                <a href="/eventList.do"><button id="eventEnter">돌아가기</button></a>
                </div>
                <div class="tabContent">
                	<c:choose>
                		<c:when test="${sessionScope.m.memberId eq 'admin' }">
                			<a href="/proWriteFrm.do"><button id="eventEnter" type="button">프로모션 등록</button></a>
                			<div class="searchZone">
			                	<div id="search">
									<form action="/searchPro.do" method="get">
										<select name="searchCondition" id="searchCondition">
											<option value="proTitle">제목</option>
											<option value="proContent">내용</option>
										</select>
										<input type="text" name="searchkeyword" id="searchkeyword" placeholder="검색어를 입력해주세요!" required>
										<input class="searchBtn" type="submit" value="조회"  required>
									</form>
								</div>
			                </div>
							<div class="wrapper2"></div>
			  				<div class="more">
			  					<button currentCount="0" value="" totalCount="${ttc }" id="more-btn">더보기</button>
			  				</div> 
                		</c:when>
                		<c:otherwise>
                			<div class="searchZone">
			                	<div id="search">
									<form action="/searchPro.do" method="get">
										<select name="searchCondition" id="searchCondition">
											<option value="proTitle">제목</option>
											<option value="proContent">내용</option>
										</select>
										<input type="text" name="searchkeyword" id="searchkeyword" placeholder="검색어를 입력해주세요!" required>
										<input class="searchBtn" type="submit" value="조회"  required>
									</form>
								</div>
			                </div>
							<div class="wrapper2"></div>
							<div class="more">
								<button currentCount="0" value="" totalCount="${ttc }" id="more-btn">더보기</button>
							</div>
                		</c:otherwise>
                	</c:choose>
                </div>
        	</div>
        </div>
    </div>
    
     <!-- 모달 -->
     <div id="modal"></div>
        <div class="modal-con modal1">
          <a href="javascript:;" class="close">X</a>
          <p class="title">이벤트 참여</p>
          <div class="con">
          로그인해줘
         
          </div>
        </div>
        
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>   
     
     
       <script>
      function openModal(modalname){
          document.get
          $("#modal").fadeIn(300);
          $("."+modalname).fadeIn(300);
        }
        $("#modal, .close").on('click',function(){
          $("#modal").fadeOut(300);
          $(".modal-con").fadeOut(300);
        });
        
        
    </script>
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
                     html += "<c:if test="${sessionScope.m.memberId eq 'admin' }">";
                     html += "<button id='proMt' onclick='proDelete("+pt.proNo+")'>프로모션 삭제</button></c:if></div>";
                 
                  	
              
                	
                 $(".wrapper2").append(html);
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