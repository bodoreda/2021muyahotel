<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=axdor4twe0&submodules=geocoder"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
    <style>
        .viewWrap{
            font-family: 'Noto Serif KR', serif;
        }
        h1{
            font-family: 'Noto Serif KR', serif;
            font-size: 50px;
        }
        .metrolist{
            font-size: 20px;
        }
        .viewBorder::after{
            content: "";
            border: 1px solid black;
            margin: 10px;
        }
        .viewWord{
            height: 200px;
            margin-left:50px;
        }
        .viewMap{
            margin-top: 10px;
        }
        .metroWrap{
            margin-top: 100px;
             margin-bottom: 100px;
        }
        .toggleList{
            margin: 0;
            padding: 0;
            list-style: none;
        }
        .metrolist{
            font-weight: 22px;
        }
        .toggleOn{
            border-top : 1px solid #000;
            padding: 21px 20px 22px;
        }
        .toggleOff{
            border-top : 1px solid #ccc;
            position: relative;
            padding: 21px 20px 22px;
        }
        .btnToggle::before{
            content: "\e943";
            font-family: 'xeicon';
            display: block;
            background-position: -28px 5px;
            font-weight: bolder;
            font-size: 18px;
        }
        .btnToggle{
            background-color:transparent;
            border: none;
            cursor: pointer;
            position: absolute;
            right: 18px;
            
        }
        .locationInfo{
            display: none;
            padding: 2em 0;
        }
        .tit{
            font-style: normal;
            font-weight: bolder;
        }
      
        .iw_inner>h3{
        text-align: center;
        }
      </style>
     <script>
        $(function(){
            $(".btnToggle").click(function(){
                var idx = $(".btnToggle").index(this);
                if($(this).parent().attr("class") == "toggleOff"){
                    $(this).parent().removeClass("toggleOff");
                    $(this).parent().addClass("toggleOn");
                }else{
                    $(this).parent().removeClass("toggleOn");
                    $(this).parent().addClass("toggleOff");
                }
                $(".locationInfo").eq(idx).slideToggle(1000); 
            
            });
        });
    </script>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>	
  <div class="viewWrap">
        <div class="viewMapWrap">
            <div class="viewWord">
                <h1>오시는 길</h1>
                <span class="viewBorder">서울특별시 영등포구 양평동4가 2</span>
                    <span>02-1544-9970</span>
            </div>
            <div class="viewMap">
                <div id="map" style="width:100%; height:560px;"></div>
            </div>
            <div class="metroWrap">
                <ul class="toggleList">
                    <li class="toggleOff">
                        <strong class="metrolist">지하철</strong>
                        <button type="button" class="btnToggle"></button>
                        <div class="locationInfo">
                            <em class="tit">2호선 당산역</em>
                                    <p>2호선 당산역 1번 출구 →  kfc 좌측방향으로 직진→ 소방서 앞 횡단보도 도보 5분거리</p>
                                
                            <em class="tit">9호선 당산역</em> <!--em/strong 강조하는 문구들-->
                                    <p>9호선 당산역 번 출구 → 스타벅스 방향으로 직진→ 로이드 밤 미용실에서 좌측 방면 </p>
                        </div>
                    </li>
                
                    <li class="toggleOff">
                        <strong class="metrolist">버스</strong>
                        <button type="button" class="btnToggle"></button>
                        <!--버튼 클릭시 li에 toggleOn클래스 추가되면서 toogleCount 펼쳐짐-->
                        <div class="locationInfo">
                            <em class="tit">선유고등학교/(구)강서 세무서</em>
                            <p>
                                <span>7615</span>
                                <span>1000/1200/1300/1301/1302/1400/1500/1601/M6628/M6724</span>
                            </p>
                        
                            <em class="tit">당산역</em>
                            <p>
                                <span>602/760/5620/5714/6514/6623/6631</span>
                            </p>
                        </div>
                    </li>
                    </ul>
            </div>
        </div>
    </div>
    	<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
    <script>
        //네이버지도 사용
        window.onload=function(){
            //아무 설정없이 지도객체를 만드는 경우 서울시청이 지도의 중심
            var map = new naver.maps.Map('map',{
                center : new naver.maps.LatLng(37.533807,126.896772),
                zoom : 17,
                zoomControl:true,
                zoomControlOptions : {
                    position : naver.maps.Position.TOP_RIGHT,
                    style :  naver.maps.ZoomControlStyle.SMALL
                }
            });
            var marker = new naver.maps.Marker({
                position : new naver.maps.LatLng(37.533807,126.896772),
                map : map
            });
            var contentString = [
                '<div class="iw_inner">',
                '	<h3>MUYAHO</h3>',
                '	<p>서울특별시 영등포구 선유동2로 57 이레빌딩</p>',
                '</div>'
            ].join("");
            var infoWindow = new naver.maps.InfoWindow();
            naver.maps.Event.addListener(marker,"click",function(e){
                if(infoWindow.getMap()){
                    infoWindow.close();	
                }else{
                    infoWindow = new naver.maps.InfoWindow({
                        content : contentString
                    });
                    infoWindow.open(map,marker);
                    }
                });

            }
</script>
</body>
</html>