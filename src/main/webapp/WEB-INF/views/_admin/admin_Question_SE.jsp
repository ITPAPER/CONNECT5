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
	href="${pageContext.request.contextPath}/assets/css/SE/Admin/question.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>

	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">admin 님 접속중
				<button type="submit" class="btn btn-xs">Logout</button>
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
			<ul id="key">
				<li><select name="keyField">
						<option value="0">---선택---</option>
						<option value="title">제목</option>
						<option value="id">이름</option>
				</select> <input type="text" name="KeyWord" />
					<input type="submit" id="s_btn" value="검색" />
			</ul>
		</div>

		<div class="col-md-10 text_box">
			<table class="table table-striped table-bordered table-hover">
				<tr class="text-center">
					<td id="num">번호</td>
					<td id="title">제목</td>
					<td id="name">이름</td>
					<td id="date">날짜</td>
					<td id="answer">답변여부</td>
				</tr>
				<tr class="text-center">
					<td id="num">10</td>
					<td id="title" onclick="location.href = '${pageContext.request.contextPath}/_admin/admin_QuestionRead_SE.do'" style="cursor: pointer;">문의 드립니다.</td>
					<td id="name">최유한</td>
					<td id="date">2019.10.01</td>
					<td id="answer"><span class="label label-primary">미답변</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">9</td>
					<td id="title">결제가 안됩니다.</td>
					<td id="name">박경동</td>
					<td id="date">2019.10.01</td>
					<td id="answer"><span class="label label-primary">미답변</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">8</td>
					<td id="title">결제문의</td>
					<td id="name">배세은</td>
					<td id="date">2019.10.01</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">7</td>
					<td id="title">결제문의</td>
					<td id="name">남희권</td>
					<td id="date">2019.10.01</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">6</td>
					<td id="title">결제문의</td>
					<td id="name">정유빈</td>
					<td id="date">2019.10.01</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">5</td>
					<td id="title">결제문의</td>
					<td id="name">배세은</td>
					<td id="date">2019.09.28</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">4</td>
					<td id="title">결제문의</td>
					<td id="name">배세은</td>
					<td id="date">2019.09.25</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">3</td>
					<td id="title">결제문의</td>
					<td id="name">배세은</td>
					<td id="date">2019.09.16</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">2</td>
					<td id="title">결제문의</td>
					<td id="name">배세은</td>
					<td id="date">2019.09.15</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				<tr class="text-center">
					<td id="num">1</td>
					<td id="title">결제문의</td>
					<td id="name">배세은</td>
					<td id="date">2019.09.02</td>
					<td id="answer"><span class="label label-default">완료</span></td>
				</tr>
				
			</table>

			<ul class="pagination pagination-sm">
				<li class="disabled"><a href="#">&laquo;</a></li>
				<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>

		</div>
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>