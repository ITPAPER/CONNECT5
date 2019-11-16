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

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/story1.jpg" alt="연-결"
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
	            <a href="${pageContext.request.contextPath}/_info/story_SE.do" class="list-group-item btncolor">연-결 성혼스토리</a>
	            <a href="${pageContext.request.contextPath}/_info/notice_SE.do" class="list-group-item">공지사항</a>
	            <a href="${pageContext.request.contextPath}/_info/partner_HG.do" class="list-group-item">연-결 파트너</a>
	            <a href="${pageContext.request.contextPath}/_info/map_GD.do" class="list-group-item">오시는 길</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">연-결 성혼스토리</h3>
	<div class="col-md-10 text1">
		<h5>실제 성혼스토리</h5>
	</div>

	<form method="get" action="${pageContext.request.contextPath}/_info/story_SE.do">
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
						<td style="cursor: pointer;"><a href="${pageContext.request.contextPath}/_info/storyRead1_SE.do">오랜 기다림 끝에, 드디어 찾았어요!</a></td>
						<td id="date">2019.10.23</td>
					</tr>
					<tr>
						<td id="num">9</td>
						<td style="cursor: pointer;"><a href="${pageContext.request.contextPath}/_info/storyRead2_SE.do">조금 더 이해하면, 이렇게 사랑을 꽃 피울 수 있어요.</a></td>
						<td id="date">2019.10.17</td>
					</tr>
					<tr>
						<td id="num">8</td>
						<td>사랑한다면 상대방의 말에 먼저 귀 기울여주세요.</td>
						<td id="date">2019.10.13</td>
					</tr>
					<tr>
						<td id="num">7</td>
						<td>인연은 눈으로 찾는게 아니라 마음으로 알아가는 거랍니다.</td>
						<td id="date">2019.10.12</td>
					</tr>
					<tr>
						<td id="num">6</td>
						<td>송구커플, 11월 결혼 하다!</td>
						<td id="date">2019.10.09</td>
					</tr>
					<tr>
						<td id="num">5</td>
						<td>이제는 "너와 나"가 아닌 "우리"라는 글자를 써내려갑니다.</td>
						<td id="date">2019.09.24</td>
					</tr>
					<tr>
						<td id="num">4</td>
						<td>인정받는 결혼을 하고 싶었습니다.</td>
						<td id="date">2019.08.06</td>
					</tr>
					<tr>
						<td id="num">3</td>
						<td>사랑 앞에 자존심은 없는 것 같아요.</td>
						<td id="date">2019.06.22</td>
					</tr>
					<tr>
						<td id="num">2</td>
						<td>연-결에서 운명을 만나다!</td>
						<td id="date">2019.05.14</td>
					</tr>
					<tr>
						<td id="num">1</td>
						<td>늦은 연애...늦은 결혼!</td>
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

	</div>
<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>