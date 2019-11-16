<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Test/idealtype.css">

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>

	<jsp:include page="../assets/inc/top.jsp" />




	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img
			src="${pageContext.request.contextPath}/assets/img/idealtypeimg.PNG"
			alt="연-결" class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 테스트</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_test/propensity1_HG.do"
					class="list-group-item">연애성향 테스트</a> <a
					href="${pageContext.request.contextPath}/_test/idealtype_HG.do"
					class="list-group-item btncolor">이상형 찾기</a> <a
					href="${pageContext.request.contextPath}/_test/lovescore1_HG.do"
					class="list-group-item">나의 연애 매력</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">이상형 찾기</h3>
	<div class="col-md-10 text1">
		<h5>연-결 회원님들 중에 이상형을 찾아보세요!!!</h5>
	</div>

	<div class="col-md-9 content">
		<div class="media">
			<div class="testimg">
				<img
					src="${pageContext.request.contextPath}/assets/img/testimg1.PNG">
			</div>
			<br /> <br />
			<table class="tabl">
				<tr id="test11">
					<td id="title">성별</td>
					<td>&nbsp; &nbsp;<input type="radio" name="gender" value="0"
						checked>남자&nbsp;&nbsp; <input type="radio" name="gender"
						value="1" checked>여자
					</td>
				</tr>

				<tr id="test10">
					<td id="title">나이</td>
					<td>&nbsp; &nbsp;<input type="radio" name="age" value="0"
						checked>무관 &nbsp; &nbsp;&nbsp;&nbsp; <input type="radio"
						name="age" value="1" checked>20대 초중반 &nbsp;
						&nbsp;&nbsp;&nbsp; <input type="radio" name="age" value="2"
						checked>20대 중후반&nbsp; &nbsp;&nbsp;&nbsp; <input
						type="radio" name="age" value="3" checked>30대 초중반 <br />
						<br />&nbsp;&nbsp; <input type="radio" name="age" value="4"
						checked>30대 중후반 &nbsp; &nbsp;&nbsp;&nbsp; <input
						type="radio" name="age" value="5" checked>40대 초중반
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="age" value="6"
						checked>40대 중후반
					</td>
				</tr>

				<tr id="test10">
					<td id="title">결혼 여부</td>
					<td>&nbsp; &nbsp;<input type="radio" name="marry" value="0"
						checked>무관&nbsp;&nbsp; <input type="radio" name="marry"
						value="1" checked>초혼&nbsp;&nbsp; <input type="radio"
						name="marry" value="2" checked>재혼
					</td>
				</tr>

				<tr id="test10">
					<td id="title">거주지</td>
					<td>&nbsp; &nbsp;<input type="radio" name="residence"
						value="0" checked>무관 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="residence" value="1" checked>서울
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="2" checked>부산 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="residence" value="3" checked>대구
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="4" checked>광주 &nbsp;&nbsp; <input type="radio"
						name="residence" value="5" checked>인천
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="6" checked>대전 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="residence" value="7" checked>울산
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="8" checked>경기 <br /> <br />&nbsp;&nbsp; <input
						type="radio" name="residence" value="9" checked>강원
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="10" checked>충북 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="residence" value="11" checked>충남
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="12" checked>경북 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="residence" value="13" checked>경남
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="14" checked>전북 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="residence" value="15" checked>전남
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="residence"
						value="16" checked>제주
					</td>
				</tr>

				<tr id="test10">
					<td id="title">키</td>
					<td>&nbsp; &nbsp;<input type="radio" name="height" value="0"
						checked>무관&nbsp;&nbsp; <input type="radio" name="height"
						value="140" checked>150cm이하&nbsp;&nbsp; <input
						type="radio" name="height" value="150" checked>151~160cm&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="height" value="160" checked>161~170cm&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="height" value="170" checked>171~180cm&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="height" value="180" checked>181이상cm
					</td>
				</tr>

				<tr id="test10">
					<td id="title">학력</td>
					<td>&nbsp; &nbsp;<input type="radio" name="academic" value="0"
						checked>무관&nbsp;&nbsp; <input type="radio" name="academic"
						value="1" checked>고등학교 졸업&nbsp;&nbsp; <input type="radio"
						name="academic" value="2" checked>전문대 졸업&nbsp;&nbsp; <input
						type="radio" name="academic" value="3" checked>대학교
						졸업&nbsp;&nbsp; <input type="radio" name="academic" value="4"
						checked>대학원 졸업&nbsp;&nbsp; <input type="radio"
						name="academic" value="5" checked>박사
					</td>
				</tr>

				<tr id="test10">
					<td id="title">스타일</td>
					<td>&nbsp; &nbsp;<input type="radio" name="style" value="0"
						checked>무관&nbsp;&nbsp; <input type="radio" name="style"
						value="cute" checked>귀여움&nbsp;&nbsp; <input type="radio"
						name="style" value="man" checked>남성스러움&nbsp;&nbsp; <input
						type="radio" name="style" value="woman" checked>여성스러움&nbsp;&nbsp;
						<input type="radio" name="style" value="thin" checked>마름&nbsp;&nbsp;
						<input type="radio" name="style" value="chubby" checked>통통
					</td>
				</tr>

				<tr id="test10">
					<td id="title">성격</td>
					<td>&nbsp; &nbsp;<input type="radio" name="personality"
						value="0" checked>무관&nbsp;&nbsp; <input type="radio"
						name="personality" value="extrovert" checked>외향적&nbsp;&nbsp;
						<input type="radio" name="personality" value="introvert" checked>내향적&nbsp;&nbsp;
						<input type="radio" name="personality" value="emotional" checked>감성적&nbsp;&nbsp;
						<input type="radio" name="personality" value="intuitive" checked>직관적&nbsp;&nbsp;
						<input type="radio" name="personality" value="tender" checked>자상함
					</td>
				</tr>

				<tr id="test10">
					<td id="title">혈액형</td>
					<td>&nbsp; &nbsp;<input type="radio" name="blood" value="0"
						checked>무관&nbsp;&nbsp; <input type="radio" name="blood"
						value="A" checked>A형&nbsp;&nbsp; <input type="radio"
						name="blood" value="B" checked>B형&nbsp;&nbsp; <input
						type="radio" name="blood" value="O" checked>O형&nbsp;&nbsp;
						<input type="radio" name="blood" value="AB" checked>AB형
					</td>
				</tr>

				<tr id="test10">
					<td id="title">연봉</td>
					<td>&nbsp; &nbsp;<input type="radio" name="income" value="0"
						checked>무관&nbsp;&nbsp; <input type="radio" name="income"
						value="1" checked>3000이하&nbsp;&nbsp; <input type="radio"
						name="income" value="2" checked>5000이하&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="income" value="3" checked>7000이하&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="income" value="4" checked>1억이상
					</td>
				</tr>
			</table>
			<br />
			<div class="b1">

				<button class="btn btn-default" style="height: 30px; width: 80px;"
					data-toggle="modal" data-target="#myModal">검색하기</button>
			</div>
		</div>

	</div>

	<!-- ------------------ㅡmodal------------------------------------------------------------------------- -->

	<div class="modal fade" id="myModal">
		<div class="modal-dialog" style="max-width: 100%; width: 1200px;">
			<div class="modal-content">
				<div class="modal-header">

					<table class="table table-striped table-bordered table-hover">
						<tr class="text-center">
							<th id="num" style="text-align: center;">번호</th>
							<th id="name" style="text-align: center;">이름</th>
							<th id="gender" style="text-align: center;">성별</th>
							<th id="age" style="text-align: center;">나이</th>
							<th id="marry" style="text-align: center;">결혼여부</th>
							<th id="residence" style="text-align: center;">거주지</th>
							<th id="height" style="text-align: center;">키</th>
							<th id="academic" style="text-align: center;">학력</th>
							<th id="style" style="text-align: center;">스타일</th>
							<th id="personality" style="text-align: center;">성격</th>
							<th id="blood" style="text-align: center;">혈액형</th>
							<th id="income" style="text-align: center;">연봉</th>
						</tr>

						<tr class="text-center">
							<td id="num">10</td>
							<td id="name">홍길동</td>
							<td id="gender">남자</td>
							<td id="age">30</td>
							<td id="marry">초혼</td>
							<td id="residence">서울</td>
							<td id="height">175cm</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">남자다움</td>
							<td id="personality">외향적</td>
							<td id="blood">A형</td>
							<td id="annual">5000</td>
						</tr>

						<tr class="text-center">
							<td id="num">9</td>
							<td id="name">배수지</td>
							<td id="gender">여자</td>
							<td id="age">205</td>
							<td id="marry">초혼</td>
							<td id="residence">경기</td>
							<td id="height">165cm</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">여성스러움</td>
							<td id="personality">감성적</td>
							<td id="blood">O형</td>
							<td id="annual">4000</td>
						</tr>

						<tr class="text-center">
							<td id="num">8</td>
							<td id="name">오연서</td>
							<td id="gender">여자</td>
							<td id="age">28</td>
							<td id="marry">초혼</td>
							<td id="residence">서울</td>
							<td id="height">163cm</td>
							<td id="academic">고등학교 졸업</td>
							<td id="style">마름</td>
							<td id="personality">내향적</td>
							<td id="blood">AB형</td>
							<td id="annual">3000</td>
						</tr>

						<tr class="text-center">
							<td id="num">7</td>
							<td id="name">전지현</td>
							<td id="gender">여자</td>
							<td id="age">33</td>
							<td id="marry">초혼</td>
							<td id="residence">대전</td>
							<td id="height">168</td>
							<td id="academic">대학원 졸업</td>
							<td id="style">귀여움</td>
							<td id="personality">직관적</td>
							<td id="blood">B형</td>
							<td id="annual">7000</td>
						</tr>

						<tr class="text-center">
							<td id="num">6</td>
							<td id="name">남주혁</td>
							<td id="gender">남자</td>
							<td id="age">27</td>
							<td id="marry">초혼</td>
							<td id="residence">서울</td>
							<td id="height">182</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">남성스러움</td>
							<td id="personality">자상함</td>
							<td id="blood">A형</td>
							<td id="annual">6000</td>
						</tr>

						<tr class="text-center">
							<td id="num">5</td>
							<td id="name">박경동</td>
							<td id="gender">남자</td>
							<td id="age">30</td>
							<td id="marry">초혼</td>
							<td id="residence">부산</td>
							<td id="height">177</td>
							<td id="academic">박사</td>
							<td id="style">남성스러움</td>
							<td id="personality">외향적</td>
							<td id="blood">A형</td>
							<td id="annual">1억</td>
						</tr>

						<tr class="text-center">
							<td id="num">4</td>
							<td id="name">정유빈</td>
							<td id="gender">여자</td>
							<td id="age">30</td>
							<td id="marry">초혼</td>
							<td id="residence">서울</td>
							<td id="height">165</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">여성스러움</td>
							<td id="personality">외향적</td>
							<td id="blood">A형</td>
							<td id="annual">5000</td>
						</tr>

						<tr class="text-center">
							<td id="num">3</td>
							<td id="name">배세은</td>
							<td id="gender">여자</td>
							<td id="age">24</td>
							<td id="marry">초혼</td>
							<td id="residence">제주</td>
							<td id="height">166</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">여성스러움</td>
							<td id="personality">외향적</td>
							<td id="blood">A형</td>
							<td id="annual">4000</td>
						</tr>

						<tr class="text-center">
							<td id="num">2</td>
							<td id="name">최유한</td>
							<td id="gender">남자</td>
							<td id="age">27</td>
							<td id="marry">초혼</td>
							<td id="residence">서울</td>
							<td id="height">178</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">남성스러움</td>
							<td id="personality">외향적</td>
							<td id="blood">A형</td>
							<td id="annual">6000</td>
						</tr>

						<tr class="text-center">
							<td id="num">1</td>
							<td id="name">남희권</td>
							<td id="gender">남자</td>
							<td id="age">25</td>
							<td id="marry">초혼</td>
							<td id="residence">인천</td>
							<td id="height">178</td>
							<td id="academic">대학교 졸업</td>
							<td id="style">남성스러움</td>
							<td id="personality">외향적</td>
							<td id="blood">A형</td>
							<td id="annual">4000</td>
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
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>





	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>