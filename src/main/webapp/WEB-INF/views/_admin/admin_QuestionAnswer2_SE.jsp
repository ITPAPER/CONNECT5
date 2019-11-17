<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Grid</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico" />
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-144-precomposed.png" />

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
	href="${pageContext.request.contextPath}/assets/css/SE/Admin/questionRead.css">
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
			<br />
		</div>
		<div class="col-md-10 text_box">
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="text-center" id="title">제목</th>
							<th class="text-center" id="textarea">연-결 담당자 입니다.</th>
							<th class="text-center" id="title">작성자</th>
							<th class="text-center" id="userid">관리자</th>
							<th class="text-center" id="title">답변일</th>
							<th class="text-center" id="date">19.10.02</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="6" align="center"></td>
						</tr>

					</tbody>
				</table>
			</div>

			<div class="pull-right">
				<button class="btn btn-default"
					onclick="location.href = '${pageContext.request.contextPath}/_admin/admin_Question_SE.do'">목록</button>
			</div>

		</div>
	</div>

	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>