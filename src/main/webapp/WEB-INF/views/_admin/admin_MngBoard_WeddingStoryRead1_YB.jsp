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


<title>관리자페이지_게시판관리(연-결 성혼 스토리)admin_MngBoard_WeddingStoryRead1</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
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

<!-- 시각적 확인을 위한 CSS 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YB/Admin/MngBoard_WeddingStoryRead&Write_YB.css">

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

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
			<a href="${pageContext.request.contextPath}/_admin/admin_main_SE.do" class="list-group-item">대시보드</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do" class="list-group-item">회원관리</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do" class="list-group-item active">게시판 관리</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do" class="list-group-item">신청현황</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do" class="list-group-item">문의현황</a>
			<a href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do" class="list-group-item">결제관리</a>
		</div>

		<div class="col-md-10 middle">
			<h2>게시판 관리</h2>
		</div>
		<div class="col-md-10 middle_box">
			<button onclick="location='${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do'" class="btn">공지사항</button>
			<button onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do'" class="btn btn-info">연-결 성혼스토리</button>
			<button onclick="location='${pageContext.request.contextPath}/_admin/admin_QnA_GD.do'" class="btn">연-결 Q &amp; A</button>
			<button onclick="location='${pageContext.request.contextPath}/_admin/admin_userEx_GD.do'" class="btn">연-결 만남 후기</button>
		</div>


		<div class="col-md-10 text_box">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th class="text-center" id="num">제목</th>
							<th class="text-left" id="subject">오랜 기다림 끝에, 드디어 찾았어요!</th>
							<th class="date">2019-10-23</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="3" align="center">
							<br /><br />
							<img src="${pageContext.request.contextPath}/assets/img/성혼스토리10.png"><br /><br />
							
								<h3><b>서로의 첫인상은 어땠나요?</b></h3>
								<div id="text_read">
								<h4><i>♥He says</i></h4>
								<br />
								사실 이번에도 가능성이 없다고 생각했어요.<br />
								저한테는 너무 과분했을 정도로 눈이 부셨어요.<br />
								왜 드라마에서 나오는 장면처럼 말이에요.<br />
								여러 번의 실패도 있고 나이도 있어서 그런지<br />
								이런 사람을 내가 만날 수 있을까 싶어 포기하려 했었답니다.<br />
								하지만 이런 마음을 알았는지 그녀가 편하고 다정하게 대해주더라고요.(웃음)<br />
								'아, 놓치면 안 되겠다'느껴 필사적으로 어필했죠.<br />
								제가 해본 미팅 중에서 가장 열심히 했다 해도 과언이 아닐 거예요. (웃음)<br />
								다행히 그녀와 통하는 부분이 있어서 대화가 잘 되더라고요.<br />
								</div>

								<div id="text_read">
								<h4><i>♥She says</i></h4>
								<br />
								저도 몇 번에 실패 경험이 있어서 조심스러운 건 마찬가지였죠.<br />
								사실 저는 그와 다르게 맨 처음부터 '이 사람'이다 하진 않았어요.<br />
								조금 마초 같은 인상이 있으셨는데(웃음)<br />
								대화를 하다 보니 저랑 통하는 부분이 많더라고요.<br />
								나이차도 있고 해서 대화가 잘 이어질까 했는데<br />
								해외에서 오랜 생활을 하셨다 하시더라고요.<br />
								저 역시 오랜 해외 생활 경험이 있어서인지<br />
								거기서부터 대화가 너무 잘 되는거에요.<br />
								처음에 보이지 않았던 매너 있는 행동들이 하나씩 보이기<br />
								시작하면서 호감이 생기기 시작했어요.<br /><br /><br />
								
								<img src="${pageContext.request.contextPath}/assets/img/성혼스토리10-1.jpg"><br /><br /><br /><br />
								</div>								
								
								<h3><b>만난 지 3개월 만에 결혼까지 결심한 계기는?</b></h3>
								<div id="text_read">
								<h4><i>♥They say</i></h4>
								<br />
								아무래도 저희 둘 다 나이도 있고,<br />
								여러 번의 미팅을 해봤지만 이렇게 운명임을<br />
								느끼기는 사람을 처음 만나봤어요.<br />
								'남은 미래를 함께 하고 싶은 사람'이라고 생각이 들었어요.<br />
								원래 영화나 드라마 보면 이렇게 뒤늦게 만나기도 하잖아요.<br />
								그 주인공이 저희였을지도 몰라요.<br />
								</div>								
								
								
								<div class="box">
			                   	<br />
			                     	<img src="${pageContext.request.contextPath}/assets/img/성혼스토리10-2.jpg" alt="연-결" class="img-rounded img-responsive" width="450" height=auto />
		                     	</div>
								<br /><br />
								<br /><br />
								<br />
								
								</td>
						</tr>
						<tr>
							<td>다음글</td>
							<th class="text_select" colspan="2">다음 게시글이 없습니다.</th>
						</tr>
						<tr>
							<td>이전글</td>
							<th class="text_select" colspan="2"
								onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStoryRead2_YB.do'"
								style="cursor: pointer;">조금 더 이해하면, 이렇게 사랑을 꽃 피울 수 있어요.</th>
						</tr>

					</tbody>
				</table>
			</div>
			<button class="btn btn-default"
				onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do'">목록</button><br /><br /><br /><br /><br />
		</div>
	</div>


	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</body>
</html>