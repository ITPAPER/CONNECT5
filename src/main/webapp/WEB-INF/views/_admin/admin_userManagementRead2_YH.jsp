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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144-precomposed.png" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

<!-- 나눔고딕 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/nanumfont.css" />

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
	href="${pageContext.request.contextPath}/assets/css/YH/Admin/admin_userManagementRead2_YH.css">
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
			<a
				href="${pageContext.request.contextPath}/_admin/_admin/admin_main_SE.do"
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
				class="btn btn-info">공지사항</button>
			<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do'"
				class="btn">연-결 성혼스토리</button>
			<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_QnA_GD.do'"
				class="btn">연-결 Q &amp; A</button>
			<button
				onclick="location='${pageContext.request.contextPath}/_admin/admin_userEx_GD.do'"
				class="btn">연-결 만남 후기</button>
		</div>


		<div class="col-md-10 text_box">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th class="text-center" id="num">제목</th>
							<th class="text-left" id="subject">연-결 '창립 10주년 기념' 적극적인
								서비스로 높은 성혼율 달성</th>
							<th class="date">2019-10-20</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="3" align="center"><img
								src="${pageContext.request.contextPath}/assets/img/admin_Read1.jpg"><br>
								<p id="text_read">설립 10주년을 기념하여 다양한 경품 혜택이 주어지는 ‘고객감사 빅
									이벤트’를 진행한다고 1일 전했다.</p> <br>
								<p id="text_read">상류층 결혼정보업체 연-결은 ‘너와 나의 , 연결 고리’이라는 모토로 최고의
									결혼정보 서비스를 제공하기 위해 끊임없는 노력과 서비스 정신으로 지난 10년을 지나왔다. 이에 연-결은 설립
									10주년을 기념하여 다양하고 푸짐한 경품 혜택의 기회가 주어지는 ‘고객 감사 빅 이벤트’를 계획했다.</p> <br>
								<p id="text_read">만 27세 이상 미혼남녀라면 누구나 참여 가능한 ‘고객감사 BIG 이벤트’는
									오는 10월 31일까지 진행될 예정이다. 당첨자에 한해 ‘에르메스 30-35cm 버킨백(1명)’, ‘샤넬
									장지갑(2명)’, ‘백화점 상품권(5명)’ 등 푸짐한 혜택의 기회가 주어지며 이번 이벤트 기간 방문 상담 시,
									전원 ‘커피 기프티콘’을 증정한다. 당첨자 발표는 이벤트 종료 후 개별 연락될 예정이다.</p> <br>
								<p id="text_read">한편, 상류층 결혼정보회사 연-결은 대한민국 최고의 전문직 남성들과 매력적인
									엘리트 여성들이 함께 하는 스페셜 미팅파티 ‘PRIVATE SOCIAL PARTY’를 진행하는 중이다. 또한
									연-결은 서울 강남 본사 외에도 수원결혼정보업체, 광주, 대전, 대구, 부산 등 전국에 걸쳐 6개의 지사와
									협력사를 운영하고 있어 보다 폭넓은 서비스를 제공하고 있다. 미팅파티 참여 및 자세한 문의사항은 연-결 공식
									홈페이지를 통해 확인이 가능하다.</p></td>
						</tr>
						<tr>
							<td>다음글</td>
							<th class="text_select" colspan="2"
								onclick="location='${pageContext.request.contextPath}/_admin/admin_userManagementRead_YH.do'"
								style="cursor: pointer;">연-결, 가을 낭만 담아 '연극 보러 갈까요?' 이벤트 진행</th>
						</tr>
						<tr>
							<td>이전글</td>
							<th class="text_select" colspan="2" onclick="location=''"
								style="cursor: pointer;">연-결 로맨틱 미팅파티 'REMARRY SERCRET
								PARTY'진행</th>
						</tr>

					</tbody>
				</table>
			</div>
			<button class="btn btn-default"
				onclick="location='${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do'">목록</button>
		</div>
	</div>


	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</body>
</html>