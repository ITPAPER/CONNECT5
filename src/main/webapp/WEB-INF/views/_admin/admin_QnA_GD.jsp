<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
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

<!-- 시각적 확인을 위한 CSS 적용 -->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Admin/qna.css">

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>


<script type="text/javascript">
	function deldet_post() {
		if (confirm("해당 게시글을 삭제하시겠습니까?") == true) {
			alert("삭제되었습니다.");
		} else {
			return;
		}
		location.href = "${pageContext.request.contextPath}/_admin/admin_QnA_GD.do";
	}
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
				class="list-group-item">회원관리</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do"
				class="list-group-item active">게시판 관리</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do"
				class="list-group-item">신청현황</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do"
				class="list-group-item">문의현황</a> <a
				href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do"
				class="list-group-item">결제관리</a>

		</div>

		<div class="col-md-10 middle">
			<h2>게시판 관리</h2>
		</div>
		<div class="col-md-10 middle_box">
				<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do'"
				class="btn">공지사항</button>
			<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do'"
				class="btn">연-결 성혼스토리</button>
			<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_QnA_GD.do'"
				class="btn btn-info">연-결 Q &amp; A</button>
			<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_userEx_GD.do'"
				class="btn">연-결 만남 후기</button>
		</div>

		<div class="col-md-4 searching_box">
			<ul id="key">
				<li><select name="keyField">
						<option value="0">---선택---</option>
						<option value="title">제목</option>
						<option value="id">이름</option>
				</select> <input type="text" name="KeyWord" /> <input type="submit"
					id="s_btn" value="검색" />
			</ul>

		</div>

		<div class="col-md-10 text_box">
			<table class="table table-striped table-bordered table-hover">
				<tr class="text-center">
					<td id="num">번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td id="views">조회수</td>
					<td id="date">날짜</td>
					<td id="delete">삭제</td>
				</tr>
				<tr class="text-center">
					<td id="num">10</td>
					<td onclick="location='${pageContext.request.contextPath}/_admin/admin_QnARead_GD.do'"
						style="cursor: pointer;">연-결, 가을 낭만 담아 '연극 보러 갈까요?' 이벤트 진행</td>
					<td>담당자</td>
					<td id="views">1,543</td>
					<td id="date">2019-10-22</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">9</td>
					<td onclick="location='${pageContext.request.contextPath}/_admin/admin_QnARead_GD.do'"
						style="cursor: pointer;">연-결 '창립 10주년 기념' 적극적인 서비스로 높은 성혼율 달성</td>
					<td>담당자</td>
					<td id="views">21,553</td>
					<td id="date">2019-10-20</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">8</td>
					<td>연-결 로맨틱 미팅파티 'REMARRY SERCRET PARTY'진행</td>
					<td>담당자</td>
					<td id="views">453</td>
					<td id="date">2019-09-25</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">7</td>
					<td>연-결, 품격 있는 훈남훈녀들의 만남 'COCKTAIL PARTY' 미팅파티 진행</td>
					<td>담당자</td>
					<td id="views">853</td>
					<td id="date">2019-07-14</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">6</td>
					<td>연-결, 적극적인 서비스를 통해 고객만족도 상승</td>
					<td>담당자</td>
					<td id="views">353</td>
					<td id="date">2019-06-05</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">5</td>
					<td>연-결 세부에서 사랑을 외치다 '!'Romantic Holiday'</td>
					<td>담당자</td>
					<td id="views">1,112</td>
					<td id="date">2019-05-08</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">4</td>
					<td>연-결 회원분들의 사랑이 피어나는 '로즈데이' 이벤트 진행</td>
					<td>담당자</td>
					<td id="views">853</td>
					<td id="date">2019-04-26</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">3</td>
					<td>연-결 회원분들의 외로운 솔로들을 위한 '스위트 화이트데이 이벤트' 진행</td>
					<td>담당자</td>
					<td id="views">1,443</td>
					<td id="date">2019-02-20</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">2</td>
					<td>연-결 연애정보 대표 박경동, "신뢰를 바탕으로 적극적인 서비스 제공에 힘써"</td>
					<td>담당자</td>
					<td id="views">21,453</td>
					<td id="date">2019-01-02</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">1</td>
					<td>연-결 6년 연속 '2019 고객만족 우수 브랜드 대상'수상</td>
					<td>담당자</td>
					<td id="views">21,453</td>
					<td id="date">2019-10-01</td>
					<td><button type="button" class="label label-warning"
							onclick="deldet_post()">삭제</button></td>
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

			<button class="btn btn-default"
				onclick="location='${pageContext.request.contextPath}/_admin/admin_QnAWrite_GD.do'">글쓰기</button>
		</div>
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>