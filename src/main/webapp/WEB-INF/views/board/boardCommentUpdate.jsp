<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty sessionScope.m }">
			<div class="inputCommentBox">
				<form action="/boardCommentInsert.do" method="post">
					<ul>
						<li><i class="far fa-user fa-5x"></i></li>
						<li>
							<!-- bcLevel = 1 : 댓글 --> <input type="hidden" name="bcLevel"
							value="1"> <!-- bcWriter 댓글 작성자 > 즉, 로그인한 회원이 작성하는 것 -->
							<input type="hidden" name="bcWriter"
							value="${sessionScope.m.memberId }"> <!-- boardRef : 어느 글의 댓글인지 공지글 번호를 외래키로 참조 -->
							<input type="hidden" name="boardRef" value="${b.boardNo }">
							<!-- 댓글이 어느 글의 댓글인지 --> <!-- 댓글의 댓글이 아닌 경우 0(db에서는 null) ? / 댓글의 댓글을 다는 경우 bc_no 참조? -->
							<input type="hidden" name="bcRef" value="0"> <textarea
								class="form-control" name="bcContent"></textarea>
						</li>
						<li>
							<button type="submit" class="btn btn-primary btn-lg btn-block">등록</button>
						</li>
					</ul>
				</form>
			</div>
		</c:if>
</body>
</html>