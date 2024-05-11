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
    tabs[1].style.border = "1px solid #9c836a";
    tabs[1].style.borderBottom = "1px solid transparent";
    tabContents[1].style.display="block";
    tabs[0].style.border = "1px solid #e6e0dbab";
    tabs[0].style.borderBottom = "1px solid #9c836a";
    tabs[0].style.color = "#666";
    
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
                    <li class="tab" onclick="selectTab(0);">EVENT</li>
					<li class="tab" onclick="selectTab(1);">OFFER</li>
                </ul>
                <div class="tabContent">
                	
                	<c:choose>
                		<c:when test="${sessionScope.m.memberId eq 'admin' }">
              				<a href="/eventWriteFrm.do"><button id="eventEnter" type="button">이벤트등록</button></a>

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
			                <div class="wrapper">
		                  		<c:forEach items="${eList }" var="e">
		                    		<div class="one">
		                      			<div class="event-img">
		                           			<img src="/resources/upload/event/${e.filePath }" width="552px" height="312px">
		                        		</div>
		                        		<div class="event-text">
		                       				<p class="bold">${e.evTitle }</p>
		                  					<p>${e.evContent }</p>
		                  					<p class="gray">${e.evDate }</p>
		    								<p>${e.evActive }</p> 
		               						<c:if test="${e.evActive eq 0}">
		               							<c:choose>
													<c:when test='${empty sessionScope.m}'>
		                       								<div class="login">
		                             							<a href="javascript:openModal('modal1');" class="button modal-open"><button type="button">참여하기</button></a>
		                          							</div>
		                  								</c:when>
		                     							<c:when test="${sessionScope.m.memberId eq 'admin' }">
		                         							<div class="delete">
							                             <a href="/eventDelete.do?evNo=${e.evNo}"><button type="button">이벤트삭제</button></a>
							                             <a href="/eventUpdate.do?evNo=${e.evNo}&evActive=${e.evActive}"><button type="button">비/활성화</button></a>
							                        </div>
		                     							</c:when>
		                     							<c:when test='${not empty sessionScope.m}'>
								                        <div class="enter">
								                        	<a href="/eventEnter.do?evNo=${e.evNo}&memberId=${sessionScope.m.memberId }"><button type="button">참여하기</button></a>
								                        </div>
		                     							</c:when>
		                       					</c:choose>
		                       				</c:if>
											<c:if test="${e.evActive eq 1}">
					                          <c:choose>
					                                <c:when test='${empty sessionScope.m}'>
					                          			<div class="login">
					                                		<button type="button">참여하기</a></button></a>
					                             		</div>
					                     			</c:when>
					                        		<c:when test="${sessionScope.m.memberId eq 'admin' }">
					                             		<div class="delete">
					                             			<a href="/eventDelete.do?evNo=${e.evNo}"><button type="button">이벤트삭제</button></a>
					                             			<a href="/eventUpdate.do?evNo=${e.evNo}&evActive=${e.evActive}"><button type="button">비/활성화</button></a>
					                          			</div>
					                        		</c:when>
					                        		<c:when test='${not empty sessionScope.m}'>
								                        <div class="enter">
								                             <button id="closeEvent" type="button">종료</button>
								                             </div>
								                    </c:when>
					                          </c:choose>
		                       				</c:if> 
		                  
							                  <!--  <button type="button"><a href="/eventCount.do?evNo=${e.evNo}">참여 횟수</a></button>-->
							              
							                  <button id="cBtn"  onclick="countPp('${e.evNo}',this)">카운트</button>    <span class="count"></span>
		                  
		                  				</div>
		                  
		                    		</div>
		                  		</c:forEach>
		                  </div>
                		</c:when>
                		<c:otherwise>
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
			                <div class="wrapper">
		                  		<c:forEach items="${eList }" var="e">
		                    		<div class="one">
		                      			<div class="event-img">
		                           			<img src="/resources/upload/event/${e.filePath }" width="552px" height="312px">
		                        		</div>
		                        		<div class="event-text">
		                       				<p class="bold">${e.evTitle }</p>
		                  					<p>${e.evContent }</p>
		                  					<p class="gray">${e.evDate }</p>
		               						<c:if test="${e.evActive eq 0}">
		               							<c:choose>
													<c:when test='${empty sessionScope.m}'>
		                       								<div class="login">
		                             							<a href="javascript:openModal('modal1');" class="button modal-open"><button type="button">참여하기</button></a>
		                          							</div>
		                  								</c:when>
		                     							<c:when test='${not empty sessionScope.m}'>
								                        <div class="enter">
								                        	<a href="/eventEnter.do?evNo=${e.evNo}&memberId=${sessionScope.m.memberId }"><button type="button">참여하기</button></a>
								                        </div>
		                     							</c:when>
		                       					</c:choose>
		                       				</c:if>
											<c:if test="${e.evActive eq 1}">
					                          <c:choose>
					                                <c:when test='${empty sessionScope.m}'>
					                          			<div class="login">
					                                		<a href="javascript:openModal('modal1');" class="button modal-open"><button type="button">참여하기</button></a>
					                             		</div>
					                     			</c:when>
					                        		<c:when test='${not empty sessionScope.m}'>
								                        <div class="enter">
								                             <button id="closeEvent" type="button">종료</button>
								                        </div>
								                    </c:when>
					                          </c:choose>
		                       				</c:if> 
		                  
							                  <!--  <button type="button"><a href="/eventCount.do?evNo=${e.evNo}">참여 횟수</a></button>-->
							              
							                  <button id="cBtn"  onclick="countPp('${e.evNo}',this)">카운트</button>    <span class="count"></span>
		                  
		                  				</div>
		                  
		                    		</div>
		                  		</c:forEach>
		                  </div>
                		</c:otherwise>
                	</c:choose>
                </div>
                <div class="tabContent">
                	<c:if test="${sessionScope.m.memberId eq 'admin' }">
              			<a href="/proWriteFrm.do"><button id="eventEnter" type="button">프로모션 등록</button></a>
            		</c:if>
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
	                <div class="wrapper">
	                         <c:forEach items="${list }" var="pt">
	               			<div class="one">
	                    <div class="event-img">
	                      <img src="/resources/upload/promotion/${pt.proPath }" width="552px" height="312px">
	                     <div class="event-text">
	                    <p class="bold">${pt.proTitle}</p>
	                  <p class="proText">${pt.proContent}</p>
	                  <div class='border'>
	                  </div>
	                 <span class="weak">숙박기간</span><span>${pt.proEnter}</span><br>
	                   <span class="weak">예약기간</span><span>${pt.proDate}</span><br>
	                   </div>
	                   </div>
	                   </div>
	                   </c:forEach>
	                </div>
			</div>
                
                
                
                
                
                
                
                
                
                
               
        </div>
    </div>
  </div>
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>   

</body>
</html>