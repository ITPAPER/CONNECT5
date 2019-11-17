<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Admin/admin_userManager1.css">

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>


<script type="text/javascript">
	
</script>

</head>

<body>


	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중 
					<button type="submit" class="btn btn-xs"
						onclick="location='${pageContext.request.contextPath}/home.do'">Logout</button>
				</p>
			</div>
		</div>


		<div class="col-md-2 sidebar1">
			<a href="${pageContext.request.contextPath}/_admin/admin_main_SE.do"
				class="list-group-item">대시보드</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do"
				class="list-group-item active">회원관리</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do"
				class="list-group-item">게시판 관리</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do"
				class="list-group-item">신청현황</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do"
				class="list-group-item">문의현황</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do"
				class="list-group-item">결제관리</a>

		</div>

		<div class="col-md-10 middle">
			<h2>회원관리</h2>
		</div>

		<div class="col-md-4 searching_box">
			<ul id="key">
				<li><select name="keyField">
						<option value="0">---선택---</option>
						<option value="title">아이디</option>
						<option value="id">이름</option>
				</select> <input type="text" name="KeyWord" /> <input type="submit"
					id="s_btn" value="검색" />
			</ul>
		</div>

		<div class="col-md-10 content">
			<div class="table-responsive">

				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr class="text-center">
							<th id="num">번호</th>
							<th id="id">아이디</th>
							<th id="name">이름</th>
							<th id="birthdate">생년월일</th>
							<th id="height">신장</th>
							<th id="academicBackground">학력</th>
							<th id="job">직업</th>
						</tr>
					</thead>
					<tbody>
						<tr class="text-center">
							<td id="num">10</td>
							<td id="id">a1</td>
							<td id="name"><a href="${pageContext.request.contextPath}/_admin/admin_userManager2_HG.do">전지현</a></td>
							<td id="birthdate">1981.05.29</td>
							<td id="height">173</td>
							<td id="academicBackground">대학교 졸업</td>
							<td id="job">모델</td>
						</tr>
						<tr class="text-center">
							<td id="num">9</td>
							<td id="id">a2</td>
							<td id="name">오연서</td>
							<td id="birthdate">1987.06.22</td>
							<td id="height">168</td>
							<td id="academicBackground">대학교 졸업</td>
							<td id="job">회사원</td>
						</tr>
						<tr class="text-center">
							<td id="num">8</td>
							<td id="id">a3</td>
							<td id="name">김설현</td>
							<td id="birthdate">1995.01.03</td>
							<td id="height">167</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">웹개발자</td>
						</tr>
						<tr class="text-center">
							<td id="num">7</td>
							<td id="id">a4</td>
							<td id="name">아이린</td>
							<td id="birthdate">1991.03.29</td>
							<td id="height">160</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">아티스트</td>
						</tr>
						<tr class="text-center">
							<td id="num">6</td>
							<td id="id">a5</td>
							<td id="name">김태리</td>
							<td id="birthdate">1990.04.24</td>
							<td id="height">166</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">공무원</td>
						</tr>
						<tr class="text-center">
							<td id="num">5</td>
							<td id="id">a6</td>
							<td id="name">배수지</td>
							<td id="birthdate">1994.10.10</td>
							<td id="height">168</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">건축가</td>
						</tr>
						<tr class="text-center">
							<td id="num">4</td>
							<td id="id">a7</td>
							<td id="name">연우</td>
							<td id="birthdate">1996.08.01</td>
							<td id="height">165</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">교사</td>
						</tr>
						<tr class="text-center">
							<td id="num">3</td>
							<td id="id">a8</td>
							<td id="name">박경리</td>
							<td id="birthdate">1990.07.05</td>
							<td id="height">170</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">은행원</td>
						</tr>
						<tr class="text-center">
							<td id="num">2</td>
							<td id="id">a9</td>
							<td id="name">아리아나 그란데</td>
							<td id="birthdate">1993.06.26</td>
							<td id="height">153</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">팝아티스트</td>
						</tr>
						<tr class="text-center">
							<td id="num">1</td>
							<td id="id">a10</td>
							<td id="name">박지효</td>
							<td id="birthdate">1997.02.01</td>
							<td id="height">162</td>
							<td id="academicBackground">OOO 졸업</td>
							<td id="job">디자이너</td>
						</tr>

					</tbody>
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
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>