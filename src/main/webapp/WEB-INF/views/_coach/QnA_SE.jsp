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

<style>
.table tr, th {
	text-align: center;
}

.table-responsive #num {
	width: 65px;
}

.table-responsive #date {
	width: 110px;
}

.search {
	float: right;
	padding-bottom: 10px;
}

.pagination {
	margin: auto;
	padding-left: 337px;
}

/* 한줄 긋기*/
hr {
	text-align: center;
}

#s_btn {
	width:55px;
}


.btn {
	float: right;
}
</style>
<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />
	
	<!-- 상단 이미지 -->
	<div class="boximg">
		<img src="../img/QnA.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 코치</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="meetingTip_GD.jsp" class="list-group-item">미팅성공전략TIP</a> <a href="loveColumn_GD.jsp"
					class="list-group-item">LOVE 컬럼</a> <a href="DatingCourse_YB.jsp"
					class="list-group-item">데이트 코스</a> <a href="review_SE.jsp"
					class="list-group-item">연-결 만남 후기</a> <a href="QnA_SE.jsp"
					class="list-group-item btncolor">연-결 Q &amp; A</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">연-결 Q &amp; A</h3>
	<div class="col-md-10 text1">
		<h5>연-결 회원님들의 공유 게시판입니다.</h5>
	</div>

	<form method="get" action="${pageContext.request.contextPath}/QnA/QnA_SE.do">
	<div class="search">
		<select name="keyField" style="margin-top:7px; height:22px;">
			<option value="0">---선택---</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
		</select> 
		<input type="text" name="KeyWord" /> 
		<input type="button" id="s_btn" value="검색" />
	</div>
	</form>

	<div class="col-md-10 content">

		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th id="num">번호</th>
						<th>제목</th>
						<th id="date">등록일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="num">10</td>
						<td style="cursor: pointer;"><a href="${pageContext.request.contextPath}/_coach/QnARead1_SE.do">배경 좋은 그, 집안의 반대, 결혼 생각이 있긴 한거야?</a></td>
						<td id="date">2019.10.23</td>
					</tr>
					<tr>
						<td id="num">9</td>
						<td onclick="location.href = '${pageContext.request.contextPath}/QnA/QnARead2_SE.do'"
							style="cursor: pointer;">헤어진 지 1년, 도저히 못 잊겠는데?</td>
						<td id="date">2019.10.18</td>
					</tr>
					<tr>
						<td id="num">8</td>
						<td>신중한 그녀, 나 혼자 앞서간 건가?</td>
						<td id="date">2019.10.13</td>
					</tr>
					<tr>
						<td id="num">7</td>
						<td>너무 좋고 행복한데 결혼은 못하겠다니?</td>
						<td id="date">2019.10.12</td>
					</tr>
					<tr>
						<td id="num">6</td>
						<td>감정을 절제하는 여친, 전 애인의 기억 때문일까?</td>
						<td id="date">2019.10.09</td>
					</tr>
					<tr>
						<td id="num">5</td>
						<td>사랑은 하지만 너무 다른 성격과 가치관, 극복 가능해?</td>
						<td id="date">2019.09.24</td>
					</tr>
					<tr>
						<td id="num">4</td>
						<td>하고 싶은 공부를 포기하고 결혼해야 해?</td>
						<td id="date">2019.08.06</td>
					</tr>
					<tr>
						<td id="num">3</td>
						<td>너 나랑 헤어지고 싶냐?</td>
						<td id="date">2019.06.22</td>
					</tr>
					<tr>
						<td id="num">2</td>
						<td>연애의 시작인지 단순히 친한 사이일 뿐인지?</td>
						<td id="date">2019.05.14</td>
					</tr>
					<tr>
						<td id="num">1</td>
						<td>화를 잘 내는 나, 잠수를 잘 타는 그녀, 해결책은 없을까?</td>
						<td id="date">2019.05.04</td>
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


		<button class="btn btn-default" onclick="location.href = '${pageContext.request.contextPath}/QnA/QnAWrite_SE.do'">글쓰기</button>

	</div>

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>