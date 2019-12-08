<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Coach/QnARead2.css">


<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/review1.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 코치</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_coach/meetingTip_GD.do" class="list-group-item">미팅성공전략TIP</a> <a href="${pageContext.request.contextPath}/_coach/loveColumn_GD.do"
					class="list-group-item">LOVE 컬럼</a> <a href="${pageContext.request.contextPath}/_coach/DatingCourse_YB.do"
					class="list-group-item">데이트 코스</a> <a href="${pageContext.request.contextPath}/_coach/review_SE.do"
					class="list-group-item btncolor">연-결 만남 후기</a> <a href="${pageContext.request.contextPath}/_coach/QnA_SE.do"
					class="list-group-item">연-결 Q &amp; A</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">연-결 만남 후기</h3>
	<div class="col-md-10 text1">
		<h5>연-결 회원님들의 만남 후기 이야기를 들어보세요.</h5>
	</div>

	<div class="col-md-10 content">
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th id="num">제목</th>
						<th>${output.title}</th>
						<th id="date">${output.creationDate}</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="context" colspan="3">${output.content}</td>
					</tr>
					<tr>
						<th>다음글</th>
						<th colspan="2" align="center"><a
							href="${pageContext.request.contextPath}/_coach/reviewRead_SE.do">배경 좋은 그, 집안의 반대, 결혼 생각이 있긴 한거야?</a></th>
					</tr>
					<tr>
						<th>이전글</th>
						<th colspan="2" align="center"><a
							href="#">신중한 그녀, 나 혼자 앞서간 건가?</a></th>
					</tr>
				</tbody>
			</table>
			<br  />
			
			<form method="post"
				action="${pageContext.request.contextPath}/_coach/repReviewWrite_ok.do">
				<div class="form-group" id="inputreply">
				<input type="hidden" name="BoardId" value=${output.getBoardId() }>
					<input type="hidden" name="Re_Title" value="댓글달기" /> 댓글달기 &nbsp; <input type="text" id="Re_Content" name="Re_Content" class="form-control" placeholder="댓글을 입력하세요." />
					<button type="submit" class="btn btn-default pull-right"
						id="replybtn">등록</button>
				</div>
			</form>
			
			<br />
			
			<c:choose>
				<%-- 조회결과가 없는 경우 --%>
				<c:when test="${output1 == null || fn:length(output1) == 0}">

				</c:when>
				<%-- 조회결과가 있는  경우 --%>
				<c:otherwise>
					<%-- 조회 결과에 따른 반복 처리 --%>
					<c:forEach var="item" items="${output1}" varStatus="status">
						<c:set var="replyId" value="${item.replyId}" />
						<c:set var="re_content" value="${item.re_Content}" />
						<c:set var="username" value="${item.userName}" />
						<c:set var="re_creationDate" value="${item.re_CreationDate}" />

						<div class="media-body">
							<!-- 제목영역의 float 처리를 위한 마감제 박스 -->
							<div class="clearfix">
								<!-- 제목에 float: left 적용 - pull-left -->
								<h4 class="media-heading pull-left">${username}
									&nbsp; <small>${re_creationDate}</small>
								</h4>
								<!-- 제목에 float: right 적용 - pull-right -->
								<div class="pull-right">
									<i class="glyphicon glyphicon-edit" id="editBtn" title="수정"></i>
									<a
										href="${pageContext.request.contextPath}/_coach/repReviewDelete_SE.do?ReplyId=${item.replyId}"
										title="삭제"><i class="glyphicon glyphicon-remove"></i></a>
								</div>
							</div>
							<p>${re_content}</p>
							<div id="edit"></div>
						</div>

					</c:forEach>
				</c:otherwise>
			</c:choose>
			
		</div>

		<button class="btn btn-default pull-right"
			onclick="location.href = '${pageContext.request.contextPath}/_coach/review_SE.do'">목록</button>

	</div>


	<jsp:include page="../assets/inc/footer.jsp" />
	<script>
		$("#editBtn").click(function() {
			var repEdit;
			repEdit = "<form method='post' action='${pageContext.request.contextPath}/_coach/repReviewEditOk.do'>"
			repEdit += "<div class='form-group' id='inputreply'><input type='hidden' name='BoardId' value=${output.getBoardId()}><input type='hidden' name='ReplyId' value=${replyId}>"
			repEdit += "<input type='hidden' name='Re_Title' value='댓글달기' /> 댓글달기 &nbsp; <input type='text' id='Re_Content1' name='Re_Content' class='form-control' placeholder='댓글을 입력하세요.' />"
			repEdit += "<button type='reset' class='btn btn-default pull-right' id='cancelbtn'>취소</button>"
			repEdit += "<button type='submit' class='btn btn-default pull-right' id='replybtn'>등록</button></div></form>"
			$("#edit").html(repEdit);
			
			$("#cancelbtn").click(function() {
				$("#edit").hide();
			});
			
			$("#edit").show();
		});
	</script>
</body>
</html>