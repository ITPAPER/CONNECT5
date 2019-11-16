<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Info/notice.css">

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/img3_SE.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 소개</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_info/IntroWebsite_YB.do" class="list-group-item">사이트 소개</a>
	            <a href="${pageContext.request.contextPath}/_info/Greetings_YB.do" class="list-group-item">연-결 인사말</a>
	            <a href="${pageContext.request.contextPath}/_info/manager_HG.do" class="list-group-item">커플 매니저</a>
	            <a href="${pageContext.request.contextPath}/_info/story_SE.do" class="list-group-item">연-결 성혼스토리</a>
	            <a href="${pageContext.request.contextPath}/_info/notice_SE.do" class="list-group-item btncolor">공지사항</a>
	            <a href="${pageContext.request.contextPath}/_info/partner_HG.do" class="list-group-item">연-결 파트너</a>
	            <a href="${pageContext.request.contextPath}/_info/map_GD.do" class="list-group-item">오시는 길</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">공지사항</h3>
	<div class="col-md-10 text1">
		<h5>연-결의 소식을 알려드립니다.</h5>
	</div>

	<form method="get" action="${pageContext.request.contextPath}/_info/notice_SE.do">
	<div class="search">
		<select name="keyField" style="margin-top:7px; height:22px;">
			<option value="0">---선택---</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
		</select> 
		<input type="text" name="KeyWord" /> 
		<input type="button" id="btn" value="검색" />
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
						<td style="cursor: pointer;"><a href="${pageContext.request.contextPath}/_info/noticeRead1_SE.do">'창립 10주년 기념' 적극적인 서비스로 높은 성혼율 달성</a></td>
						<td id="date">2019.10.22</td>
					</tr>
					<tr>
						<td id="num">9</td>
						<td style="cursor: pointer;"><a href="${pageContext.request.contextPath}/_info/noticeRead2_SE.do">신원인증 강화와 적극적인 서비스 제공으로 고객만족 실현</a></td>
						<td id="date">2019.10.15</td>
					</tr>
					<tr>
						<td id="num">8</td>
						<td>설립 10주년 기념 '고객감사 빅 이벤트' 진행</td>
						<td id="date">2019.09.30</td>
					</tr>
					<tr>
						<td id="num">7</td>
						<td>'COCKTAIL PARTY' 미팅파티 진행</td>
						<td id="date">2019.09.17</td>
					</tr>
					<tr>
						<td id="num">6</td>
						<td>'SUNSET CRUISE' 진행</td>
						<td id="date">2019.08.11</td>
					</tr>
					<tr>
						<td id="num">5</td>
						<td>2019 올해의 우수브랜드 대상</td>
						<td id="date">2019.07.30</td>
					</tr>
					<tr>
						<td id="num">4</td>
						<td>적극적인 서비스를 통해 고객만족도 상승</td>
						<td id="date">2019.06.18</td>
					</tr>
					<tr>
						<td id="num">3</td>
						<td>미스코리아 발대식</td>
						<td id="date">2019.05.30</td>
					</tr>
					<tr>
						<td id="num">2</td>
						<td >2019 대한민국 프리미엄 브랜드 대상</td>
						<td id="date">2019.05.16</td>
					</tr>
					<tr>
						<td id="num">1</td>
						<td>2019 고객이 신뢰하는 브랜드 대상</td>
						<td id="date">2019.04.23</td>
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
	</div>

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>