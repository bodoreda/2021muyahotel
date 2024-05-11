<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

	#muyaSub{
		margin-top:16px !important;
		margin-bottom:16px !important;
		padding-left:40px  !important;
	}



* {
    margin: 0;
    padding: 0;
}
.container{
    width: 100%;
    overflow: hidden;
    margin-top: 3%;
    margin-bottom:10%;
}
.center{
    margin:0 15% 0 25%;
    width:60%;
    overflow:hidden;
}
.center>h2{
    padding-bottom: 13px;
    font-size: 18px;
    color: #9c836a;
    font-weight: bold;
    width:85%;
    border-bottom:2px solid #b2b2b2;
}
.sTable{
	width:100%;
	text-align:left;
}
.sTable th{
	width:20%;
	height:70px;
	
}
.sTable th p{
	margin: 10% 0 10% 0;
	width:70%;
	height:50px;
	color:rgba(66, 66, 66, 0.774);
	font-family: 'Noto Sans', sans-serif;
	line-height: 50px;
	font-size: 18px;
	text-align:left;

	padding-left:7%;
	padding-top:2%;
}
.sTable td{
	width:80%;
	height:70px;
}
.sTable td div{
	border-bottom: 3px solid #cab7a1;
	width:80%;
}
.siArea{
	margin-top:5%;
	width:100%;
	font-size: 14px;
	font-family: 'Noto Sans', sans-serif;
	border:none;
}
.siArea:focus{
	outline:none;
}
.siAreaC{
	margin-top:5%;
	width:80%;
	height:150px;
	font-size: 14px;
	font-family: 'Noto Sans', sans-serif;
	border:3px solid #cab7a1;
	resize:none
}
.siAreaC:focus{
	outline:none;
}
.sBtn{
	width:50%;
	height:60px;
	background-color:rgb(255, 255, 255);
	margin:5% 0 0 20%;
	border:3px solid #cab7a1;
	font-family: 'Noto Sans', sans-serif;
	line-height: 55px;
	font-size: 18px;
	font-weight:bold;
	color:rgba(66, 66, 66, 0.774);
}
.sBtn:hover{
	background-color:#cab7a1;
	color:rgb(255, 255, 255);
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="center">
			<h2>Pet Supplies 추가</h2>
			<br><br>
			<form action="/insertSup.do" method="post" enctype="multipart/form-data">
				<table class="sTable">
					<tr>
						<th><p>종류</p></th>
						<td>
							<div>
								<select name="psCate" class="siArea">
				                	<option value="사료" selected>사료</option>
				                	<option value="간식">간식</option>
				                	<option value="장난감">장난감</option>
				            	</select>											
							</div>
						</td>
					</tr>
					<tr>
						<th><p>이름</p></th>
						<td>
							<div>
								<input type="text" name="psName" placeholder="이름을 입력해주세요." class="siArea">
							</div>
						</td>
					</tr>
					<tr>
						<th><p>가격</p></th>
						<td>
							<div>
								<input type="text" name="psPrice" class="siArea" placeholder="가격을 입력해주세요. ex)10000">							
							</div>
						</td>
					</tr>
					<tr>
						<th><p>내용</p></th>
						<td>

								<textarea name="psContent" class="siAreaC" placeholder="내용을 입력해주세요."></textarea>							

						</td>
					</tr>
					<tr>
						<th><p>메인이미지</p></th>
						<td>
							<div>
								<input type="file" name="mainImgFile" class="siArea">
							</div>
						</td>
					</tr>
					<tr>
						<th><p>추가이미지</p></th>
						<td>
							<div>
								<input type="file" name="subImgFile" class="siArea">					
							</div>
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" value="추가하기" class="sBtn">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
	<!-- 
	<tr>
				<th>이미지</th>
				<td>
					<div id="img-viewer">
						<img id="mainImg-view" width="500px">
					</div>
				</td>
			</tr>
			
			
	<script>
		function loadMainImg(f){
			console.log(f.files);//input file에서 선택한 파일을 배열로 가지고옴
			if(f.files.length != 0){
				//첨부파일이 있는 경우
				var reader = new FileReader();//첨부파일을 읽어올 객체
				reader.readAsDataURL(f.files[0]);//해당 파일의 경로를 읽어옴
				//경로를 다 읽어오면 실행할 함수 지정
				reader.onload=function(e){//e : 자동 반환
					$("#mainImg-view").attr("src",e.target.result);
				}
			}else{
				//첨부파일이 없는 경우
				$("#mainImg-view").attr("src","");
			}
		}
		function loadSubImg(f){
			console.log(f.files);//input file에서 선택한 파일을 배열로 가지고옴
			if(f.files.length != 0){
				//첨부파일이 있는 경우
				var reader = new FileReader();//첨부파일을 읽어올 객체
				reader.readAsDataURL(f.files[0]);//해당 파일의 경로를 읽어옴
				//경로를 다 읽어오면 실행할 함수 지정
				reader.onload=function(e){//e : 자동 반환
					$("#subImg-view").attr("src",e.target.result);
				}
			}else{
				//첨부파일이 없는 경우
				$("#subImg-view").attr("src","");
			}
		}
	</script>		
	 -->
	
</body>
</html>