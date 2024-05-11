<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			<h2>Pet Supplies 수정</h2>
			<br><br>
			<form action="/updateSup.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="psNo" value="${petSupplies.psNo }" readonly>
				<table class="sTable">
					<tr>
						<th><p>종류</p></th>
						<td>
							<div>
								<select name="psCate" class="siArea">
									<c:if test="${petSupplies.psCate eq '사료'}">
										<option value="사료">사료</option>
										<option value="간식">간식</option>
				                		<option value="장난감">장난감</option>
									</c:if>
									<c:if test="${petSupplies.psCate eq '간식'}">
										<option value="사료">사료</option>
										<option value="간식" selected>간식</option>
				                		<option value="장난감">장난감</option>
									</c:if>
									<c:if test="${petSupplies.psCate eq '장난감'}">
										<option value="사료">사료</option>
										<option value="간식">간식</option>
				                		<option value="장난감" selected>장난감</option>
									</c:if>
				            	</select>
							</div>
							
						</td>
					</tr>
					<tr>
						<th><p>이름</p></th>
						<td>
							<div>
								<input type="text" name="psName" value="${petSupplies.psName }" class="siArea" placeholder="이름을 입력해주세요.">
							</div>
						</td>
					</tr>
					<tr>
						<th><p>가격</p></th>
						<td>
							<div>
								<input type="text" name="psPrice" value="${petSupplies.psPrice }" class="siArea" placeholder="가격을 입력해주세요.">
							</div>
							
						</td>
					</tr>
					<tr>
						<th><p>내용</p></th>
						<td><textarea name="psContent" class="siAreaC" placeholder="내용을 입력해주세요.">${petSupplies.psContent }</textarea></td>
					</tr>
					<tr>
						<th><p>메인이미지</p></th>
						<td><div><input type="file" name="mainImgFile" value="${petSupplies.mainImg }" class="siArea"></div></td>
					</tr>
					<tr>
						<th><p>추가이미지</p></th>
						<td><div><input type="file" name="subImgFile" value="${petSupplies.subImg }" class="siArea"></div></td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" value="수정하기" class="sBtn">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>