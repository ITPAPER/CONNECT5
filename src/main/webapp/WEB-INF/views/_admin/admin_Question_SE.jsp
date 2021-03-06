<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Grid</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/footerMain.PNG" />
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/img/footerMain.PNG" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.min.css" />

<!-- 나눔고딕 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/nanumfont.css" />

<!-- 반응형 웹을 지원하지 않을 경우 -->
<!-- <link rel="stylesheet" href="assets/css/non-responsive.css" /> -->

<!-- IE8 이하 버전 지원 -->
<!--[if lt IE 9]>
      <script type="text/javascript" src="assets/js/html5shiv.js"></script>
      <script type="text/javascript" src="assets/js/respond.min.js"></script>
   <![endif]-->

<!-- IE10 반응형 웹 버그 보완 -->
<!--[if gt IE 9]>
      <link rel="stylesheet" type="text/css" href="assets/css/ie10.css" />
      <script type="text/javascript" src="assets/js/ie10.js"></script>
   <![endif]-->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Admin/question.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중
					<button type="submit" class="btn btn-xs" onclick="location.href = '${pageContext.request.contextPath}'">Logout</button>
				</p>
			</div>
		</div>


		<div class="col-md-2 sidebar1">
			<a href="${pageContext.request.contextPath}/_admin/admin_main_SE.do" class="list-group-item">대시보드</a> <a href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do"
				class="list-group-item">회원관리</a> <a href="${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do"
				class="list-group-item">게시판 관리</a> <a href="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do"
				class="list-group-item">신청현황</a> <a href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do" class="list-group-item active">문의현황</a>
			<a href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do" class="list-group-item">결제관리</a>

		</div>

		<div class="col-md-10 middle">
			<h2>문의현황</h2>
		</div>

		<div class="col-md-4 searching_box">
			<form method="get"
				action="${pageContext.request.contextPath}/_admin/admin_Question_SE.do">
			<ul id="key">
					<li>
						<select name="selected">
							<option value="">---선택---</option>
							<option value="bTitle" <c:if test="${selected eq 'bTitle'}">selected</c:if>>제목</option>
							<option value="bName" <c:if test="${selected eq 'bName'}">selected</c:if>>작성자</option>
						</select> 
							<input type="search" name="keyword" value="${keyword}" />
						<button type="submit" id="btn">검색</button>
					</li>
				</ul>
				</form>
		</div>

		<div class="col-md-10 text_box">
			<table class="table table-striped table-bordered table-hover">
				<thead>
				<tr class="text-center">
					<td id="num">번호</td>
					<td id="title">제목</td>
					<td id="name">이름</td>
					<td id="date">날짜</td>
					<td id="answer">답변여부</td>
				</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${output == null || fn:length(output) == 0}">
							<tr>
								<td colspan="9" align="center">공지사항이 없습니다.</td>
							</tr>
						</c:when>

						<%-- 조회결과가 있는  경우 --%>
						<c:otherwise>
							<%-- 조회 결과에 따른 반복 처리 --%>
							
							<c:set var="num" value="${pageData.totalCount - ((pageData.nowPage - 1) * pageData.listCount)}"/>
							<c:forEach var="item" items="${output}" varStatus="status">
								<c:set var="Title" value="${item.getTitle()}" />
								<c:set var="UserName" value="${item.getUserName()}" />
								<c:set var="CreationDate" value="${item.getCreationDate()}" />
								<c:set var="BoardId" value="${item.getBoardId() }" />
								<c:set var="Reply_Ok" value="${item.getReply_Ok() }" />
								
								<%-- 검색어가 있다면? --%>
								<c:if test="${keyword != ''}">
									<%-- 검색어에 <mark> 태그를 적용하여 형광팬 효과 준비 --%>
									<c:set var="mark" value="<mark>${keyword}</mark>" />
									<%-- 출력을 위해 준비한 학과이름과 위치에서 검색어와 일치하는 단어를 형광팬 효과로 변경 --%>
									<c:set var="title" value="${fn:replace(title, keyword, mark)}" />
									<c:set var="UserName" value="${fn:replace(UserName, keyword, mark)}" />
								</c:if>
								
								<%-- 상세페이지로 이동하기 위한 URL --%>
								<c:url value="/_admin/admin_QuestionRead_SE.do" var="viewUrl">
									<c:param name="BoardId" value="${item.getBoardId()}" />
								</c:url>
								<c:set var="num" value="${num-1}"></c:set>
								<tr>
									<td>${num}</td>
									<td><a href="${viewUrl}">${item.getTitle()}</a></td>
									<td>${item.getUserName()}</td>
									<td>${item.getCreationDate()}</td>
								<c:if test="${Reply_Ok == 0 }">
									<td><span class="label label-default">완료</span></td>
								</c:if>
								<c:if test="${Reply_Ok == 1 }">
									<td><span class="label label-primary">완료</span></td>
								</c:if>
								</tr>		
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<c:choose>
				<%-- 이전 그룹으로 이동 가능하다면? --%>
				<c:when test="${pageData.prevPage > 0}">
					<%-- 이동할 URL 생성 --%>
					<c:url value="/_admin/admin_QuestionRead_SE.do" var="prevPageUrl">
						<c:param name="page" value="${pageData.prevPage}" />
						<c:param name="keyword" value="${keyword}" />
					</c:url>
					<a href="${prevPageUrl}">&laquo;</a>
				</c:when>
				<c:otherwise>
					<ul class="pagination pagination-sm">
						<li><a href="${prevPageUrl}">&laquo;</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${pageData.startPage}"
				end="${pageData.endPage}" varStatus="status">
				<%-- 이동할 URL 생성 --%>
				<c:url value="/_admin/admin_QuestionRead_SE.do" var="pageUrl">
					<c:param name="page" value="${i}" />
					<c:param name="keyword" value="${keyword}" />
				</c:url>

				<%-- 페이지 번호 출력 --%>
				<c:choose>
					<%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
					<c:when test="${pageData.nowPage == i}">
						<ul class="pagination pagination-sm">
							<li class="active"><a href="${pageUrl}">${i}</a></li>
						</ul>
					</c:when>
					<%-- 나머지 페이지의 경우 링크 적용함 --%>
					<c:otherwise>
						<ul class="pagination pagination-sm">
							<li><a href="${pageUrl}">${i}</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<%-- 다음 그룹으로 이동 가능하다면? --%>
				<c:when test="${pageData.nextPage > 0}">
					<%-- 이동할 URL 생성 --%>
					<c:url value="/_admin/admin_QuestionRead_SE.do" var="nextPageUrl">
						<c:param name="page" value="${pageData.nextPage}" />
						<c:param name="keyword" value="${keyword}" />
					</c:url>
					<a href="${nextPageUrl}">&raquo;</a>
				</c:when>
				<c:otherwise>
					<ul class="pagination pagination-sm">
						<li><a href="${pageUrl}">&raquo;</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>