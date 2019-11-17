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

<title>관리자페이지_게시판관리(연-결 성혼 스토리)admin_MngBoard_WeddingStoryRead3</title>

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
	href="${pageContext.request.contextPath}/assets/css/YB/Admin/MngBoard_WeddingStoryRead_YB.css">
	
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중
					<button type="submit" class="btn btn-xs" align="right">Logout</button>
				</p>
			</div>
		</div>


		<div class="col-md-2 sidebar1">
			<a href="${pageContext.request.contextPath}/_admin/admin_main_SE.do" class="list-group-item">대시보드</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do" class="list-group-item">회원관리</a> 
			<a href="${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do" class="list-group-item active">게시판 관리</a> 
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
							<th class="text-left" id="subject">사랑한다면 상대방의 말에 먼저 귀 기울여주세요.</th>
							<th class="date">2019-10-13</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="3" align="center">
							<br /><br />
							<img src="${pageContext.request.contextPath}/assets/img/성혼스토리8-0.png" alt="연-결" class="img-rounded img-responsive" width="700" height=auto >
							<br /><br /> 
							
							<h4>상대방의 말을 듣지 않고 내 말만 먼저 하게 되면 그것은 대화가 아닙니다.<br />
							대화를 하지 않고, 사랑을 할 수 있을까요?<br />
							내가 하고 싶은 말보다 상대방 말에 귀 기울여주세요.<br />
							</h4>
							<br />
							
							
								<h3><b>서로의 첫인상은 어땠나요?</b></h3>
								<div id="text_read">
								<h4><i>♥He says</i></h4>
								<br />
								처음 만나자마자 확 느낌이 와 닿는 건 아니었어요.<br />
								인상이 좀 차갑다는 느낌이 들었거든요..<br />
								외적으로 보이는 느낌을 중요시하는 편이어서 예쁘긴 했지만 다가가기 좀 힘든 느낌이랄까?<br />
								어떻게 대화를 풀어가야 할지 좀 고민이 되었던 것 같아요.<br />
								</div>
								

								<div id="text_read">
								<h4><i>♥She says</i></h4>
								<br />
								음.. 저는 되게 마음에 들었던 표정을 지었던 건대요?(웃음)<br />
								첫인상인데 여자가 먼저 표시를 내면 가볍게 보일 수가 있다는 생각에..<br />
								도도하게 보이려고 애를 썻던 것 같아요.<br />
								속마음으로는 너무 인상도 좋고 목소리가 매력적이어서 점점 빠져들고 있었어요.<br />
								
								<img src="${pageContext.request.contextPath}/assets/img/성혼스토리8-1.png" alt="연-결" class="img-rounded img-responsive" width="400" height=auto>
								<br /><br /><br />
								</div>
															
								
								<h3><b>그렇다면, 어느 순간에 서로에게 빠지게 되었나요?</b></h3>
								<div id="text_read">
								<h4><i>♥He say</i></h4>
								<br />
								생각했던 것과는 달리 아내는 굉장히 따뜻한 사람이었어요.<br />
								처음에 대화를 나눌 때는 단답형으로 대화가 오가다 보니 제가 마음에 들지 않는구나 생각이 들었어요.<br />
								그런데 대화를 좀 더 자세히 나누다 보니 제 이야기를 먼저 귀 기울여 준다는 느낌이 생기더라고요.<br />
								대화를 나누면 나눌수록 다른 여자에게서는 느낄 수 없는 편안함이 느껴졌어요.<br />
								</div>
								
								
								<div id="text_read">
								<h4><i>♥She say</i></h4>
								<br />
								많은 여자분들이 대화하고 수다 떠는 걸 좋아하지만 살마마다 성향이 다 다른것 같아요.<br />
								제 장점은 남의 말을 잘 들어주는 편이거든요.<br />
								근데 남편은 그게 좀 어색했나봐요.<br />
								대화를 이어가려고 애를 쓰는 모습이 너무 귀엽게 느껴졌어요.<br />
								제가 제 이야기를 하나씩 꺼낼 때마다 애를 쓰던 남편의 얼굴이 조금씩 환해지더라고요.<br />
								그런 모습이 좀 사랑스러웠던 것 같아요.<br /><br /><br />
								
								<img src="${pageContext.request.contextPath}/assets/img/성혼스토리8-2.jpeg" alt="연-결" class="img-rounded img-responsive" width="400" height=auto >
								</div>								
								
								<div class="box">
			                   	<br />
			                     	<img src="${pageContext.request.contextPath}/assets/img/성혼스토리8-3.jpg" alt="연-결 성혼스토리" class="img-rounded img-responsive" width="450" height=auto />
		                     	</div>
								<br /><br />
								<br /><br />
								<br />
								
								
								</td>
						</tr>
						<tr>
							<td>다음글</td>
							<th class="text_select" colspan="2"
								onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStoryRead2_YB.do'"
								style="cursor: pointer;">조금 더 이해하면, 이렇게 사랑을 꽃 피울 수 있어요.</th>
						</tr>
						<tr>
							<td>이전글</td>
							<th class="text_select" colspan="2">인연은 눈으로 찾는게 아니라 마음으로 알아가는 거랍니다.</th>
						</tr>

					</tbody>
				</table>
			</div>
			<button class="btn btn-default"
				onclick="location='admin_MngBoard_WeddingStory_YB.do'">목록</button><br /><br /><br /><br /><br />
		</div>
	</div>


	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</body>
</html>