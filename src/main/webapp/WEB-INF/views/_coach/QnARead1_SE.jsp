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
	href="${pageContext.request.contextPath}/assets/css/SE/Coach/QnARead1.css">

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

	<div class="col-md-10 content">
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th id="num">제목</th>
						<th>${output.title}</th>
						<th id="date">2019.10.23</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="context" colspan="3" align="center"></td>
					</tr>
					<tr>
						<th>이전글</th>
						<th colspan="2" align="center"><a
							href="${pageContext.request.contextPath}/_coach/QnARead2_SE.do">헤어진 지 1년, 도저히 못 잊겠는데?</a></th>
					</tr>
				</tbody>
			</table>
		</div>

		<button class="btn btn-default pull-right"
			onclick="location.href = '${pageContext.request.contextPath}/_coach/QnA_SE.do'">목록</button>

	</div>

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>