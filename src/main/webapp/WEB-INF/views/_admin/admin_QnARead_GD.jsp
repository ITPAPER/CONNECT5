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
	href="${pageContext.request.contextPath}/assets/css/GD/Admin/qnaread.css">

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
					<button type="submit" class="btn btn-xs">Logout</button>
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
			<button onclick="location='admin_userManagement_YH.jsp'" class="btn">공지사항</button>
			<button onclick="location='admin_MngBoard_WeddingStory_YB.jsp'" class="btn">연-결 성혼스토리</button>
			<button onclick="location='admin_QnA_GD.jsp'" class="btn  btn-info">연-결 Q &amp; A</button>
			<button onclick="location='admin_userEx_GD.jsp'" class="btn">연-결 만남 후기</button>
		</div>


		<div class="col-md-10 text_box">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th class="text-center" id="num">제목</th>
							<th class="text-left" id="subject">연-결, 가을 낭만 담아 '연극 보러
								갈까요?' 이벤트 진행</th>
							<th class="date">2019-10-22</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="3" align="center"><img
								src="../img/admin_Read.bmp"><br>
								<p id="text_read">10월 문화의 계절 가을을 맞아 낭만을 가득 담은 이벤트 ‘연극 보러
									갈까요?’를 진행한다고 18일 밝혔다. 싱글 미혼남녀들을 위해 ‘바른 만남, 바른 결혼’이라는 모토로 결혼정보
									서비스를 제공하는 결혼정보업체 바로연이 이번에는 가을의 낭만이 충만한 공연을 마련해 10월 한 달간 방문 상담을
									받으시는 모든 분들께 ‘연극 무료 관람권’을 1인당 2매씩 증정하는 이벤트를 준비했다.</p>

								<p id="text_read">10월 한 달간 진행되는 이벤트로 준비된 공연으로는 ‘연애하기 좋은 날’,
									‘나의 ps 파트너’, ‘럭키’ 3개의 공연이 있으며 이 중 티켓을 랜덤 증정 한다. 공연 일자는 티켓에 적혀있는
									유효기간 내 원하는 일자에 관람이 가능하며 공연 장소는 대학로 아티스탄홀, 대학로 단막극장 두 곳에서 진행 된다.
								</p></td>
						</tr>
						<tr>
							<td>다음글</td>
							<th class="text_select" colspan="2">...</th>
						</tr>
						<tr>
							<td>이전글</td>
							<th class="text_select" colspan="2"
								onclick="location='admin_QnARead_GD.jsp'"
								style="cursor: pointer;">연-결 로맨틱 미팅파티 'REMARRY SERCRET
								PARTY'진행</th>
						</tr>

					</tbody>
				</table>
			</div>
			<button class="btn btn-default"
				onclick="location='admin_QnA_GD.jsp'">목록</button>
		</div>
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>