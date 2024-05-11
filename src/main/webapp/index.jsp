<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*, ::after, ::before {
    box-sizing: content-box !important;
}
	dl, ol, ul{
		margin-top:16px !important;
	}
	.header-logo>img{
		width: 150px;
		height: 150px !important;
	}
	.lang {
	margin-top: 10px !important;
	width: 91.25px !important;
}

#moyattom{

	height: 812.444px !important;
}

</style>
</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>	
	<%@ include file="/WEB-INF/views/common/main.jsp" %>		
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
</body>
</html>