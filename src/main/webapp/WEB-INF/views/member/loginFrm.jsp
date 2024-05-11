<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
<style>
*, ::after, ::before {
    box-sizing:  content-box  !important;
}

#center{
height:  128.400px !important;
}
#muyaSub{
height: 96.400px  !important;
margin-top:16px  !important;
}
#mookBtn{
	box-sizing: content-box  !important;
}
#login{
	width: 355.297px !important;
}
#password{
	width: 355.297px !important;
}

#moo{
width :174px  !important;
height: 86px !important;

}

/**/

/* BASIC */
*, ::after, ::before {
    box-sizing:  content-box  !important;
}

#center{
height:  128.400px !important;
}
#muyaSub{
height: 96.400px  !important;
margin-top:16px  !important;
}
#mookBtn{
   box-sizing: content-box  !important;
}

html {
  background-color: #fff;
  
}

body {
  font-family: "Poppins", sans-serif;
  height:600px;
  
}

a {
  color: #92badd;
  /*display:inline-block;*/
  text-decoration: none;
  font-weight: 400;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}



/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;

}

#formContent {
  /*-webkit-border-radius: 10px 10px 10px 10px; 
   border-radius: 10px 10px 10px 10px; */
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 500px;
  position: relative;
  padding: 0px;
   -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3); 
   box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3); 
  text-align: center;
  border: 1px solid #9c836a;
  font-family: 'Noto Sans KR', sans-serif;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
  font-family: 'Noto Sans KR', sans-serif;
}



/* TABS */

h2.inactive {
  color: #cccccc;
  font-family: 'Noto Sans KR', sans-serif;
}


h2.active {
  color: #0d0d0d;
  border-bottom: 2px solid #5fbae9;
  font-family: 'Noto Sans KR', sans-serif;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
   background-color: #9c836a; 
  /* background-color: rgb(12, 62, 114); */
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
   text-decoration: none; 
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  font-family: 'Noto Sans KR', sans-serif;
  cursor:pointer;
  
/*  -webkit-box-shadow: 0 10px 30px 0 rgba(168,123,93,66);
  box-shadow: 0 10px 30px 0 rgba(168,123,93,66);  */
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: rgb(12, 62, 114);
  font-family: 'Noto Sans KR', sans-serif;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}
input[type=password]{
	 background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

 input[type=text]:focus {
  background-color: #fff; 
  
  border-bottom: 2px solid rgb(12, 62, 114);
}
input[type=password]:focus {
  background-color: #fff;
  border-bottom: 2px solid rgb(12, 62, 114);
}

input[type=text]:placeholder {
  color: #92badd;
}
input[type=password]:placeholder {
  color: #92badd;
}


/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #9c836a;
  /* background-color:#fff; */
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #9c836a;
}

.underlineHover:hover:after{
  width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
	margin-top:30px;
  width:50px;
  height:50px;
}
#wrap{
	background-color:#fff;
}
</style>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>	
<div class="wrapper fadeInDown" id="wrap">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="/img/hotel.png" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form action="/login.do" method="post">
      <input type="text" id="login" class="fadeIn second" name="memberId" placeholder="id" style="margin-top: 30px;">
      <input type="password" id="password" class="fadeIn third" name="memberPw" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In" style="margin-top: 40px;">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
     <a class="underlineHover" href="/idSearchFrm.do" style="color:rgb(12, 62, 114);">Forget Id ?</a><br>
      <a class="underlineHover" href="/pwSearchFrm.do" style="color:rgb(12, 62, 114);">Forget Password ?</a>
    </div>

  </div>
</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
</body>
</html>