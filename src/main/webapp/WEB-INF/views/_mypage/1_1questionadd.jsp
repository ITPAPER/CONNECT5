<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YH/Mypage/1_1questionEmpty_YH.css">

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

	<div>
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
			<hr>
			<div class="table-responsive">
				<c:choose>
					<%-- 조회결과가 없는 경우 --%>
					<c:when test="${output2 == null || fn:length(output2) == 0}">
						<tr>
							<td colspan="9" align="center" id="question1">문의 내역이 없습니다.</td>
						</tr>
					</c:when>
					<%-- 조회결과가 있는  경우 --%>
					<c:otherwise>
						<table>
							<tr>
								<th align="center" class="num">번호</th>
								<th align="center">제목</th>
								<th align="center" class="name">이름</th>
								<th align="center" class="date">등록일</th>
								<th align="center" class="reply_ok">답변여부</th>
							</tr>
						</table>


						<%-- 조회 결과에 따른 반복 처리 --%>
						<c:forEach var="item" items="${output2}" varStatus="status">
							<c:out value="${status.count}" />
						</c:forEach>
						<c:forEach var="item" items="${output2}" varStatus="status">
							<tr>
								<th align="center">${item.getTitle()}</th>
								<th align="center">${item.getContent()}</th>
								<th align="center">${item.getUserName()}</th>
								<th align="center">${item.getCreationDate()}</th>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<hr>
			<a
				href="${pageContext.request.contextPath}/_mypage/1_1questionadd.do">
				<button class="btn btn-default">문의하기</button>
			</a>

		</div>
	</div>


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>