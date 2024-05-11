<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
        .footer{
            height: 300px;
            background: #000;
           /* width: 1800px; */
        }
        .footArea{
            height: 300px;
            overflow: hidden;
        }
        .hotelList{
            height: 65px;
            margin: 0 auto;
            text-align: center;
        }
        .infoArea{
            height: 195px;
        }
        .footer-logo{
            float: left;
            height: 100px;
            width: 20%;
            border: none;
            text-align: center;
            
        }
        .infoPolicy a.point{
            color: #989442;
        }
        .infoPolicy{
            float: left;
            height: 100px;
            width: 55%;
            border: none;
            text-align: center;
        }
    
        .infoPolicy>a{
            display: inline-block;
            font-size: 15px;
            margin-right: 25px;
            margin-top: 25px;
            text-decoration: none;
            color: #fff;
        }
        .info{
            color: #fff;
            opacity: .5;
            display: block;
            font-size: 13px;
            margin-left:  80px;

            
        
        }
        .snsArea{
            float: left;
            height: 100px;
            width: 25%;
            border: none;
            overflow: hidden;
        }
        .snsArea>div{
            float: left;
            width: 100px;
            height: 100%;
            text-align: center;
        }
        .sns>img{
            cursor: pointer;
        }
        
        .listArea{
            list-style: none;
            margin: 0;
            padding: 0;
            margin-top: 30px;
            
        }
        .listArea> li{
            display: inline-block;
            margin-left: 50px;
            height: 38px;
            overflow: hidden;
            
        }
        .listArea>li>a{
            text-decoration: none;
            color: #fff;
            opacity: 0.4;
            
            /* text-indent: -9999px; */
        }
        
        .sns>img{
            width: 60px;
            height: 60px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="footer">
        <div class="footArea">
            <div class="hotelList">
                <ul class="listArea">
                    <li><a href="#">김지일</a></li>
                    <li><a href="#">김준영</a></li>
                    <li><a href="#">박지은</a></li>
                    <li><a href="#">백보현</a></li>
                    <li><a href="#">성예지</a></li>
                    <li><a href="#">홍수연</a></li>
                </ul>
            </div>
            <div class="footer-logo">
                <img src ="/img/logo.png" width="100%" height="100%">
            </div>
            <div class="infoPolicy">
                <a href="#">고객센터</a>
                <a href="#">이용약관</a>
                <a href="#">영상정보처리기기운영·관리방침</a>
                <a href="#">멤버십 이용약관</a>
                <a href="#" class="point">개인정보처리방침</a>
            </div>
            <div class="snsArea">
                <div class="sns"><img src="img/twt.png"></div>
                <div class="sns"><img src="img/instag.png"></div>
                <div class="sns"><img src="img/yout.png"></div>
            </div>
            <div class="infoArea">
                <p class="info">
                    <span>대표이사 이윤수 서울시 영등포구 선유로2로 57</span>
                    <span>05-1544-9970</span>
                </p>
                <p class="info">사업자 등록번호:581-87-00622</p>
                <p class="info">Copyright © 1998-2021 KH Information Educational Institute All Right Reserved</p>
            </div>
        </div>
    </div>


</body>
</html>