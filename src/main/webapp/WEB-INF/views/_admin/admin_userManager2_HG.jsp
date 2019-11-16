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

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Admin/admin_userManager2.css">

<script type="text/javascript">
	function withdrawal() {
		if (confirm("탈퇴시키겠습니까?") == true) {
			alert("탈퇴시켰습니다..");
		} else {
			return;
		}
		location.href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do";
	}

	function yes() {
		var userInput = prompt("비밀번호 변경");
		alert("변경되었습니다.");
	}
</script>

</head>

<body>


	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중
					<button type="submit" class="btn btn-xs">Logout</button>
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
			<br />
			<p class="text20">회원정보</p>
		</div>

		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<div class="box10">

			<table>
				<tbody>
					<tr>
						<td class="box13" rowspan="4">프로필사진</td>
						<td class="box14" rowspan="4"><img src="../img/people.PNG"
							style="width: 140px;"></td>

						<td class="box15">성별</td>
						<td class="box16">남자</td>
					</tr>
					<tr>
						<td class="box13">이름</td>
						<td class="box14">남희권</td>
					</tr>
					<tr>
						<td class="box13">생년월일</td>
						<td class="box14">1995.04.27</td>
					</tr>
					<tr>
						<td class="box13">가입일</td>
						<td class="box14">2019.10.27</td>
					</tr>

					<tr>
						<td class="box13">아이디</td>
						<td class="box14">abc123</td>

						<td class="box15">등급</td>
						<td class="box16">Gold</td>
					</tr>

					<tr>
						<td class="box13">데이트 횟수</td>
						<td class="box14">2회</td>

						<td class="box15">잔여 횟수</td>
						<td class="box16">5회</td>
					</tr>

					<tr>
						<td class="box13">E-mail</td>
						<td class="box14">abc@naver.com</td>

						<td class="box15">휴대폰번호</td>
						<td class="box16">010-1234-5678</td>
					</tr>

					<tr>
						<td class="box13">주소</td>
						<td class="box14" colspan="3">서울특별시 강남구신사동 591-2</td>

					</tr>

					<tr>
						<td class="box13">상세직업</td>
						<td class="box14">국회의원</td>

						<td class="box15">결혼여부</td>
						<td class="box16">초혼</td>
					</tr>
					<tr>
						<td class="box13">학력</td>
						<td class="box14">대학교 졸업</td>

						<td class="box15">지역</td>
						<td class="box16">서울</td>
					</tr>
				</tbody>
			</table>


		</div>

		<div class="buttom">
			<br>
			<button class="btn btn-default" onclick="yes()"
				style="height: 30px; width: 120px;">비밀번호 수정</button>
			&nbsp;&nbsp;&nbsp;
			<button class="btn btn-default" onclick="withdrawal()"
				style="height: 30px; width: 80px;">탈퇴</button>
			&nbsp;&nbsp;&nbsp;
			<button class="btn btn-default"
				onclick="location.href ='${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do'"
				style="height: 30px; width: 80px;">목록</button>
		</div>
	</div>

	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>