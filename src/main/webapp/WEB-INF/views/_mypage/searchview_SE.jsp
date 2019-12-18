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
<link href='${pageContext.request.contextPath}/assets/js/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/assets/js/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='${pageContext.request.contextPath}/assets/js/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/fullcalendar.min.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/ko.js'></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Mypage/search.css">

<script>
	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
		      defaultDate: '2019-12-12',
		      editable: false,
		      eventClick: function(){
		    	$('#listModal').modal('show');
		     },
		      events: ${jsonList}	     
	    });
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}
	
	#calendar {
		max-width: 800px;
		margin: 0 auto; 
	}
	.fc-scroller {
  	overflow: visible !important;
	}
	
</style>
<meta charset="utf-8" />
<title>연-결</title>

</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/img1_SE.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">My 연-결</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_mypage/myInfo_GD.do" class="list-group-item ">My현황</a> <a
					href="#" class="list-group-item btncolor">인연 찾기</a> <a
					href="${pageContext.request.contextPath}/_mypage/1_1questionEmpty_YH.do" class="list-group-item">1:1 문의</a> <a
					href="${pageContext.request.contextPath}/_mypage/Ex-MatchingRecord_YB.do" class="list-group-item">매칭 기록
					보기 </a><a href="${pageContext.request.contextPath}/_mypage/personal_information1_HG.do" class="list-group-item">개인정보수정</a>
				<a href="${pageContext.request.contextPath}/_mypage/withdrawal1_HG.do" class="list-group-item">회원탈퇴</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">인연 찾기</h3>
	<div class="col-md-10 text1">
		<h5>나의 인연을 찾아봅시다.</h5>
	</div>

	<div class="col-md-10 content">
		

	<div id='calendar'>
	</div>
		
	</div>
	
	<div class="modal fade" id="listModal">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">현황</h4>
					</div>
					<div class="modal-body">
						<table class="table-bordered" id="modaltable1">
							<thead>
								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>성별</th>
									<th>나이</th>
									<th>직업</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<%-- 조회결과가 없는 경우 --%>
									<c:when test="${output1 == null || fn:length(output1) == 0}">
										<td colspan="5" align="center">조회결과가 없습니다.</td>
									</c:when>
									<%-- 조회결과가 있는  경우 --%>
									<c:otherwise>
										<%-- 조회 결과에 따른 반복 처리 --%>
										<c:forEach var="item" items="${output1}" varStatus="status">
											<c:set var="userName" value="${item.userName}" />
											<c:set var="gender" value="${item.gender}" />
											<c:set var="birthDate" value="${item.birthDate}" />
											<c:set var="job" value="${item.job}" />
											
											<%-- 상세페이지로 이동하기 위한 URL --%>
											<c:url value="/_mypage/searchRequestConfirm_SE.do"
												var="viewUrl">
												<c:param name="start" value="${item.start}" />
											</c:url>
	
											<tr>
												<td>${status.count}</td>
												<td><a href="${viewUrl}">${userName}</a></td>
												<td>${gender}</td>
												<td>${birthDate}</td>
												<td>${job}</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
						</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

	<jsp:include page="../assets/inc/footer.jsp" />

</body>
</html>