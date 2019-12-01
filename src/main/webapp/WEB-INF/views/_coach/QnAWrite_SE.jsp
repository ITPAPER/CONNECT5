<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Coach/QnAWrite.css">
	
<script>
	function add() {
		if (confirm("게시물을 등록하시겠습니까?") == true) {
			alert("등록이 완료되었습니다.");
		} else {
			return;
		}
		location.href = "${pageContext.request.contextPath}/_coach/QnARead2_SE.do";
	}

	function cancel() {
		if (confirm("정말 취소하시겠습니까?") == true) {
			alert("취소되었습니다.");
		} else {
			return;
		}
		location.href = "${pageContext.request.contextPath}/_coach/QnA_SE.do";
	}
</script>

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/QnA.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 코치</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_coach/meetingTip_GD.do" class="list-group-item">미팅성공전략TIP</a> <a href="${pageContext.request.contextPath}/_coach/loveColumn_GD.do"
					class="list-group-item">LOVE 컬럼</a> <a href="${pageContext.request.contextPath}/_coach/DatingCourse_YB.do"
					class="list-group-item">데이트 코스</a> <a href="${pageContext.request.contextPath}/_coach/review_SE.do"
					class="list-group-item">연-결 만남 후기</a> <a href="${pageContext.request.contextPath}/_coach/QnA_SE.do"
					class="list-group-item btncolor">연-결 Q &amp; A</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">연-결 Q &amp; A</h3>
	<div class="col-md-10 text1">
		<h5>연-결 회원님들의 공유 게시판입니다.</h5>
	</div>
	
	<form method="post" action="${pageContext.request.contextPath}/_coach/QnAWrite_ok_SE.do">
	<div class="col-md-10 content">
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th id="num">제목</th>
						<th><input type="text"
							placeholder="제목을 입력하세요." id="textarea" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="context" colspan="3" align="center"><textarea
								placeholder="내용을 입력하세요." class="form-control" id="contentarea" /></textarea></td>
					</tr>

				</tbody>
			</table>
		</div>

		<div class="pull-right">
			<button class="btn btn-default" onclick="add()">글쓰기</button>
			<button class="btn btn-default" onclick="cancel()">취소</button>
		</div>

	</div>
	</form>

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>