<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>관리자페이지_게시판관리(연-결 성혼 스토리)admin_Board_WeddingStoryWrite</title>

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
	href="${pageContext.request.contextPath}/assets/css/YB/Admin/MngBoard_WeddingStoryRead&Write.css">

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>


<script type="text/javascript">
	function add() {
		if (confirm("게시글을 등록하시겠습니까?") == true) {
			alert("게시글 등록이 완료되었습니다.")
		}
		location.href = "${pageContext.request.contextPath}/_admin/_admin/admin_MngBoard_WeddingStory_YB.do";
	}
	
	function cancel() {
		if (confirm("게시글을 등록을 취소하시겠습니까?") == true) {
			alert("게시글 등록이 취소되었습니다.")
		}
		location.href= "${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do";
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
			<a href="${pageContext.request.contextPath}/./_admin/admin_main_SE.do" class="list-group-item">대시보드</a> 
			<a href="${pageContext.request.contextPath}/./_admin/admin_userManager1_HG.do" class="list-group-item">회원관리</a> 
			<a href="${pageContext.request.contextPath}/./_admin/admin_MngBoard_WeddingStory_YB.do" class="list-group-item active">게시판 관리</a> 
			<a href="${pageContext.request.contextPath}/./_admin/admin_userApply_YH.do" class="list-group-item">신청현황</a> 
			<a href="${pageContext.request.contextPath}/./_admin/admin_Question_SE.do" class="list-group-item">문의현황</a>
			<a href="${pageContext.request.contextPath}/./_admin/admin_Payment_GD.do" class="list-group-item">결제관리</a>
		</div>

		<div class="col-md-10 middle">
			<h2>게시판 관리</h2>
		</div>
		<div class="col-md-10 middle_box">
			<button onclick="location='${pageContext.request.contextPath}/./_admin/admin_userManagement_YH.do'" class="btn">공지사항</button>
			<button onclick="location='${pageContext.request.contextPath}/./_admin/admin_MngBoard_WeddingStory_YB.do'" class="btn btn-info">연-결 성혼스토리</button>
			<button onclick="location='${pageContext.request.contextPath}/./_admin/admin_QnA_GD.do'" class="btn">연-결 Q &amp; A</button>
			<button onclick="location='${pageContext.request.contextPath}/./_admin/admin_userEx_GD.do'" class="btn">연-결 만남 후기</button>
		</div>


		<div class="col-md-10 text_box">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th class="text-center" id="num">제목</th>
							<th class="text-center"><input type="text"
								placeholder="제목을 입력하세요." id="textarea" /></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="3" align="center"><textarea
									placeholder="내용을 입력하세요." class="form-control" id="contentarea" /></textarea></td>
						</tr>

					</tbody>
				</table>
			</div>

			<div class="pull-right">
				<button class="btn btn-default" onclick="add()">게시글 등록</button>
				<button class="btn btn-default" onclick="cancel()">게시글 등록 취소</button>
			</div>

		</div>
	</div>



	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</body>
</html>