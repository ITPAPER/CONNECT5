<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Info/noticeRead.css">

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />
	
	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/img3_SE.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 소개</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_info/IntroWebsite_YB.do" class="list-group-item">사이트 소개</a>
	            <a href="${pageContext.request.contextPath}/_info/Greetings_YB.do" class="list-group-item">연-결 인사말</a>
	            <a href="${pageContext.request.contextPath}/_info/manager_HG.do" class="list-group-item">커플 매니저</a>
	            <a href="${pageContext.request.contextPath}/_info/story_SE.do" class="list-group-item">연-결 성혼스토리</a>
	            <a href="${pageContext.request.contextPath}/_info/notice_SE.do" class="list-group-item btncolor">공지사항</a>
	            <a href="${pageContext.request.contextPath}/_info/partner_HG.do" class="list-group-item">연-결 파트너</a>
	            <a href="${pageContext.request.contextPath}/_info/map_GD.do" class="list-group-item">오시는 길</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">공지사항</h3>
	<div class="col-md-10 text1">
		<h5>연-결의 소식을 알려드립니다.</h5>
	</div>

	<div class="col-md-10 content">
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th id="num">제목</th>
						<th>${output.title}</th>
						<th id="date">${output.creationDate}</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="context" colspan="3">${output.content}</td>
					</tr>
					<tr>
						<th>다음글</th>
						<th colspan="2" align="center"><a href="${pageContext.request.contextPath}/_info/noticeRead1_SE.do">'창립 10주년 기념' 적극적인 서비스로 높은 성혼율 달성</a></th>
					</tr>
					<tr>
						<th>이전글</th>
						<th colspan="2" align="center"><a
							href="#">설립 10주년 기념 '고객감사 빅 이벤트' 진행</a></th>
					</tr>
				</tbody>
			</table>
		</div>

		<button class="btn btn-default pull-right"
			onclick="location.href = '${pageContext.request.contextPath}/_info/notice_SE.do'">목록</button>

	</div>

<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>