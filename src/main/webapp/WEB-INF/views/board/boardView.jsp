<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.3.1.js"></script>

<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<meta charset="UTF-8">
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300&display=swap"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<style>
#center-muya{
height: 128.400px  !important;
}

#muyaSub{
padding-left: 40px;
margin-top:16px;
}

#mookBtn{
box-sizing: content-box  !important; 
}
*, ::after, ::before {
   box-sizing: content-box  !important; 
}

#boardK{
width: 1157.350px  !important; 
height: 48px  !important; 
}




/**/

li{
	color : #282828;
}
.table {
	/* border: 1px solid #9c836a;  */
	margin-top: 150px;
	margin-bottom: 50px;
	width: 900px;
	margin: 0 auto;
	border-radius: 3px;
}

th {
	width: 100px;
	/* border-right: 1px solid #9c836a; */
}

tr td {
	/* border: 1px solid #9c836a; */
	
}

.comment {
	list-style: none;
	display: flex;
	justify-content: center;
	width: 900px;
	margin: 0 auto;
	margin-top: 40px;
	padding: 0;
	margin-bottom: 50px;
}

.comments {
	list-style: none;
	margin-left: 90px;
	margin-top: 20px;
	width: 80%;
	overflow:hidden;
	border-bottom: 1px dashed #9c836a;
}

.text-comment {
	height: 65px;
	width: 720px;
}

.emoticon {
	font-size: 60px;
	width: 20%;
	/* margin-top:40px; */
	/* margin-left:30px;  */
}

.btn-block {
	margin-left: 10px;
}

.emotion1 {
	font-size: 40px;
}

.content {
	float: left;
	padding-left: 10%;
	padding-top:2%;
}

.contain {
	margin-top: 100px;
}

.before-btn {
	background-color: #9c836a;
	border: #9c836a;
	color: #fff;
	font-family: 'Noto Sans KR', sans-serif;
}

.before-btn:hover {
	background-color: rgb(12, 62, 114);
	color: #fff;
	border: rgb(12, 62, 114);
}

.insert {
	background-color: #9c836a;
	border: #9c836a;
	height: 65px;
	font-family: 'Noto Sans KR', sans-serif;
}

.insert:hover {
	background-color: rgb(12, 62, 114);
	color: #fff;
	border: rgb(12, 62, 114);
}

.update {
	background-color: #9c836a;
	border: #9c836a;
	color: #fff;
	font-family: 'Noto Sans KR', sans-serif;
}

.update:hover {
	background-color: rgb(12, 62, 114);
	color: #fff;
	border: rgb(12, 62, 114);
}

.delete {
	background-color: #9c836a;
	border: #9c836a;
	color: #fff;
	font-family: 'Noto Sans KR', sans-serif;
}

.delete:hover {
	background-color: rgb(12, 62, 114);
	color: #fff;
	border: rgb(12, 62, 114);
}
.wrapper {
	overflow: hidden;
}
.footer{
	clear : both;
}
.emo{
float :left;
}
.writer{
	clear : both;
}
.commentsBtn{
	float:right;
	padding-right : 10%;
}
</style>
<body>
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="contain">

			<table class="table">
				<tr>
					<th>제목</th>
					<td colspan="3">${b.boardTitle }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${b.boardWriter }</td>
					<th>작성일</th>
					<td class="date">${b.boardDate }</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="3"><c:forEach items="${b.fileList }" var="f">
							<a href="/boardFileDown.do?fileNo=${f.fileNo }">${f.filename }</a>
						</c:forEach></td>
				</tr>
				<tr class="table">
					<th>내용</th>
					<td colspan="3">${b.boardContentBr }</td>
				</tr>
				<tr class="table">
					<th colspan="4" style="text-align: center;">
						<button class="btn btn-info before-btn" onclick="history.go(-1);">이전화면</button>
						<c:choose>
							<c:when test="${sessionScope.m.memberId eq b.boardWriter}">
								<a class="btn btn-info update"
									href="/boardUpdateFrm.do?boardNo=${b.boardNo }">수정하기</a>
								<a class="btn btn-info delete"
									href="/boardDelete.do?boardNo=${b.boardNo }">삭제하기</a>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>
					</th>
				</tr>
			</table>
		</div>
		<c:if test="${not empty sessionScope.m }">
			<div class="inputCommentBox">
				<form action="/boardCommentInsert.do?boardNo=${b.boardNo }" method="post">
					<ul class="comment">
						<li><i class="xi-emoticon emoticon"></i></li>
						<li>
							<!-- ncLevel = 1 : 댓글 --> <input type="hidden" name="bcLevel"
							value="1"> <!-- ncWriter 댓글 작성자 > 즉, 로그인한 회원이 작성하는 것 -->
							<input type="hidden" name="bcWriter"
							value="${sessionScope.m.memberId }"> <!-- boardRef : 어느 글의 댓글인지 공지글 번호를 외래키로 참조 -->
							<input type="hidden" name="boardRef" value="${b.boardNo }">
							<!-- 댓글이 어느 글의 댓글인지 --> <!-- 댓글의 댓글이 아닌 경우 0(db에서는 null) ? / 댓글의 댓글을 다는 경우 nc_no 참조? -->
							<input type="hidden" name="bcRef" value="0"> <textarea
								class="form-control text-comment" name="bcContent"></textarea>
						</li>
						<li>
							<button type="submit"
								class="btn btn-primary btn-lg btn-block insert">등록</button>
						</li>
					</ul>
				</form>
			</div>
		</c:if>
		<div class="commentBox">
			<c:forEach items="${list }" var="bc">
				<!-- 댓글 레벨 1 > 댓글인 경우 -->
			
					<ul class="comments">
						<li class ="emo">
						<i class="xi-emoticon emotion1 emo" ></i>
						</li>
						<li class="content">${bc.bcContent }</li>
						<li class="writer">${bc.bcWriter }</li>
						

						<li><textarea id="boardK" name="bcContent" class="form-control"
								style="display: none;">${bc.bcContent }</textarea></li>
						<li>
							<p class="commentsBtn">
								<c:if test="${not empty sessionScope.m }">
									<c:if test="${sessionScope.m.memberId.equals(bc.bcWriter) }">
									<a href="javascript:void(0)" onclick="modifyComment(this,'${bc.bcNo }','${b.boardNo }');">수정</a>
									<a href="javascript:void(0)" onclick="deleteComment(this,'${bc.bcNo }','${b.boardNo }');">삭제</a>
								</c:if> 
								</c:if>
								</p>
								
						</li>




					</ul>
				
			</c:forEach>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	</div>

	<script>
		function deleteComment(obj,bcNo,boardNo){
			if(confirm("댓글을 삭제하시겠습니까?")){	//삭제 클릭 시 사용자에게 확인을 true / false를 받는다.
				location.href="/boardCommentDelete.do?bcNo="+bcNo+"&boardNo="+boardNo; //확인 누를 시 location.href로 bcNo,boardNo 값을 전송
			}
		};
		function modifyComment(obj,bcNo,boardNo){
			//textarea를 보여준다.
			$(obj).parent().parent().prev().children().show();  //클릭한 수정(a태그)을/를 기준으로 textarea를 가져오고 show()
			//기존본문 내용 숨긴다.
			$(obj).parent().parent().prev().prev().prev().hide();	//클릭한 수정(a태그)을/를 기준으로 p태그를 가져오고 hide()
			//"수정"을 "수정완료"로  변경
			$(obj).html("수정완료");
			$(obj).attr("onclick","modifyComplete(this,"+bcNo+","+boardNo+")");	//온클릭 함수를 변경 
			//"삭제"를 "수정취소"로 변경
			$(obj).next().html("수정취소");
			$(obj).next().attr("onclick","modifyCancel(this,"+bcNo+","+boardNo+")");	//온클릭 함수를 변경
			//답글달기 버튼 삭제
			$(obj).next().next().hide();
		};
		
		
		function modifyCancel(obj,bcNo,boardNo){
			$(obj).parent().parent().prev().children().hide();	//textarea 숨기기
			$(obj).parent().parent().prev().prev().prev().show();	//기존 본문 내용을 다시 보여주기
			//수정완료 >  수정으로 다시 바꾸기
			$(obj).prev().html("수정");
			$(obj).prev().attr("onclick","modifyComment(this,"+bcNo+","+boardNo+")");	//온클릭 함수를 원래 a태그의 onclick 함수명으로 되돌리기
			//수정취소 > 삭제로 다시 바꾸기
			$(obj).html("삭제");
			$(obj).attr("onclick","deleteComment(this,"+bcNo+","+boardNo+")");	//온클릭 함수를 원래 a태그의 onclick 함수명으로 되돌리기
			//답글달기 버튼 다시 보이기
			$(obj).next().show();
		};
		//수정하기 클릭 시 함수 동작 > update
		function modifyComplete(obj,bcNo,boardNo){
			var form =$("<form action='/boardCommentUpdate.do' method='post'></form>"); //jQuery로 폼태그를 직접 생성함
			form.append($("<input type='text' name='bcNo' value="+bcNo+">"));			//생성된 폼태그에 name="bcNo"인 input 생성 후 append
			form.append($("<input type='text' name='boardNo' value="+boardNo+">"));	//생성된 폼태그에 name="boardNo"인 input 생성 후 append
			form.append($(obj).parent().parent().prev().children());	//폼태그에 "수정완료" 클릭 시 textarea까지  append
			$("body").append(form);		//폼태그를 body태그에 append
			form.submit();		//마지막으로 폼태그를 submit
		}; 
	</script>
</body>
</html>