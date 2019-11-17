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

<title>관리자페이지_게시판관리(연-결 성혼 스토리)admin_MngBoard_WeddingStory</title>

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


<!-- 시각적 확인을 위한 CSS 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YB/Admin/MngBoard_WeddingStory_YB.css">



<script type="text/javascript">
	function delete_post() {
		if (confirm("해당 게시글을 삭제하시겠습니까?") == true) {
			alert("게시글이 삭제되었습니다.");
			
		} else {
			alert("삭제가 취소되었습니다.");
			return;
		}
		location.href = "${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStory_YB.do";
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

		<div class="col-md-4 searching_box">
			<ul id="key">
				<li><select name="keyField">
						<option value="0">---선택---</option>
						<option value="title">제목</option>
						<option value="id">작성자</option>
					</select> 
					<input type="text" name="KeyWord" /> 
					<input type="submit" id="s_btn" value="검색" />
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
					<td onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStoryRead1_YB.do'"
						style="cursor: pointer;">오랜 기다림 끝에, 드디어 찾았어요!</td>
					<td>담당자</td>
					<td id="views">743</td>
					<td id="date">2019-10-23</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">9</td>
					<td onclick="location='../${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStoryRead2_YB.do'"
						style="cursor: pointer;">조금 더 이해하면, 이렇게 사랑을 꽃 피울 수 있어요.</td>
					<td>담당자</td>
					<td id="views">1,053</td>
					<td id="date">2019-10-17</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">8</td>
					<td onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStoryRead3_YB.do'"
						style="cursor: pointer;">사랑한다면 상대방의 말에 먼저 귀 기울여주세요.</td>
					<td>담당자</td>
					<td id="views">1,353</td>
					<td id="date">2019-10-13</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">7</td>
					<td>연인은 눈으로 찾는게 아니라 마음으로 알아가는 거랍니다.</td>
					<td>담당자</td>
					<td id="views">1,512</td>
					<td id="date">2019-10-12</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">6</td>
					<td>송구커플, 11월 결혼하다!</td>
					<td>담당자</td>
					<td id="views">1,782</td>
					<td id="date">2019-10-09</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">5</td>
					<td>이제는 "너와 나"가 아닌 "우리"라는 글자를 써내려갑니다.</td>
					<td>담당자</td>
					<td id="views">1,192</td>
					<td id="date">2019-09-24</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">4</td>
					<td>인정받는 결혼을 하고 싶었습니다.</td>
					<td>담당자</td>
					<td id="views">1,853</td>
					<td id="date">2019-08-06</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">3</td>
					<td>사랑 앞에 자존심은 없는것 같아요.</td>
					<td>담당자</td>
					<td id="views">2,443</td>
					<td id="date">2019-06-22</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">2</td>
					<td>연-결에서 운명을 만나다!</td>
					<td>담당자</td>
					<td id="views">7,453</td>
					<td id="date">2019-05-14</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">1</td>
					<td>늦은 연애...늦은 결혼!</td>
					<td>담당자</td>
					<td id="views">10,841</td>
					<td id="date">2019-05-04</td>
					<td><button type="button" class="label label-warning"
							onclick="delete_post()">삭제</button></td>
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
				onclick="location='${pageContext.request.contextPath}/_admin/admin_MngBoard_WeddingStoryWrite_YB.do'">글쓰기</button>
		</div>
	</div>


	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</body>
</html>