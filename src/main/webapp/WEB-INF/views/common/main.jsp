<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <!--CSS-->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <!--icon-->
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!--JS-->
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
   <!--글꼴-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
<!-- 기본글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<!-- 리워드 -->
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
<style>
	 body{
            margin: 0;
            padding: 0;
        }
     /*div{
     font-family: 'Noto Sans KR', sans-serif;
     
     }*/

 /**/
        .slideArea{
            height: 600px;
        }
        .slides{
            /* width: 80%; */
            height: 600px;
            margin: 0 auto;
        }
        /*슬라이드*/
        .visual{
            position: relative;
        }
        .visual button {
            position: absolute;
            z-index: 10;
            top:50%;
            transform: translateY(-50%);
            width: 71px;
            height: 71px;
            border-radius: 100%;
            background:transparent;
            /*rgba(0,0,0,.5);*/
            border: none;
        }
        .visual button::before {
            font-family: 'xeicon';
            color: #fff;
            font-size: 45px;
        }
        .visual button.slick-prev{
            margin-left: 0;
            font-size: 0;
            color: transparent;
        }
        .visual button.slick-prev::before{
            content: "\e93c";
        }
        .visual button.slick-next{
            right: 0;
            font-size: 0;
            color: transparent;
        }
        .visual button.slick-next::before{
            content: "\e93f";
        }

        /**/
        .adArea{
            height: 200px;
        }
        .ad{
            text-align: center;
            margin-top: 200px;
            color: #999999;
        }
        .promotionArea{
            height: 500px;
            display: flex;
            flex-wrap: nowrap;
            justify-content: space-around;
        }
        /* .promotion{
            display: flex;
            flex-wrap: nowrap;
            justify-content: space-around;
        } */
        .item-box{
            width: 400px;
            height: 430px;
        }
        .item-img{
            width: 400px;
            height: 250px;
        }
        .hr{
            margin-bottom: 20px;
            border-top: 2px solid #555555;
            
        }
        .item-title {
        width: 400px;
        height: 150px;
        }
        .item-title > p{
            color: #998465;
            font-family: 'Open Sans', sans-serif;
            font-size: 25px;
            margin-top :20px;
          
        }
        .item-title > span{
            
            font-family: 'Open Sans', sans-serif;
            
        }


        .item-img>img{
            width: 400px;
            height: 255px;
        }
        .slide>img{
            width: 100%;
            height: 600px;
            
        }
        button{
          
		all: unset;
		text-align: center;
		color: white;
   		background-color: #998465;
    	padding: 5px;
    	width: 222px;
    	height: 52px;
        
        }

        .coupon::before{
            content: "\ea03";
            font-family: 'xeicon';
        }
        .car::before{
            content: "\eb48";
            font-family: 'xeicon';
        }
        .restaurant::before{
            content: "\eb62";
            font-family: 'xeicon';
        }
        .pool::before{
            content: "\eb60";
            font-family: 'xeicon';
        }

        .offer{
            margin-top: 100px;
            color: #998465;
            font-family: 'Open Sans', sans-serif;
            font-size: 25px;
        }
        .offer h2{
       		margin-left :20px;
        	padding:0 0 65px;
        }
        /* .offer h2::after{
            content: "\e93e";
            font-family: 'xeicon';
        } */


        /*리워즈*/
        .reward{
        	margin-top:200px;
            background-color: #f6f6f6;
            text-align: center;
            height: 250px;
            
        }
        .rt{
            font-size: 50px;
            font-family: 'Noto Serif KR', serif;    
            color: #998465;
        }   

        .rewards>li{
            list-style: none;
            display: inline-block;
            font-size: 20px;
            margin-top: 20px;
            font-family: 'Noto Serif KR', serif;    
            
        }
        .rewards>li::after{
            content: "";
            border-right: 1px solid #888383;
            padding-right: 5px;
        }
        .rewardword{
            margin-top: 10px;
            color: #7c7878;
        }
        /**/

        /*이벤트*/
        .eventArea{
            display: flex;
            flex-wrap: nowrap;
            justify-content: center;
        }
        .event{
            overflow: hidden;
            width: 1202px;
            height: 550px; 
            
        }
        .event>div{
            float: left;
        
        }
        
        .items-up{
            width: 780px;
            height: 300px;
            margin-bottom: 20px;
        }
        .items-down{
            overflow: hidden;
        }
        .item{
            float: left;
            width: 380px;
            height: 220px;
            margin-right: 5px;
        }
        .items-rup{
            width: 380px;
            height: 260px;
            margin-bottom: 20px;
        }
        .eventView a{
        color:#666666;
        font-size: 15px;}
        
        #btnOffer{
        	color:white;
        	text-decoration: none;
        
        }
        /**/
 </style>
</head>
<body>
   <div class="mainwrap">
        <div class="slideArea">
            <div class="slides">
            <section class="visual">
                <div class="slide">
                    <img src="img/호텔/방.jpg" width="1338px">
                </div>
                <div class="slide">
                    <img src="img/호텔/식당.jpg" width="1338px">
                </div>
                <div class="slide">
                    <img src="img/호텔/풀빌라.jpg" width="1338px">
                </div>
                <div class="slide">
                    <img src="img/호텔/입구.jpg" width="1338px">
                </div>
            </section>
        </div>

        </div>

            <!--  <div class="reward">
                <div class="rewardtitle">
                    <div class="rt">MUYAHO REWARDS</div>
                </div>
                <div class="rewards">
                    <li class="coupon">객실 할인</li>
                    <li class="car">주차할인</li>
                    <li class="restaurant">레스토랑 이용권</li>
                    <li class="pool">스파 이용권</li>

                </div>
                <div class="rewardword">
                    무야호 리워즈는 모든 지점에서 사용가능하고
                    포인트 혜택 및 할인을 제공하는 무야호만의 특별 통합 멤버쉽입니다.
                    지금 가입하시고 많은 혜택을 누리세요.
                    자세한 안내는 데스크에서 확인하여주십시오.
                </div>
            </div>-->
        
            <div class="offer"><h2>Muyaho Offers</h2></div>
        <div class="promotionArea">
             <!--1-->
            <div class="promotion">
                <div class="item-box">
                    <div class="item-img">
                        <img src="/img/프로모션_애견.jpg">
                    </div>
                    <div class="item-title">
                        <p>With Family</p>
                      
                    <div class="hr"></div>
                        <span>무야호텔에서는 반려동물도 같이
                           함께 할 수있어요
                        </span>
                    </div>
                    <button><a id="btnOffer" href="/proList.do">GO TO OFFER</a></button>
                </div>
            </div>
            <!--2-->
            <div class="promotion">
                <div class="item-box">
                    <div class="item-img">
                        <img src="/img/프로모션_청소.jpg" width="400px" height="225px">
                    </div>
                    <div class="item-title">
                        <p>ROOM-ONLY Service</p>
                        <div class="hr"></div>
                        <span>강력한 위생관리와 비대면 서비스 제공합니다</span>
                    </div>
                    <button><a id="btnOffer" href="/proList.do">GO TO OFFER</a></button>
                </div>
            </div>
            <!--3
            <div class="promotion">
                <div class="item-box">
                    <div class="item-img">
                        <img src="/img/프로모션_조식.jpg">
                    </div>
                    <div class="item-title">
                        <p>Premium Breakfast</p>
                        <span>얼리버드 고객을 위한 최고급 조식 서비스</span>
                    </div>
                    <p><button>자세히 보기</button></p>
                </div>
            </div>
			-->
             <div class="promotion">
                <div class="item-box">
                    <div class="item-img">
                        <img src="/img/프로모션_스파.jpg">
                    </div>
                    <div class="item-title">
                        <p>Pleasure & Relaxion</p>
                        <div class="hr"></div>
                        <span>지친 몸과 마음에 휴식을 가져보세요</span>
                    </div>
                    <button><a id="btnOffer" href="/proList.do">GO TO OFFER</a></button>
                </div>
            </div>
        </div>

		
		 <div class="reward">
                <div class="rewardtitle">
                    <div class="rt">MUYAHO REWARDS</div>
                </div>
                <div class="rewards">
                    <li class="coupon">객실 할인</li>
                    <li class="car">주차할인</li>
                    <li class="restaurant">레스토랑 이용권</li>
                    <li class="pool">스파 이용권</li>

                </div>
                <div class="rewardword">
                    무야호 리워즈는 모든 지점에서 사용가능하고
                    포인트 혜택 및 할인을 제공하는 무야호만의 특별 통합 멤버쉽입니다.
                    지금 가입하시고 많은 혜택을 누리세요.
                    자세한 안내는 데스크에서 확인하여주십시오.
                </div>
            </div>



        <div class="offer"><h2>Event <span class="eventView"><a href="/eventList.do">>자세히보기</a></span></h2></div>
        <div class="eventArea">
            <div class="event">
                <div class="event-left">
                    <div class="items-up">
                        <img src="img/이벤트/와인시음.jpg" width="734px" height="300px">
                    </div>
                    <div class="items-down">
                        <div class="item">
                            <img src="img/이벤트/좋아요.jpg" width="350px" height="260px">
                        </div>
                        <div class="item">
                            <img src="img/이벤트/프로포즈.jpg" width="350px" height="260px">
                        </div>
                    </div>
                </div>
                <div class="event-right">
                    <div class="items-rup">
                        <img src="img/이벤트/워라벨.png" width="380px" height="260px">
                    </div>
                    <div class="items-rdown">
                        <img src="img/이벤트/호텔빙스.jpg" width="380px" height="260px">
                    </div>
                </div>
            </div>
        </div>
        <div class="adArea">
            <div class="ad">
                <p>저희 무야호텔은 한국에서 가장 큰 호텔그룹으로 아시아를 넘어 세계로 뻗어가는 글로벌 호텔로서 전세계 어디에서나 한결같이 품격 있는 서비스와 시설로 고객에게 깊은 감동을 주는 브랜드를 지향하고 있습니다. 고품격 라이프스타일을 추구하며 품격의 가치를 아는 고객 분들을 위해 그에 걸맞는 서비스를 제공하는 호텔 전문 기업입니다. 그외 호텔 패키지, 특별 혜택 이벤트 및 프로모션을 공식사이트에서 확인해보세요.</p>
            </div>
        </div>
    </div>

    <!--푸터-->
   
    <!--슬라이드 스크립트 자리-->
    <script type="text/javascript">
        $('.visual').slick({
        autoplay: true,
        autoplaySpeed: 2000
        });
    </script>
</body>
</html>