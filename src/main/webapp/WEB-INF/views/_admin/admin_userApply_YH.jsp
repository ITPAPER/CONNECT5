<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Grid</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/footerMain.PNG" />
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/img/footerMain.PNG" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

<!-- 나눔고딕 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/nanumfont.css" />

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

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/YH/Admin/admin_userApply_YH.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
	function deldet_post() {
		if (confirm("해당 회원의 매칭을 취소하시겠습니까?") == true) {
			alert("취소되었습니다.");
		} else {
			return;
		}
		location.href = "";
	}
	
	var searchName = function() {
		var userName = $("#s_btn").val();
		
		window.location="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do?keyword=" + userName;
	}
</script>

</head>
<body>
	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중
					<button type="submit" class="btn btn-xs" onclick="location='${pageContext.request.contextPath}/home.do'">Logout</button>
				</p>
			</div>
		</div>

		<div class="col-md-2 sidebar1">
			<a href="${pageContext.request.contextPath}/_admin/admin_main_SE.do" class="list-group-item">대시보드</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do" class="list-group-item">회원관리</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do" class="list-group-item">게시판 관리</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do" class="list-group-item active">신청현황</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do" class="list-group-item">문의현황</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do" class="list-group-item">결제관리</a>
		</div>

		<div class="col-md-10 middle">
			<h2>신청현황</h2>
		</div>

		<div class="col-md-4 searching_box">
			<form action="${pageContext.request.contextPath }/_admain/admin_userApply_YH.do"></form>
			<ul id="key">
				<li>
					<input type="search" name="keyword" id="s_btn" value="${keyword}">
					<button type="submit" onclick="searchName()">검색</button>
				</li>
			</ul>
		</div>

		<div class="col-md-10 text_box">
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr class="text-center">
							<td id="num">번호</td>
							<td id="name">이름</td>
							<td id="num">신청날짜</td>
							<td id="date">매칭 신청일</td>
							<td id="username">신청취소</td>
							<td id="delete">신청취소</td>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<%-- 조회결과가 없는 경우 --%>
							<c:when test="${output == null || fn:length(output) == 0}">
								<tr>
									<td colspan="9" align="center">조회결과가 없습니다.</td>
								</tr>
							</c:when>
							<%-- 조회결과가 있는  경우 --%>
							<c:otherwise>
								<%-- 조회 결과에 따른 반복 처리 --%>
								<c:forEach items="${output}" var="item" varStatus="status">
									<tr>
										<td align="center"><c:out value="${item.ReqMatchId}"/></td>
										<td align="center">${item.UserName}</td>
										<td align="center">${item.Select_Date}</td>
										<td align="center">${item.Choose_Date}</td>
										<td align="center"></td>
										<td align="center"><button type="button" class="label label-warning" onclick="deldet_post()">삭제</button></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
</body>
</html>