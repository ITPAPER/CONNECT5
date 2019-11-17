<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YH/Mypage/1_1question_replyWait_YH.css">
<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/question1.png" alt="연-결" class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">My 연-결</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_mypage/myInfo_GD.do"
					class="list-group-item">My현황</a> <a
					href="${pageContext.request.contextPath}/_mypage/search_SE.do"
					class="list-group-item">인연 찾기</a> <a
					href="${pageContext.request.contextPath}/_mypage/1_1questionEmpty_YH.do"
					class="list-group-item btncolor">1:1 문의</a> <a
					href="${pageContext.request.contextPath}/_mypage/Ex-MatchingRecord_YB.do"
					class="list-group-item">매칭 기록 보기 </a><a
					href="${pageContext.request.contextPath}/_mypage/personal_information1_HG.do"
					class="list-group-item">개인정보수정</a> <a
					href="${pageContext.request.contextPath}/_mypage/withdrawal1_HG.do"
					class="list-group-item">회원탈퇴</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">1:1 문의</h3>
	<div class="col-md-10 text1">
		<h5>1:1 문의 상담</h5>
	</div>

	<div class="col-md-10 content">

		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th class="text-center" id="num">번호</th>
						<th class="text-center">제목</th>
						<th class="text-center" id="name">이름</th>
						<th class="text-center" id="date">등록일</th>
						<th class="text-center" id="reply_ok">답변여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center" id="num">1</td>
						<td class="text-center"
							onclick="location='${pageContext.request.contextPath}/_mypage/1_1question_replyWaiting_YH.do'"
							style="cursor: pointer;">결제가 안돼요.</td>
						<td class="text-center" id="name">박경동</td>
						<td class="text-center" id="date">2019.10.21</td>
						<td class="text-center" id="reply_ok"><span
							class="badge badge_wait">완료</span></td>
					</tr>
				</tbody>
			</table>
		</div>



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
			onclick="location='${pageContext.request.contextPath}/_mypage/1_1questionWrite_YH.do'">문의하기</button>
	</div>


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>